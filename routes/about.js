const express = require('express')
const connection = require('../config')
const { check, validationResult } = require('express-validator')

const router = express.Router()

const userValidationMiddlewares = [
  // email must be valid
  check('email').isEmail(),
  // password must be at least 8 chars long
  check('password').isLength({ min: 8 }),
  // let's assume a name should be 2 chars long
  check('name').isLength({ min: 2 })
]

router.get('/', (request, res) => {
  connection.query('SELECT * from Profile', (err, results) => {
    if (err) {
      res.status(500).send(`Error retrieving data`)
    } else {
      res.status(200).json(results)
    }
  })
})

router.post('/', (req, res) => {
  connection.query('INSERT INTO profile SET ?', req.body, (err, results) => {
    if (err) {
      console.log(err)
      res.status(500).send('Error saving a user')
    } else {
      res.status(200).send('Successfully saved')
    }
  })
})

router.put('/:id', userValidationMiddlewares, (req, res) => {
  const errors = validationResult(req)
  if (!errors.isEmpty()) {
    return res.status(422).json({ errors: errors.array() })
  }
  const idUser = req.params.id
  const newUser = ({ Firstname, Lastname, Jobname } = req.body)

  return connection.query(
    'UPDATE users SET ? WHERE id = ?',
    [newUser, idUser],
    err => {
      if (err) {
        res.status(500).send('Error updating a user')
      } else {
        res.status(200).send('User updated successfully 🎉')
      }
    }
  )
})

module.exports = router
