const express = require('express')
const connection = require('../config')

const router = express.Router()

router.get('/', (req, res) => {
  connection.query('SELECT * from news', (err, results) => {
    if (err) {
      console.log(err)
      res.status(500).send('Error retrieving data')
    } else {
      res.status(200).json(results)
    }
  })
})

router.put('/:id', (req, res) => {
  const idConcept = req.params.id
  const newConcept = req.body

  connection.query(
    'UPDATE news SET ? WHERE id = ?',
    [newConcept, idConcept],
    (err, results) => {
      if (err) {
        console.log(err)
        res.status(500).send('Error updating a concept')
      } else {
        res.status(200).send('Concept updated successfully 🎉')
      }
    }
  )
})

router.delete('/:id', (req, res) => {
  const idNews = req.params.id

  connection.query(
    'DELETE FROM news WHERE id = ?',
    [idNews],
    (err, results) => {
      if (err) {
        console.log(err)
        res.status(500).send('😱 Error deleting an news')
      } else {
        res.status(200).send('🎉 news deleted!')
      }
    }
  )
})

router.post('/', (req, res) => {
  const { link, text, title, photo_id } = req.body
  connection.query(
    'INSERT INTO news( Link, Text, Title, Photo_id) VALUES(?, ?, ?, ?)',

    [link, text, title, photo_id],

    (err, results) => {
      if (err) {
        console.log(err)

        res.status(500).send('Error saving a news')
      } else {
        res.status(200).send('Successfully saved')
      }
    }
  )
})

module.exports = router
