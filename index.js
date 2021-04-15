const cors = require('cors')
const express = require('express')
const routes = require('./routes/index')

const app = express()

app.use(cors())
app.use(express.json())
app.use(express.urlencoded({ extended: true }))

app.use('/slider', routes.slider)
app.use('/about', routes.about)
app.use('/news', routes.news)
app.use('/concept', routes.concept)
app.use('/particularPro', routes.particularPro)
app.use('/photos', routes.photos)
app.use('/upload', routes.upload)
app.use('/title', routes.title)
app.use('/signin', routes.signin)

app.use('/contact', routes.contact)
app.listen(4242, () => console.log('Express server is running'))
