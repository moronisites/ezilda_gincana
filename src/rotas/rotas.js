const express = require('express');

//const ctAluno = require("../controles/ctAluno");
const ctTurma = require("../controles/ctTurma");
const ctAula = require("../controles/ctAula");

const rotas = express.Router();

//rotas.get('/alunos', ctAluno.index);
//rotas.post('/alunos', ctAluno.store);

rotas.get("/aulas", ctAula.lista);
rotas.post("/aulas", ctAula.grava);

//rotas.get("/turmas", ctTurma.lista);
//rotas.post("/turmas", ctTurma.grava);
//rotas.delete("/turmas", ctTurma.apaga);

rotas.get('/report', ReportController.show);

module.exports = rotas;


/// -----------  ERRO  ----------------------------
// const rotas = require("express").Router();
// //const ctAula = require("../controles/ctAula");

// // module.exports = app => {
// // //    const rtTurma = require("./rtTurma");
// // //   const rtAula = require("./rtAula");



// // //  rotas.get('/aula', (req, res) => {
// // //      return res.json({fala: 'ola mundo novo!!!!!!!'});
// // //  });

// // // rotas.post('/aula', ctAula.grava);
// // // rotas.get('/aula', ctAula.lista);
// const rota = () => {
// rotas.get('/au', (req, res) => {
//      console.log("rota ============== xxx ===========");
//      //return res.json({fala: 'ola mundo novo!!!!!!!'});
// });
// console.log(" rota oiiiii")
// return {}
// }
// module.exports = rota;