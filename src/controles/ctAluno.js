// -------------------------------------------------
// CONTROLE = Módulo com as funções para acesso 
// aos registros da tabela:
// listar; buscar; editar e apagar 
// -------------------------------------------------

'use strict'

const Aluno = require('../modelos/mdAluno');

module.exports = {

    async lista(req, res) {
        try {
            const alunos = await Aluno.findAll();
            return res.json(alunos);
        } catch (error) {
            console.log("alunos NAO listados");
            console.log(error);
            return res.json("Erro ao listar alunos");
        }
    },

    async grava(req, res) {
        try {
            console.log("gravei aluno");
            const {
                nome,
                numero,
                idTurma
            } = req.body;
            const alunor = await Aluno.create({
                nome,
                numero,
                idTurma
            });
            return res.json(alunor);
        } catch (error) {
            console.log("aluno NAO Gravado");
            console.log(error);
            return res.json("Erro ao gravar aluno");
        };
    }
};