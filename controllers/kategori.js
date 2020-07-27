const { Op } = require('sequelize');
const {
    kategori,
} = require('../model');
const operators = {
    like: val => ({ [Op.like]: `%${val}%` }),
    eq: val => ({ [Op.eq]: val }),
    in: val => ({ [Op.in]: val.split(',') })
}
const filter = {
    name: operators.like,
}

const get_by_id = async (req, res) => {
    try {
        const data = await kategori.findByPk(req.params.id);
        if (!data) {
            return res.status(400).send({
                message: 'ID tidak ditemukan',
            })
        }
        return res.status(200).send({
            message: 'OK',
            data,
        });
    } catch (err) {
        return res.status(400).send({
            message: err.message,
        })
    }
}

const get_list = async (req, res) => {
    try {
        const params = (req.query);
        const query = {
            order: [
                ['id', 'DESC']
            ],
            where: {},
            limit: 10,
            offset: 0,
            attributes: this.attributes,
        };
        Object.keys(params).forEach((key) => {
            if (filter[key]) query.where[key] = filter[key]
                (params[key]);
        });
        if (params.sort_by && params.sort_type) query.order =
            [[params.sort_by, params.sort_type]];
        if (params.limit) query.limit = Number(params.limit);
        if (params.page) query.offset = Number(query.limit) *
            ((Number(params.page || 1) || 1) - 1);
        const data = await kategori.findAndCountAll(query);
        data.limit = query.limit;
        data.offset = query.offset;
        data.page = (query.offset / query.limit) + 1;
        return res.status(200).send({
            message: 'OK',
            data,
        });
    } catch (err) {
        return res.status(400).send({
            message: err.message,
        })
    }
}
module.exports = {
    get_by_id,
    get_list,
}