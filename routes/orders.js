const express = require('express');
const app = express.Router();

const{orders}=require('../controllers');
const middleware = require('../config/middleware');

app.get('/', middleware.userAuth, orders.get_list);
app.post('/', middleware.userAuth, orders.create);
app.get('/:id', middleware.userAuth, orders.get_by_id);

module.exports=app;