const express = require('express')
const connection = require('../config')
const jwt = require('jsonwebtoken')
const bcr = require('bcrypt')

const router = express.Router()

router.post('/', async (req, res) => {
  connection.query('SELECT * from user', (err, result) => {
    if (err) {
      res.status(400).send(err)
    } else {
      if (
        req.body.username === result[0].username &&
        bcr.compareSync(req.body.password, result[0].password)
      ) {
        const tokenUserinfo = {
          username: req.body.username,
          status: 'Administrateur'
        }
        const token = jwt.sign(tokenUserinfo, process.env.JWT_SECRET)
        res.header('Access-Control-Expose-Headers', 'x-access-token')
        res.set('x-access-token', token)
        res.status(200).send({ details: 'user connected' })
      } else {
        res.status(400).send('fail')
      }
    }
  })
})

const getToken = req => {
  if (
    req.headers.authorization &&
    req.headers.authorization.split(' ')[0] === 'Bearer'
  ) {
    return req.headers.authorization.split(' ')[1]
  } else if (req.query && req.query.token) {
    return req.query.token
  }
  return null
}

router.post('/protected', (req, res) => {
  const token = getToken(req)
  const objectTests = {
    // //data appeler par la bdd
    test : "ok"
  }
  jwt.verify(token, process.env.JWT_SECRET, (err, decoded) => {
    if (err) {
      console.log(err)
      return res.status(200).send({ mess: token })
    }
    console.log('decode', decoded)
    return res.status(200).send({ mess: 'Authorized', objectTests })
  })
})

module.exports = router
