const express = require("express");
const app = express.Router();

const { kategori } = require("../controllers");
const middleware = require("../config/middleware");

app.get("/", kategori.get_list);
app.get("/:id", kategori.get_by_id);

app.post("/", middleware.userAuth, middleware.checkRole, kategori.create);

app.put(
  "/:id",
  middleware.userAuth,
  middleware.checkRole,
  kategori.update_by_id
);
app.delete(
  "/:id",
  middleware.userAuth,
  middleware.checkRole,
  kategori.delete_by_id
);

module.exports = app;
