const express = require('express')
const connection = require('../config')

const router = express.Router()

router.get(`/`, (request, res) => {
  connection.query('SELECT * from Slider', (err, results) => {
    if (err) {
      res.status(500).send(`Error retrieving data`)
    } else {
      res.status(200).json(results)
    }
  })
})

module.exports = router
