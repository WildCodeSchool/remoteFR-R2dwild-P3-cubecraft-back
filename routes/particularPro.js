const express = require('express')
const connection = require('../config')

const router = express.Router()

router.get('/', (req, res) => {
  connection.query('SELECT * from products', (err, results) => {
    if (err) {
      res.status(500).send('Error retrieving data')
    } else {
      res.status(200).json(results)
    }
  })
})

router.get('/part', (req, res) => {
  connection.query(
    'SELECT * from products WHERE Individual=1',
    (err, results) => {
      if (err) {
        console.log(err)

        res.status(500).send('Error retrieving data')
      } else {
        res.status(200).json(results)
      }
    }
  )
})

router.get('/part/detail', (req, res) => {
  connection.query(
    'SELECT photo.Name, CategoryName, Description, Price from products left join photo on products.photo_id=photo.id WHERE Individual=1',
    (err, results) => {
      if (err) {
        console.log(err)

        res.status(500).send('Error retrieving data')
      } else {
        res.status(200).json(results)
      }
    }
  )
})

router.get('/pro', (req, res) => {
  connection.query(
    'SELECT * from products WHERE Individual=0',
    (err, results) => {
      if (err) {
        console.log(err)

        res.status(500).send('Error retrieving data')
      } else {
        res.status(200).json(results)
      }
    }
  )
})

router.get('/pro/detail', (req, res) => {
  connection.query(
    'SELECT photo.Name, CategoryName, Description, Price from products left join photo on products.photo_id=photo.id WHERE Individual=0',
    (err, results) => {
      if (err) {
        console.log(err)
        res.status(500).send('Error retrieving data')
      } else {
        res.status(200).json(results)
      }
    }
  )
})

router.get('/:id', (req, res) => {
  connection.query(
    'SELECT * from products WHERE id = ?',
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
          'UPDATE products SET ? WHERE id = ?',
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
    'DELETE FROM products WHERE id = ?',
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

// router.post('/', (req, res) => {
//   const { CategoryName, Description, Price, Individual, photo_id } = req.body
//   connection.query(
//     'INSERT INTO products (categoryName, Description, Price, Individual, photo_id) VALUES(?, ?, ?, ?, ?)',

//     [CategoryName, Description, Price, Individual, photo_id],

//     (err, results) => {
//       if (err) {
//         res.status(500).send('Error saving a product')
//       } else {
//         res.status(200).send('Successfully saved')
//       }
//     }
//   )
// })
router.post('/', (req, res) => {
  connection.query('INSERT INTO products SET ?', req.body, err => {
    if (err) {
      res.status(500).send('Error saving a profile')
    } else {
      res.status(200).send('Successfully saved')
    }
  })
})

module.exports = router
