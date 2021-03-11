const express = require('express')
const routes = require('./routes/index')

const app = express()

app.use(express.json())
app.use(express.urlencoded({ extended: true }))

app.use('/slider', routes.slider)

app.listen(4242, () => console.log('Express server is running'))

app.get('/concept/', (req, res) => {
  connection.query('SELECT * from concept', (err, results) => {
    if (err) {
      console.log(err)
      res.status(500).send('Error retrieving data')
    } else {
      res.status(200).json(results)
    }
  })
})

app.put('/admin/concept/:id', (req, res) => {
  const idConcept = req.params.id
  const newConcept = req.body

  connection.query(
    'UPDATE concept SET ? WHERE id = ?',
    [newConcept, idConcept],
    (err, results) => {
      if (err) {
        console.log(err)

        res.status(500).send('Error updating a concept')
      } else {
        res.status(200).send('User updated successfully 🎉')
      }
    }
  )
})
