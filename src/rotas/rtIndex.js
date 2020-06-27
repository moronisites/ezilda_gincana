const express = require('express');
const router = express.Router();

const rota1 = router.get('/', (req, res, next) => {
    res.status(200).send({
        title: "Rotas para Escola004",
        version: "0.0.0"
    });
})

module.exports = router;