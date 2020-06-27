//  ---------------------------------------------------
//   módulo de configuração das rotas
//   .
//  ---------------------------------------------------
 
'use strict'

const express = require('express');

//const ctAluno = require("../controles/ctAluno");
const ctTurma = require("../controles/ctTurma");
const ctAula = require("../controles/ctAula");

const rotas = express.Router();

//rotas.get('/alunos', ctAluno.lista);
//rotas.post('/alunos', ctAluno.grava);

rotas.get("/aulas", ctAula.lista);
rotas.post("/aulas", ctAula.grava);

rotas.get("/turmas", ctTurma.lista);
rotas.post("/turmas", ctTurma.grava);
//rotas.delete("/turmas", ctTurma.apaga);

//rotas.get('/report', ReportController.show);

module.exports = rotas;

