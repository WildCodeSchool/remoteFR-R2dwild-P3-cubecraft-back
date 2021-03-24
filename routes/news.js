const express = require('express')
const connection = require('../config')

const router = express.Router()

router.get('/', (req, res) => {
  connection.query('SELECT * from news', (err, results) => {
    if (err) {
      res.status(500).send('Error retrieving data')
    } else {
      res.status(200).json(results)
    }
  })
})

router.get('/:id', (req, res) => {
  connection.query(
    'SELECT * from news WHERE id = ?',
    [req.params.id],
    (err, results) => {
      if (err) {
        res.status(500).send('Error retrieving data')
      } else {
        if (results.length === 0) res.status(404).send('404 News not found')
        else res.status(200).json(results[0])
      }
    }
  )
})

router.put('/:id', (req, res) => {
  const idConcept = req.params.id
  const newConcept = req.body
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
          'UPDATE news SET ? WHERE id = ?',
          [newConcept, idConcept],
          err => {
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
  const idNews = req.params.id

  connection.query(
    'DELETE FROM news WHERE id = ?',
    [idNews],
    (err, results) => {
      if (err) {
        res.status(500).send('😱 Error deleting an news')
      } else {
        res.status(200).send('🎉 news deleted!')
      }
    }
  )
})

router.post('/', (req, res) => {
  const { link, text, title, photo_id } = req.body
  // check if the photo is in the database
  connection.query('SELECT * from photo', (err, results) => {
    if (err) {
      res.status(500).send('Error retrieving data')
    } else {
      if (!results.some(photo => photo.Id === parseInt(photo_id)))
        res.status(422).send('incorrect photo id')
      else
        connection.query(
          'INSERT INTO news( Link, Text, Title, Photo_id) VALUES(?, ?, ?, ?)',

          [link, text, title, photo_id],

          err => {
            if (err) {
              res.status(500).send('Error saving a news')
            } else {
              res.status(200).send('Successfully saved')
            }
          }
        )
    }
  })
})

module.exports = router
