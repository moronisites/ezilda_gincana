// -------------------------------------------------
// MODELO = Módulo para a "formatação" da tabela 
// indicando seu nome, respectivos campos, suas 
// características (nome, tipo, tamanho, etc) 
// e relacionamentos com outras tabelas
// -------------------------------------------------

const {
  Model,
  DataTypes
} = require('sequelize');

class Turma extends Model {
  static init(sequelize) {
    super.init({
      turma: DataTypes.STRING(10),
    }, {
      freezeTableName: true,
      tableName: 'turma',
      sequelize
    })
  }

  // static associate(models) {
  //   this.hasMany(models.Address, {
  //     foreignKey: 'user_id',
  //     as: 'addresses'
  //   });
  //   this.belongsToMany(models.Tech, {
  //     foreignKey: 'user_id',
  //     through: 'user_techs',
  //     as: 'techs'
  //   });
  // }
}

module.exports = Turma;