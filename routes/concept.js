const express = require('express')
const connection = require('../config')

const router = express.Router()

router.get('/', (req, res) => {
  connection.query('SELECT *  from concept', (err, results) => {
    if (err) {
      console.log(err)
      res.status(500).send('Error retrieving data')
    } else {
      res.status(200).json(results)
    }
  })
})

router.get('/detail', (req, res) => {
  connection.query(
    'SELECT photo.Name,Text,Title from concept left join photo on concept.photo_id=photo.id ',
    (err, results) => {
      if (err) {
        res.status(500).send('Error retrieving data')
      } else {
        res.status(200).json(results)
      }
    }
  )
})

router.get('/title', (req, res) => {
  connection.query(
    'SELECT * from divers left join photo on divers.photo_id=photo.id where divers.id=4 ',
    (err, results) => {
      if (err) {
        res.status(500).send('Error retrieving data')
      } else {
        res.status(200).json(results)
      }
    }
  )
})

router.get('/details/:id', (req, res) => {
  const idUserMod = req.params.id
  connection.query(
    'SELECT photo.Name,Photo_Id,Text,Title from concept left join photo on concept.photo_id=photo.id where concept.id = ?',
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
    'SELECT * from concept WHERE id = ?',
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
  connection.query('INSERT INTO concept SET ?', req.body, err => {
    if (err) {
      res.status(500).send('Error saving a concept')
    } else {
      res.status(200).send('Successfully saved')
    }
  })
})

router.put('/:id', (req, res) => {
  const idConcept = req.params.id
  const newConcept = req.body
  connection.query(
    'UPDATE concept SET ? WHERE id = ?',
    [newConcept, idConcept],
    err => {
      if (err) {
        res.status(500).send('Error updating a concept')
      } else {
        res.status(200).send('Concept updated successfully 🎉')
      }
    }
  )
})

router.put('/title/:id', (req, res) => {
  const idConcept = req.params.id
  const newConcept = req.body

  connection.query(
    'UPDATE divers SET ? WHERE id = ?',
    [newConcept, idConcept],
    err => {
      if (err) {
        res.status(500).send('Error updating a title')
      } else {
        res.status(200).send('Title updated successfully 🎉')
      }
    }
  )
})

router.delete('/:id', (req, res) => {
  const idUser = req.params.id

  connection.query('DELETE FROM concept WHERE id = ?', [idUser], err => {
    if (err) {
      res.status(500).send('Error deleted a concept')
    } else {
      res.status(200).send('Concept deleted successfully 🎉')
    }
  })
})

module.exports = router
