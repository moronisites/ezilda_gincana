// exporta um {objeto} de configurações para o db

module.exports = {
     dialect: 'mysql',
     
// ===  configuração Lenovo  ===
     host: 'localhost',
     username: 'root',
     password: '123456',
     database: 'escola02',
//=== === === === === === === ===  

//// ===  configuração DeskTop  ===
//      host: 'localhost',
//      username: 'root',
//      password: '',
//      database: 'teste001',
////=== === === === === === === ===  
  
//// ===  configuração Umbler  ===
//      host: 'mysql669.umbler.com',
//      port: 41890,
//      username: 'sqlallex',
//      password: 'SQL123456',
//      database: 'moroniteste',
////=== === === === === === === ===  

    define: {
        timestamps: true,   // todas as tabelas terão  createdAt & updateAt
        //underscored: true,  //  snak_case
    },
}