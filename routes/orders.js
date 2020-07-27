const express = require('express');
const app = express.Router();

const{orders}=require('../controllers');
const middleware = require('../config/middleware');

app.get('/', middleware.userAuth,middleware.checkRole, orders.get_list);
app.post('/', middleware.userAuth,middleware.checkRole, orders.create);
app.get('/:id', middleware.userAuth,middleware.checkRole, orders.get_by_id);

module.exports=app;