//  ---------------------------------------------------
//   módulo de configuração das rotas
//   .
//  ---------------------------------------------------
 
'use strict'

const express = require('express');

const ctAluno = require("../controles/ctAluno");
const ctTurma = require("../controles/ctTurma");
const ctAula = require("../controles/ctAula");

const rotas = express.Router();


rotas.get("/alunos", ctAluno.lista);
rotas.get("/turma/:id", ctAluno.listaAlunosTurma);
rotas.get("/aluno/:id", ctAluno.listaNumero);
rotas.post("/aluno", ctAluno.grava);

rotas.get("/aulas", ctAula.lista);
rotas.post("/aulas", ctAula.grava);

rotas.get("/turmas", ctTurma.lista);
rotas.post("/turmas", ctTurma.grava);
//rotas.delete("/turmas", ctTurma.apaga);

//rotas.get('/report', ReportController.show);

module.exports = rotas;

