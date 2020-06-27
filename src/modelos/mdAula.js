// -------------------------------------------------
// MODELO = Módulo para a "formatação" da tabela 
// indicando seu nome, respectivos campos, suas 
// características (nome, tipo, tamanho, etc) 
// e relacionamentos com outras tabelas
// -------------------------------------------------

const db = require("../database/conexao");
const turma = require("./mdTurma")


const Aula = db.conect.define('aulas', {

    data: {
        type: db.Sequelize.DATEONLY,
        allowNull: false
    },
    codHabilidade: {
        type: db.Sequelize.STRING(12)
    },
    descricao: {
        type: db.Sequelize.STRING
    },
    entrega: {
        type: db.Sequelize.BOOLEAN
    }
}, {
    // options
    freezeTableName: true
});
turma.hasOne(Aula);

// belongsTo adiciona a relação à tabela na qual 
// você está chamando o método, 
// hasOne adiciona na tabela que é dada como argumento.

Aula.sync();

module.exports = Aula;