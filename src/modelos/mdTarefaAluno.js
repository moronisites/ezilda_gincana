// -------------------------------------------------
// MODELO = Módulo para a "formatação" da tabela 
// indicando seu nome, respectivos campos, suas 
// características (nome, tipo, tamanho, etc) 
// e relacionamentos com outras tabelas 
// -------------------------------------------------

'use strict'

const Aluno = require("./mdAluno");
const Tarefa = require("./mdTarefa");

const {
  Model,
  DataTypes
} = require('sequelize');

class TarefaAluno extends Model {
  static init(sequelize) {
    super.init({
      dataEntrega: DataTypes.DATEONLY,
      conceito: DataTypes.FLOAT,
      obs: DataTypes.STRING(250),
    }, {
      freezeTableName: true,
      tableName: 'tarefaAluno',
      sequelize
    })
  }

  // belongsTo adiciona a relação à tabela na qual 
  // você está chamando o método, 
  // hasOne adiciona na tabela que é dada como argumento.

  static associate(models) {
    this.belongsTo(Aluno, {
      foreignKey: "idAluno"
    });
    this.belongsTo(Tarefa, {
      foreignKey: "idTarefa"
    });
  }

}

module.exports = TarefaAluno;