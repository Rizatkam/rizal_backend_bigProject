const users = require("./users");
const kategori = require("./kategori");
const buku_status = require("./buku_status");
const buku = require("./buku");
const orders = require("./orders");
const orders_detail = require("./orders_detail");
const user_role = require("./user_role");
const cart = require("./cart");

//kategori dengan buku
kategori.hasMany(buku, { foreignKey: "kategori_id", as: "buku" });
buku.belongsTo(kategori, { foreignKey: "kategori_id", as: "kategori" });

//buku_status dengan buku
buku_status.hasMany(buku, { foreignKey: "status_id", as: "buku" });
buku.belongsTo(buku_status, { foreignKey: "status_id", as: "buku_status" });

//orders dengan orders_detail
orders.hasMany(orders_detail, { foreignKey: "order_id", as: "orders_detail" });
orders_detail.belongsTo(orders, { foreignKey: "order_id", as: "orders" });

//users dengan orders
users.hasMany(orders, { foreignKey: "user_id", as: "orders" });
orders.belongsTo(users, { foreignKey: "user_id", as: "customers_detail" });

//users dengan cart
users.hasMany(cart, { foreignKey: "user_id", as: "cart" });
cart.belongsTo(users, { foreignKey: "user_id", as: "customers_detail" });

//buku dengan cart
buku.hasMany(cart, { foreignKey: "buku_id", as: "cart" });
cart.belongsTo(buku, { foreignKey: "buku_id", as: "buku" });

//buku dengan orders_detail
buku.hasMany(orders_detail, { foreignKey: "buku_id", as: "orders_detail" });
orders_detail.belongsTo(buku, { foreignKey: "buku_id", as: "buku" });

//user_role dengan users
user_role.hasMany(users, { foreignKey: "role_id", as: "users" });
users.belongsTo(user_role, { foreignKey: "role_id", as: "user_role" });

module.exports = {
  users,
  kategori,
  buku_status,
  cart,
  buku,
  orders,
  orders_detail,
  user_role,
};
