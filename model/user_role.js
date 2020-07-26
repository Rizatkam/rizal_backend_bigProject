const Sequelize = require('sequelize');
const sequelizeConfig = require('../config/sequelize');

class model extends Sequelize.Model { }
model.init({
    id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    name: Sequelize.STRING,
}, {
    freezeTableName: true,
    timestamps: true,
    sequelize: sequelizeConfig,
    modelName: 'user_role',
    tableName: 'user_role',
});

module.exports = model;