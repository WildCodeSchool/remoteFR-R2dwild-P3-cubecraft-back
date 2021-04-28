const express = require('express')
const connection = require('../config')

const router = express.Router()

router.get('/', (req, res) => {
  connection.query('SELECT * from contact', (err, results) => {
    if (err) {
      res.status(500).send(`Error retrieving data`)
    } else {
      res.status(200).json(results)
    }
  })
})

router.get('/title', (req, res) => {
  connection.query('SELECT * from divers left join photo on divers.photo_id=photo.id where divers.id = 2', (err, results) => {
    if (err) {
      console.log(err)
      res.status(500).send('Error retrieving data')
    } else {
      res.status(200).json(results)
    }
  })
})

router.post('/', (req, res) => {
  connection.query('INSERT INTO contact SET ?', req.body, err => {
    if (err) {
      res.status(500).send('Error saving contact')
    } else {
      res.status(200).send('Successfully saved contact')
    }
  })
})

router.put('/:id', (req, res) => {
  const idContact = req.params.id
  const newContact = req.body
  connection.query(
    'UPDATE contact SET ? WHERE id = ?',
    [newContact, idContact],
    err => {
      if (err) {
        res.status(500).send('Error updating contact')
      } else {
        res.status(200).send('Contact updated successfully ')
      }
    }
  )
})

router.delete('/:id', (req, res) => {
  const idContact = req.params.id
  connection.query('DELETE FROM contact WHERE id = ?', [idContact], err => {
    if (err) {
      res.status(500).send('Error deleted contact')
    } else {
      res.status(200).send('Contact deleted successfully')
    }
  })
})

module.exports = router
