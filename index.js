const express = require('express')
const routes = require('./routes/index')

const app = express()

app.use(express.json())
app.use(express.urlencoded({ extended: true }))

app.use('/slider', routes.slider)

app.listen(4242, () => console.log('Express server is running'))
