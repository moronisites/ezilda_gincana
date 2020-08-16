// -------------------------------------------------
//  Módulo inicial: 
//  sobe o servidor e carrega os demais módulos 
// -------------------------------------------------

'use strict'

const express = require("express");
const path = require('path');
const bodyParser = require("body-parser");

const rotas = require("./src/rotas/rotas.js");
require("./src/config/database")
const app = express();
const db = require("./src/database/conexao");

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
    extended: true
}));
app.use(rotas);
app.use(express.static(path.join(__dirname, 'public')));
app.set("view engine", "ejs");


db.conect.authenticate().then(function () {
    console.log("conexão realizada com sucesso");
    console.log("estou em",__dirname);
    app.listen(3000, () => console.log("servidor ativo"));
}).catch(function (err) {
    console.log("erro ao conectar -> " + err);
});