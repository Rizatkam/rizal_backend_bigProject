const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const app = express();
const port = 4000;
const routes = require ('./routes');

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.use(cors());
app.use('/users',routes.users);
app.use('/buku',routes.buku);
app.use('/orders',routes.orders);

app.listen(port, () => console.log(`BackEnd Project Listening at
http://localhost:${port}`));