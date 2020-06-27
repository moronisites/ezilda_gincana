const express = require("express");
const consign = require('consign');
const app = express();
//const db = require("./src/database/conexao");
//const router = express.Router();

consign()
    .include("libs/bodyps.js")
    //.then("./src/rotas/rotas.js") //para as rotas a definição NÃO é aqui.
    .then("./src/modelos/modelos.js")
    .then("./src/controles/controles.js")
    .into(app);




//const handlebars = require("express-handlebars");
const rotas = require("./src/rotas/rotas.js");


// configuração do handlebars
//app.engine("handlebars", handlebars({
//    defaultLayout: "main"
//}));
//app.set("view engine", "handlebars");

console.log("------------- nova  -------------");
//app.use("/aula", rotas);


db.conect.authenticate().then(function () {
    console.log("conexão realizada com sucesso");
    app.listen(3003, () => console.log("-----xxxxx ---- servidor =======2======= ativo ---- xxxxx-----"));

}).catch(function (err) {
    console.log("erro ao conectar -> " + err);

});