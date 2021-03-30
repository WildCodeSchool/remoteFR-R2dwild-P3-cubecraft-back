const express = require ('express')
const router = express.Router()
const multer = require('multer')

const upload = multer ({ dest: '../images' })
const fs = require("fs")
const  {promisify} = require ('util')
const pipeline =  promisify(require("stream").pipeline)


router.post('/', upload.single("file") ,async function (req, res, next) {
    // console.log(req.file)
    const {file} = req
    console.log(file)
    await pipeline(file.stream, fs.createWriteStream(`${__dirname}/images/${file}`))
    if (file.detectFileExtension != ".jpg" || file.detectFileExtension != ".png" ) next(new Error("Invalid file type"))
    var storage = multer.diskStorage({
        destination: function (req, file, cb) {
          cb(null, '../images')
        },
        filename: function (req, file, cb) {
          cb(null, file.fieldname + '-' + Date.now())
        }
      })
       
      var upload = multer({ storage: storage })
  
    // const fileName= name + Math.floor(Math.random() * 1000) + file.detectFileExtension
})

module.exports = router;