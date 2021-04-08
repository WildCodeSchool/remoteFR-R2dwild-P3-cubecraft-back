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
<<<<<<< HEAD
=======
app.use('/photos', routes.photos)
app.use('/upload', routes.upload)
app.use('/title', routes.title)

>>>>>>> 423a0a064177172bfd56b0ac08f25ab384e1e1e2
app.listen(4242, () => console.log('Express server is running'))
