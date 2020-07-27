const multer = require('multer');
const util = require('util');
const express = require('express');
const app = express.Router();

const { buku } = require('../controllers');
const middleware = require('../config/middleware');

const storage = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, 'public/images')
    },
    filename: function (req, file, cb) {
        var fileObj = {
            "image/png": ".png",
            "image/jpeg": ".jpeg",
            "image/jpg": ".jpg"
        };
        if (fileObj[file.mimetype] == undefined) {
            cb(new Error("file format not valid"));
        } else {
            cb(null, file.fieldname + '-' + Date.now() + fileObj[file.mimetype])
        }
    }
});
const upload = multer({ 
    storage,
    limits:{
        fileSize: 1024 * 1024 * 5,
      } });
const uploadAsync = util.promisify(upload.single('image_url'))

app.get('/', buku.get_list);
app.post('/', middleware.userAuth,middleware.checkRole, uploadAsync, buku.create);
app.get('/:id', buku.get_by_id);
app.put('/:id', middleware.userAuth,middleware.checkRole, uploadAsync, buku.update_by_id);
app.delete('/:id', middleware.userAuth,middleware.checkRole, buku.delete_by_id);

module.exports=app;