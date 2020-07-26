const jwt = require('jsonwebtoken');
const bcrypt = require('bcrypt');
const {
    users
} = require('../model');
const register = async (req, res) => {
    try {
        // body di group jadi 1 object baru
        // isi dari req_body adalah : name, username, password
        const params = req.body;
        // karena username untuk setiap user tidak boleh sama
        // kita coba check apakah username yg akan di register sudah exist di database
        // jika exist, akan di tolak
        const duplicated = await users.findOne({
            where: {
                username:
                    params.username
            }
        });
        if (duplicated) {
            return res.status(400).send({
                message: 'username telah terpakai',
            })
        }
        // update password dengan encrypt
        params.password = await bcrypt.hashSync(req.body.password,
            10);
        // save data ke dalam table users
        const data = await users.create(params);
        // return dengan status sukses
        return res.status(200).send({
            message: 'OK',
            data,
        })
    } catch (err) {
        return res.status(400).send({
            message: err.message,
        })
    }
}
const login = async (req, res) => {
    try {
        // body di group jadi 1 object baru
        // isi dari req_body adalah : username, password
        const params = req.body;
        // cari user berdasarkan username
        // jika tidak di temukan, akan di tolak
        const query = {
            where: {
                username: params.username
            },
            raw: true // agar return dari sequelize adalah JSON
        };
        const user = await users.findOne(query);
        if (!user) {
            return res.status(400).send({
                message: 'username tidak ditemukan',
            })
        }
        // jika user di temukan, kita compare antara password yang di input dengan database
        // jika tidak sama,, akan di tolak
        const compare_password =
            bcrypt.compareSync(params.password, user.password);
        if (!compare_password) {
            return res.status(400).send({
                message: 'password tidak sama',
            })
        }
        // karena user di temukan dan password sama dengan database
        // process selanjutkan adalah membuat token untuk users
        // define signed token
        const sign_token = {
            issuer: 'contoh.com',
            subject: 'contoh.com',
            algorithm: 'HS256', // algoritma encryption
            expiresIn: '1d', // token expired 1 hari
            audience: 'http://contoh.com',
        }
        // generate token berdasarkan data user dari database
        const token = jwt.sign(user, process.env.JWT_SECRET,
            sign_token);
        // return hasil
        return res.status(200).send({
            message: 'OK',
            data: {
                user,
                token,
            },
        })
    } catch (err) {
        return res.status(400).send({
            message: err.message,
        })
    }
}
// export function login agar bisa di akses dari route express
// pada file users.js di dalam folder controllers
module.exports = {
    register,
    login,
}