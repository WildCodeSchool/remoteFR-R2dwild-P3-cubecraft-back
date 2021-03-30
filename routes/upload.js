// const express = require('express')
// const router = express.Router()
// const multer = require('multer')

// const upload = multer({
//   dest: '../remoteFR-R2dwild-P3-cubecraft-front/public/images'
// })
// const fs = require('fs')
// const { promisify } = require('util')
// const pipeline = promisify(require('stream').pipeline)

// router.post('/', upload.single('file'), function (req, res, next) {
//   const { file } = req
//   console.log(file)
//   // pipeline(
//   //   file.stream,
//   //   fs.createWriteStream(`${__dirname}/remoteFR-R2dwild-P3-cubecraft-front/public/images/${file}`)
//   // )
//   // if (file.detectFileExtension != '.jpg' || file.detectFileExtension != '.png')
//   //   next(new Error('Invalid file type'))
//   // let storage = multer.diskStorage({
//   //   destination: function (req, file, cb) {
//   //     cb(null, '../remoteFR-R2dwild-P3-cubecraft-front/public/images')
//   //   },
//   //   filename: function (req, file, cb) {
//   //     cb(null, file.originalname + '-' + Date.now())
//   //   }
//   //   // const filename = name + Math.floor(Math.random() * 1000) + file.detectedFileExtension
//   // })
//   // var upload = multer({ storage: storage })
// })

// module.exports = router

const express = require('express')
const router = express.Router()
const multer = require('multer')

const upload = multer({
  dest: '../remoteFR-R2dwild-P3-cubecraft-front/public/images'
})
const fs = require('fs')
const { promisify } = require('util')
const pipeline = promisify(require('stream').pipeline)

router.post('/', upload.single('file'), function (req, res, next) {
  const { file } = req
  console.log(file)

})

module.exports = router
