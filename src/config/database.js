// exporta um {objeto} de configurações para o db

module.exports = {
     dialect: 'mysql',

    // host: 'localhost',
    // username: 'root',
    // password: '',
    // //password: '123456',
    // database: 'teste001',

       host: 'mysql669.umbler.com',
       port: 41890,
       username: 'sqlallex',
       password: 'SQL123456',
       database: 'moroniteste',

    define: {
        timestamps: true,   // todas as tabelas terão  createdAt & updateAt
        //underscored: true,  //  snak_case
    },
}