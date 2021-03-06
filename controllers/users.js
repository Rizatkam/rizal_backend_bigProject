const jwt = require('jsonwebtoken');
const bcrypt = require('bcrypt');
const {
    users
} = require('../model');

const register = async (req, res) => {
    try {
        const params = req.body;
        const duplicated = await users.findOne({
            where: {
                email:
                    params.email
            }
        });
        if (duplicated) {
            return res.status(400).send({
                message: 'email telah terpakai',
            })
        }
        params.password = await bcrypt.hashSync(req.body.password,
            10);
        const data = await users.create(params);
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
        const params = req.body;
        const query = {
            where: {
                email: params.email
            },
            raw: true
        };
        const user = await users.findOne(query);
        if (!user) {
            return res.status(400).send({
                message: 'Email tidak ditemukan. Mohon untuk registrasi.',
            })
        }
        const compare_password =
            bcrypt.compareSync(params.password, user.password);
        if (!compare_password) {
            return res.status(400).send({
                message: 'Password anda salah!',
            })
        }
        const sign_token = {
            issuer: 'contoh.com',
            subject: 'contoh.com',
            algorithm: 'HS256',
            expiresIn: '1d',
            audience: 'http://contoh.com',
        }
        const token = jwt.sign(user, process.env.JWT_SECRET,
            sign_token);
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

module.exports = {
    register,
    login,
}