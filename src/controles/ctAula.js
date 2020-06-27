const Aula = require('../modelos/mdAula');

 module.exports = {

     async lista(req, res) {
         console.log("listei aula");
         const aulas = await Aula.findAll();
         return res.json(aulas);
     },
        
     async grava(req, res) {
         console.log("gravei aula");
         const { nome, email } = req.body;
         const cliente = await Cliente.create({ nome, email});
         return res.json(cliente);
     }
};