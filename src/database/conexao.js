// -------------------------------------------------
// faz a conexão do db por meio do sequelize
// usando os dados de configuraçlão presentes
// no arquivo ../config/database.js
// e exporta esta conexão em conect
// -------------------------------------------------

// -------- Importa os módulos necessários ---------
const Sequelize = require("sequelize");          
const dbConfig = require("../config/database");  
const Turma = require("../modelos/mdTurma");
const Aluno = require("../modelos/mdAluno");
const Aula = require("../modelos/mdAula");
// -------------------------------------------------

const conect = new Sequelize(dbConfig); // "ativa" a conexão 

//Turma.sync();
//Aluno.sync();
//Aula.sync();


// ---------------- ERRO --------------------------
// ////  //const {Model, DataTypes }  = require("sequelize"); 


 module.exports = {
     Sequelize: Sequelize,
     conect: conect
 }