// -------------------------------------------------
// CONTROLE = Módulo com as funções para acesso 
// aos registros da tabela:
// listar; buscar; editar e apagar    
// -------------------------------------------------

'use strict'

const Turma = require('../modelos/mdTurma');

module.exports = {

    async lista(req, res) {
        try {
            console.log("listei turma");
            const turmas = await Turma.findAll();
            return res.json(turmas);
        } catch (error) {
            console.log("turmas NAO listadas");
            console.log(error);
        }
    },

    async grava(req, res) {
        console.log("gravei turma");
        const {
            turma
        } = req.body;
        const turma = await Turma.create({
            turma
        });
        return res.json(turma);
    }
};