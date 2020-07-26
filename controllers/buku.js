const { Op } = require('sequelize');
const {
    buku,
    kategori,
} = require('../model');
// function untuk create
const create = async (req, res) => {
    try {
        const params = {...req.body, ...{image_url: req.file.path}};
        const data = await buku.create(params);
        // return dengan status sukses
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
// function get detail kategori by ID
const get_by_id = async (req, res) => {
    try {
        // find detail by PK,
        // jika tidak di temukan, akan di reject
        const data = await buku.findByPk(req.params.id, {
            include:
                [
                    {
                        model: kategori,
                        as: 'kategori'
                    }
                ]
        });
        if (!data) {
            return res.status(400).send({
                message: 'ID tidak ditemukan',
            })
        }
        // return dengan status sukses
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
const update_by_id = async (req, res) => {
    try {
        const params = {...req.body, ...{image_url: req.file.path}};
        // find detail by PK,
        // jika tidak di temukan, akan di reject
        const data = await buku.findByPk(req.params.id);
        if (!data) {
            return res.status(400).send({
                message: 'ID tidak ditemukan',
            })
        }
        data.set(params);
        data.save();
        data.get();
        // return dengan status sukses
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
const delete_by_id = async (req, res) => {
    try {
        const params = (req.body);
        // find detail by PK,
        // jika tidak di temukan, akan di reject
        const data = await buku.findByPk(req.params.id);
        if (!data) {
            return res.status(400).send({
                message: 'ID tidak ditemukan',
            })
        }
        data.destroy();
        data.save();
        // return dengan status sukses
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
            include: [
                {
                    model: kategori,
                    as: 'kategori'
                }
            ]
        };
        if (params.title) query.where.title = {
            [Op.like]: `%${params.title}%`,
        };
        if (params.author) query.where.author = {
            [Op.like]: `%${params.author}%`,
        };
        // Sorting
        if (params.sort_by && params.sort_type) query.order =
            [[params.sort_by, params.sort_type]];
        // Pagination
        if (params.limit) query.limit = Number(params.limit);
        if (params.page) query.offset = Number(query.limit) *
            ((Number(params.page || 1) || 1) - 1);
        const data = await buku.findAndCountAll(query);
        data.limit = query.limit;
        data.offset = query.offset;
        data.page = (query.offset / query.limit) + 1;
        // return dengan status sukses
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
    create,
    get_by_id,
    update_by_id,
    delete_by_id,
    get_list,
}