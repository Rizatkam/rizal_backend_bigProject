const users = require('./users'); // define users
const kategori= require('./kategori');
const buku= require('./buku');
const orders = require('./orders');
const orders_detail = require('./orders_detail');

//kategori dengan buku
kategori.hasMany(buku, { foreignKey: 'kategori_id', as:'buku' });
buku.belongsTo(kategori, { foreignKey: 'kategori_id', as:'kategori' });

//orders dengan orders_detail
orders.hasMany(orders_detail, { foreignKey: 'orders_id', as:'orders_detail' });
orders_detail.belongsTo(orders, { foreignKey: 'orders_id', as:'orders' });

//users dengan orders
users.hasMany(orders, { foreignKey: 'user_id', as: 'orders' });
orders.belongsTo(users, { foreignKey: 'user_id', as:'customers_detail' });

//buku dengan orders_detail
buku.hasMany(orders_detail, { foreignKey: "buku_id", as: "orders_detail" });
orders_detail.belongsTo(buku, { foreignKey: "buku_id", as: "buku" });

module.exports = {
    users,
    kategori,
    buku,
    orders,
    orders_detail,
}