const express = require('express')
const connection = require('../config')

const router = express.Router()

router.get('/', (req, res) => {
  connection.query('SELECT * from encart', (err, results) => {
    if (err) {
      res.status(500).send('Error retrieving data')
    } else {
      console.log(results)
      res.status(200).json(results)
    }
  })
})
router.get('/detail', (req, res) => {
  connection.query(
    'SELECT photo.Name,Text,Title from encart left join photo on encart.photo_id=photo.id ',
    (err, results) => {
      if (err) {
        res.status(500).send('Error retrieving data')
      } else {
        res.status(200).json(results)
      }
    }
  )
})

router.get('/:id', (req, res) => {
  const idUserMod = req.params.id
  console.log(req.params.id)
  connection.query(
    'SELECT photo.Name,Text,Title from encart left join photo on encart.photo_id=photo.id where encart.id = ?',
    [idUserMod],
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
  const idUser = req.params.id
  connection.query(
    'SELECT * from encart WHERE id = ?',
    [idUser],
    (err, results) => {
      if (err) {
        res.status(500).send(`Error retrieving data`)
      } else {
        res.status(200).json(results)
      }
    }
  )
})

router.post('/', (req, res) => {
  console.log(req.body)
  connection.query('INSERT INTO encart SET ?', req.body, err => {
    if (err) {
      res.status(500).send('Error saving a encart')
    } else {
      res.status(200).send('Successfully saved')
    }
  })
})

router.put('/:id', (req, res) => {
  const idEncart = req.params.id
  const newEncart = req.body
  connection.query(
    'UPDATE encart SET ? WHERE id = ?',
    [newEncart, idEncart],
    err => {
      if (err) {
        res.status(500).send('Error updating a encart')
      } else {
        res.status(200).send('Encart updated successfully 🎉')
      }
    }
  )
})

router.delete('/:id', (req, res) => {
  const idUser = req.params.id

  connection.query('DELETE FROM encart WHERE id = ?', [idUser], err => {
    if (err) {
      res.status(500).send('Error deleted a encart')
    } else {
      res.status(200).send('Encart deleted successfully 🎉')
    }
  })
})

module.exports = router
