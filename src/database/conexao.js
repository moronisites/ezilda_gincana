// -------------------------------------------------
// Este módulo cria as tabelas de acordo com seus 
// MODELOS, caso elas não existam (.sync());
// as inicializam (.init());
// faz as associações (.associate);
// faz a conexão do db por meio do sequelize
// usando os dados de configuraçlão presentes
// no arquivo ../config/database.js
// e exporta esta conexão em conect.
//
// -------------------------------------------------

'use strict'

// -------- Importa os módulos necessários ---------
const Sequelize = require("sequelize");          
const dbConfig = require("../config/database");  

const Turma = require("../modelos/mdTurma");
const Aluno = require("../modelos/mdAluno");
const Aula = require("../modelos/mdAula");
// -------------------------------------------------

const conect = new Sequelize(dbConfig); // "ativa" a conexão 

Turma.init(conect);
Aluno.init(conect);
Aula.init(conect);

Aluno.associate(conect);

Turma.sync(conect);
Aluno.sync(conect);
Aula.sync(conect);

 module.exports = {
     Sequelize: Sequelize,
     conect: conect
 }