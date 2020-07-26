const express = require('express');
const app = express.Router();

const{users}=require('../controllers');

app.get('/', (req, res) => res.send('Toko Buku Cilsy+'));
app.post('/register', users.register);
app.post('/login', users.login);

module.exports=app;