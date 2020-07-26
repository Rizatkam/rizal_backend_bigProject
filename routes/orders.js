const express = require('express');
const app = express.Router();

const{orders}=require('../controllers');
const middleware = require('../config/middleware');

app.get('/', middleware, orders.get_list);
app.post('/', middleware, orders.create);
app.get('/:id', middleware, orders.get_by_id);

module.exports=app;