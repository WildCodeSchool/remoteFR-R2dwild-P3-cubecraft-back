const express = require('express')
const routes = require('./routes/index')
const cors = require('cors')

const app = express()

app.use(express.json())
app.use(express.urlencoded({ extended: true }))
app.use(cors())

app.use('/slider', routes.slider)
app.use('/about', routes.about)
app.use('/news', routes.news)
app.use('/concept', routes.concept)
app.use('/particularPro', routes.particularPro)

app.listen(4242, () => console.log('Express server is running'))
