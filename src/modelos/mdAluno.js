// -------------------------------------------------
// MODELO = Módulo para a "formatação" da tabela 
// indicando seu nome, respectivos campos, suas 
// características (nome, tipo, tamanho, etc) 
// e relacionamentos com outras tabelas
// -------------------------------------------------

const db = require("../database/conexao");
const turma = require("./mdTurma")

const Aluno = db.conect.define('alunos', {

    nome: {
        type: db.Sequelize.STRING(55),
        allowNull: false
      }
    }, {
      // options
      freezeTableName: true
   });
   turma.hasOne(Aluno); 

// belongsTo adiciona a relação à tabela na qual 
// você está chamando o método, 
// hasOne adiciona na tabela que é dada como argumento.

Aluno.sync();  // cria a tabela, caso ainda não exista.

module.exports = Aluno;
