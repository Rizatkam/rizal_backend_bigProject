const express = require('express');
const app = express.Router();

const{orders}=require('../controllers');
const middleware = require('../config/middleware');

app.get('/', middleware, orders.get_list); // restricted api
app.post('/', middleware, orders.create); // restricted api
app.get('/:id', middleware, orders.get_by_id); //restricted api

module.exports=app;