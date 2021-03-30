const express = require('express')
const connection = require('../config')

const router = express.Router()

router.get('/', (req, res) => {
  connection.query('SELECT * from photo', (err, results) => {
    if (err) {
      console.log(err)
      res.status(500).send('Error retrieving data')
    } else {
      res.status(200).json(results)
    }
  })
})

router.get('/:id', (req, res) => {
  const idPhoto = req.params.id
  connection.query(
    'SELECT * from photo WHERE id = ?',
    [idPhoto],
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
  connection.query('INSERT INTO photo SET ?', req.body, err => {
    if (err) {
      res.status(500).send('Error saving a photo')
    } else {
      res.status(200).send('Successfully saved')
    }
  })
})

router.delete('/:id', (req, res) => {
  const idPhoto = req.params.id

  connection.query('DELETE FROM photo WHERE id = ?', [idPhoto], err => {
    if (err) {
      res.status(500).send('Error deleted a photo')
    } else {
      res.status(200).send('Photo deleted successfully 🎉')
    }
  })
})

module.exports = router
