const express = require('express');
const app = express.Router();

const{kategori}=require('../controllers');
const middleware = require('../config/middleware');

app.get('/', kategori.get_list); // public api
app.post('/', middleware, kategori.create); //restricted api
app.get('/:id', kategori.get_by_id); // public api
app.put('/:id', middleware, kategori.update_by_id); //restricted api
app.delete('/:id', middleware, kategori.delete_by_id);// restricted api

module.exports=app;