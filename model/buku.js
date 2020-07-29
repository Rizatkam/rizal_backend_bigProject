const Sequelize = require('sequelize');
const sequelizeConfig = require('../config/sequelize');

class model extends Sequelize.Model { }
model.init({
    id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    kategori_id: Sequelize.INTEGER,
    status_id: Sequelize.INTEGER,
    title: Sequelize.STRING,
    harga: Sequelize.INTEGER,
    author: Sequelize.INTEGER,
    image_url: Sequelize.STRING,
    no_isbn: Sequelize.STRING,
    berat: Sequelize.INTEGER,
    description: Sequelize.STRING,
    created_at: Sequelize.DATE,
    updated_at: Sequelize.DATE,
    deleted_at: Sequelize.DATE,
}, {
    createdAt: 'created_at',
    updatedAt: 'updated_at',
    deletedAt: 'deleted_at',
    freezeTableName: true,
    timestamps: true,
    paranoid: true,
    sequelize: sequelizeConfig,
    modelName: 'buku',
    tableName: 'buku',
});

module.exports = model;