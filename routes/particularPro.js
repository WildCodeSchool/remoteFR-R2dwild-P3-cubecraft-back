const express = require('express')
const connection = require('../config')

const router = express.Router()

router.get('/', (req, res) => {
  connection.query('SELECT * from particularProducts', (err, results) => {
    if (err) {
      res.status(500).send('Error retrieving data')
    } else {
      res.status(200).json(results)
    }
  })
})

router.get('/:id', (req, res) => {
  connection.query(
    'SELECT * from particularProducts WHERE id = ?',
    [req.params.id],
    (err, results) => {
      if (err) {
        res.status(500).send('Error retrieving data')
      } else {
        if (results.length === 0) res.status(404).send('404 product not found')
        else res.status(200).json(results[0])
      }
    }
  )
})

router.put('/:id', (req, res) => {
  const id = req.params.id
  const newProduct = req.body
  const { photo_id } = req.body
  // check if the photo is in the database
  connection.query('SELECT * from photo', (err, results) => {
    if (err) {
      res.status(500).send('Error retrieving data')
    } else {
      if (!results.some(photo => photo.Id === parseInt(photo_id)))
        res.status(422).send('incorrect photo id')
      else
        connection.query(
          'UPDATE particularProducts SET ? WHERE id = ?',
          [newProduct, id],
          (err, results) => {
            if (err) {
              res.status(500).send('Error updating a concept')
            } else {
              res.status(200).send('Concept updated successfully 🎉')
            }
          }
        )
    }
  })
})

router.delete('/:id', (req, res) => {
  const idProduct = req.params.id

  connection.query(
    'DELETE FROM particularProducts WHERE id = ?',
    [idProduct],
    (err, results) => {
      if (err) {
        res.status(500).send('😱 Error deleting an product')
      } else {
        res.status(200).send('🎉 product deleted!')
      }
    }
  )
})

router.post('/', (req, res) => {
  const { CategoryName, Description, Price, ParticularPro, photo_id } = req.body
  connection.query(
    'INSERT INTO particularProducts(categoryName, Description, Price, Particular_Pro, photo_id) VALUES(?, ?, ?, ?, ?)',

    [CategoryName, Description, Price, ParticularPro, photo_id],

    (err, results) => {
      if (err) {
        res.status(500).send('Error saving a product')
      } else {
        res.status(200).send('Successfully saved')
      }
    }
  )
})

module.exports = router
