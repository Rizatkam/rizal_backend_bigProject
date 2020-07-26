const express = require('express');
const app = express.Router();

const{kategori}=require('../controllers');
const middleware = require('../config/middleware');

app.get('/', kategori.get_list);
app.post('/', middleware, kategori.create);
app.get('/:id', kategori.get_by_id);
app.put('/:id', middleware, kategori.update_by_id);
app.delete('/:id', middleware, kategori.delete_by_id);

module.exports=app;