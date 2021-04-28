const express = require('express')
const connection = require('../config')

const router = express.Router()

router.get('/', (request, res) => {
  connection.query('SELECT * from profile', (err, results) => {
    if (err) {
      res.status(500).send(`Error retrieving data`)
    } else {
      res.status(200).json(results)
    }
  })
})

router.get('/card', (req, res) => {
  connection.query(
    'SELECT * from divers left join photo on divers.photo_id=photo.id where divers.id = 3',
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

router.get('/detail', (req, res) => {
  connection.query(
    'SELECT photo.Name,FirstName,LastName, JobName, Description from profile left join photo on profile.photo_id=photo.id ',
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
    'SELECT * from profile WHERE id = ?',
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
  connection.query('INSERT INTO profile SET ?', req.body, err => {
    if (err) {
      res.status(500).send('Error saving a profile')
    } else {
      res.status(200).send('Successfully saved')
    }
  })
})

router.put('/:id', (req, res) => {
  const idUser = req.params.id
  const newUser = req.body

  connection.query(
    'UPDATE profile SET ? WHERE id = ?',
    [newUser, idUser],
    err => {
      if (err) {
        res.status(500).send('Error updating a profile')
      } else {
        res.status(200).send('Profile updated successfully 🎉')
      }
    }
  )
})

router.put('/card/:id', (req, res) => {
  const idCard = req.params.id
  const newCard = req.body

  connection.query(
    'UPDATE divers SET ? WHERE id = ?',
    [newCard, idCard],
    err => {
      if (err) {
        res.status(500).send('Error updating a card')
      } else {
        res.status(200).send('Card updated successfully 🎉')
      }
    }
  )
})

router.delete('/:id', (req, res) => {
  const idUser = req.params.id

  connection.query('DELETE FROM profile WHERE id = ?', [idUser], err => {
    if (err) {
      res.status(500).send('Error deleted a profile')
    } else {
      res.status(200).send('Profile deleted successfully 🎉')
    }
  })
})

module.exports = router
