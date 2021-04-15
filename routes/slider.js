const express = require('express')
const connection = require('../config')

const router = express.Router()

router.get('/', (request, res) => {
  connection.query('SELECT * from slider', (err, results) => {
    if (err) {
      res.status(500).send(`Error retrieving data`)
    } else {
      res.status(200).json(results)
    }
  })
})

router.get('/cardPro/', (req, res) => {
  connection.query(
    'SELECT * from divers left join photo on divers.photo_id=photo.id where divers.id = 8',
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

router.get('/cardPar', (req, res) => {
  connection.query(
    'SELECT * from divers left join photo on divers.photo_id=photo.id where divers.id = 7',
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

router.get('/title', (req, res) => {
  connection.query(
    'SELECT * from divers left join photo on divers.photo_id=photo.id where divers.id=1',
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
    'SELECT * from slider WHERE id = ?',
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
  connection.query('INSERT INTO slider SET ?', req.body, err => {
    if (err) {
      res.status(500).send('Error saving a slider')
    } else {
      res.status(200).send('Successfully saved')
    }
  })
})

router.put('/:id', (req, res) => {
  const idUser = req.params.id
  const newUser = req.body

  connection.query(
    'UPDATE slider SET ? WHERE id = ?',
    [newUser, idUser],
    err => {
      if (err) {
        res.status(500).send('Error updating a slider')
      } else {
        res.status(200).send('Slider updated successfully 🎉')
      }
    }
  )
})

router.put('/title/:id', (req, res) => {
  const idSlider = req.params.id
  const newSlider = req.body

  connection.query(
    'UPDATE divers SET ? WHERE id = ?',
    [newSlider, idSlider],
    err => {
      if (err) {
        res.status(500).send('Error updating a title')
      } else {
        res.status(200).send('Title updated successfully 🎉')
      }
    }
  )
})

router.put('/cardPro/:id', (req, res) => {
  const idSlider = req.params.id
  const newSlider = req.body
  connection.query(
    'UPDATE divers SET ? WHERE id = ?',
    [newSlider, idSlider],
    err => {
      if (err) {
        res.status(500).send('Error updating a title')
      } else {
        res.status(200).send('Title updated successfully 🎉')
      }
    }
  )
})

router.put('/cardPar/:id', (req, res) => {
  const idSlider = req.params.id
  const newSlider = req.body
  connection.query(
    'UPDATE divers SET ? WHERE id = ?',
    [newSlider, idSlider],
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

  connection.query('DELETE FROM slider WHERE id = ?', [idUser], err => {
    if (err) {
      res.status(500).send('Error deleted a slider')
    } else {
      res.status(200).send('Slider deleted successfully 🎉')
    }
  })
})

module.exports = router
