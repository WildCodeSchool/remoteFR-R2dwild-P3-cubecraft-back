const express = require('express')
const connection = require('../config')

const router = express.Router()

router.get('/', (request, res) => {
  connection.query('SELECT * from profile', (err, results) => {
    if (err) {
      res.status(500).send(`Error retrieving data`)
    } else {
      res.status(200).json(results)
    }
  })
})

router.post("/:id", (req, res) => {
  const { Firstname, Lastname, Jobname} = req.body;
  connection.query(
    "INSERT INTO profile (Firstname, Lastname, Jobname) VALUES(?, ?, ?)",
    [Firstname, Lastname, Email],
    (err, results) => {
      if (err) {
        console.log(err);
        res.status(500).send("Error saving a user");
      } else {
        res.status(200).send("Successfully saved");
      }
    }
  );
});

// app.put("apropos/:id", (req, res) => {
//   // We get the ID from the url:
//   const idUser = req.params.id;

//   // We get the data from the req.body
//   const {Firstname, Lastname, Jobname} = req.body;

//   // We send a UPDATE query to the DB
//   connection.query(
//     "UPDATE users SET ? WHERE id = ?",
//     [newUser, idUser],
//     (err, results) => {
//       if (err) {
//         console.log(err);
//         res.status(500).send("Error updating a user");
//       } else {
//         res.status(200).send("User updated successfully 🎉");
//       }
//     }
//   );
// });

module.exports = router