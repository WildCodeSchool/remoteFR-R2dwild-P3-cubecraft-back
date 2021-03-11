const express = require('express')
const connection = require('../config')

const router = express.Router()

router.get('/', (req, res) => {
  connection.query('SELECT * from concept', (err, results) => {
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
    'UPDATE concept SET ? WHERE id = ?',
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

module.exports = router
