const express = require('express');
const app = express.Router();

const{kategori}=require('../controllers');

app.get('/', kategori.get_list);
app.get('/:id', kategori.get_by_id);

module.exports=app;