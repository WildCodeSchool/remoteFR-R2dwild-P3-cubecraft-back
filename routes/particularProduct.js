const express = require('express')
const connection = require('../config')

const router = express.Router()

router.get('/', (req, res) => {
  connection.query('SELECT * from particularProducts', (err, results) => {
    if (err) {
      console.log(err)

      res.status(500).send('Error retrieving data')
    } else {
      res.status(200).json(results)
    }
  })
})

router.put('/:id', (req, res) => {
  const idProduct = req.params.id
  const newProduct = req.body

  connection.query(
    'UPDATE particularProducts SET ? WHERE id = ?',
    [newProduct, idProduct],
    (err, results) => {
      if (err) {
        console.log(err)

        res.status(500).send('Error updating a product')
      } else {
        res.status(200).send('Product updated successfully 🎉')
      }
    }
  )
})

router.delete('/:id', (req, res) => {
  const idProduct = req.params.id

  connection.query(
    'DELETE FROM particularProducts WHERE id = ?',
    [idProduct],
    (err, results) => {
      if (err) {
        console.log(err)
        res.status(500).send('😱 Error deleting an product')
      } else {
        res.status(200).send('🎉 product deleted!')
      }
    }
  )
})

router.post('/', (req, res) => {
  const { categoryName, Description, Price, Particular, photo_id } = req.body
  connection.query(
    'INSERT INTO particularProducts(categoryName, Description, Price, Particular-Pro, photo_id) VALUES(?, ?, ?, ?)',

    [categoryName, Description, Price, Particular, photo_id],

    (err, results) => {
      if (err) {
        console.log(err)

        res.status(500).send('Error saving a product')
      } else {
        res.status(200).send('Successfully saved')
      }
    }
  )
})

module.exports = router
