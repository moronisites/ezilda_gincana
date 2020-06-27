// -------------------------------------------------
//  Módulo inicial: 
//  sobe o servidor e carrega os demais módulos 
// -------------------------------------------------

'use strict'

const express = require("express");
const bodyParser = require("body-parser");

const rotas = require("./src/rotas/rotas.js");
require("./src/config/database")
const app = express();
const db = require("./src/database/conexao");

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
    extended: false
}));
app.use(rotas);

db.conect.authenticate().then(function () {
    console.log("conexão realizada com sucesso");
    app.listen(3003, () => console.log("servidor ativo"));
}).catch(function (err) {
    console.log("erro ao conectar -> " + err);
});