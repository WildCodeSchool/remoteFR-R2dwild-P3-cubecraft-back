const express = require('express')
const routes = require('./routes/index')

const app = express()

app.use(express.json())
app.use(express.urlencoded({ extended: true }))

app.use('/slider', routes.slider)

app.listen(4242, () => console.log('Express server is running'))

app.get('/concepts/', (req, res) => {
  connection.query('SELECT * from concept', (err, results) => {
    if (err) {
      console.log(err)
      res.status(500).send('Error retrieving data')
    } else {
      res.status(200).json(results)
    }
  })
})
