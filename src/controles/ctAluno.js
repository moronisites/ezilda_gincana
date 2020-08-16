// -------------------------------------------------
// CONTROLE = Módulo com as funções para acesso 
// aos registros da tabela:
// listar; buscar; editar e apagar 
// -------------------------------------------------

'use strict'

const bdconect = require("../database/conexao");    
const Aluno = require('../modelos/mdAluno');
const TarefaDia = require('../modelos/mdTarefaAluno');

module.exports = {

    async lista(req, res) {
        try {
            //const alunos = await Aluno.findAll({raw: true, attributes: ["id","nome","numero","idTurma"]});
            const alunos = await Aluno.findAll({raw: true});
           
            //-----------------------------------
            //para retornar em json: 
            //let listaAlunos = res.json(alunos);
            //return listaAlunos;
            //-----------------------------------
            
            
            // alunos.forEach(() => console.log({alunos}));

            alunos.forEach((element, index, array) => {
                
                console.log("Nome do aluno ",alunos[index].nome, "  numero ",alunos[index].numero, "  turma ",alunos[index].idTurma);
                
                
                }
            );
            
            return res.render('tabelaAlunos', {dadosDosAlunos: alunos });
        } catch (error) {
            console.log("alunos NAO listados");
            console.log(error);
            return res.json("Erro ao listar alunos");
        }
    },

    async listaAlunosTurma(req, res) {
        try {
            let busca = req.params.id;
            const alunos = await Aluno.findAll({ raw: true, where:{idTurma: busca}});
            
            const tarefas = await TarefaDia.findAll({where:{idAluno: 18}});
            return res.render('tabelaAlunos', {dadosDosAlunos: alunos, dadosDasTarefas: tarefas });
        } catch (error) {
            console.log("alunos NAO listados");
            console.log(error);
            return res.json("Erro ao listar alunos");
        }
    },

    async listaNumero(req, res) {
        try {
            let busca = req.params.id;
            

            // erro -> const alunos = await TarefaDia.findAll({raw: true, attributes: ["idAluno","dataPedida"], include: [Aluno.findAll({raw: true, attributes: ["id","nome","numero","idTurma"]})], order: [["dataPedida"]]});
            const alunos = await TarefaDia.findAll({raw: true, attributes: ["idAluno","dataPedida"], include: [Aluno], order: [["idAluno"],["dataPedida"]]});
            //const alunos = await TarefaDia.findAll({raw: true, include: [Aluno], order: [["dataPedida"]]});
 

            console.log("LISTEI por NUMERO DO ALUNO");
            console.log(req.params.id);
            let listaAlunos = res.json(alunos);
            return listaAlunos;
            //return res.render('tabelaAlunos', {dadosDosAlunos: alunos });
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
            // Aluno.create cria um novo registro na tabela aluno, 
            // baseado nos parametros indicados no arquivo mdAluno 
            // e nos dados vindos de req.body
            const alunor = await Aluno.create({
                nome,
                numero,
                idTurma
            });
            console.log(nome,numero);
            console.log(req.body);
            return res.json(alunor);
        } catch (error) {
            console.log("aluno NAO Gravado");
            console.log(error);
            return res.json("Erro ao gravar aluno");
        };
    }
};


// =================== seção dos descartes ======================================

// var table = document.getElementById('tablePesquisa');
// var row = table.insertRow(1);
// row.innerHTML = "<td>"+nome+"</td> <td>"+local+"</td><td>"+cidade+"</td><td>"+status+"</td>";

// ok -> const alunos = await TarefaDia.findAll({where:{idAluno: busca}});
// ok -> const alunos = await bdconect.conect.query("SELECT * FROM alunos AL LEFT OUTER JOIN tarefaDia TD ON AL.id = TD.idAluno");
// ok -> const alunos = await bdconect.conect.query("SELECT * FROM alunos AL LEFT OUTER JOIN tarefaDia TD ON AL.id = TD.idAluno ORDER BY TD.dataPedida, AL.numero");
// ok -> const alunos = await bdconect.conect.query("SELECT * FROM alunos AL LEFT OUTER JOIN tarefaDia TD ON AL.id = TD.idAluno UNION SELECT * FROM alunos AL RIGHT OUTER JOIN tarefaDia TD ON AL.id = TD.idAluno");
            
// erro const alunos = await Aluno.findAll({where:{idTurma: busca}, include: [TarefaDia.findAll()] });
// erro const alunos = await TarefaDia.findAll({include: [Aluno.findAll({order: [["nome"]]})], order: [["dataPedida"]]});

//--v--este funciona mas só na ordem de dataPedida-----------------------------------------
//  const alunos = await TarefaDia.findAll({include: [Aluno], order: [["dataPedida"]]});
//--^--este funciona mas só na ordem de dataPedida-----------------------------------------

            // OK -> const alunos = await bdconect.conect.query("SELECT AL.numero, AL.nome, AL.id, TD.dataPedida, TD.dataEntrega, TD.idAluno FROM alunos AL LEFT OUTER JOIN tarefaDia TD ON AL.id = TD.idAluno UNION SELECT AL.numero, AL.nome, AL.id, TD.dataPedida, TD.dataEntrega, TD.idAluno FROM alunos AL RIGHT OUTER JOIN tarefaDia TD ON AL.id = TD.idAluno");
            // ok -> const todosalunos = await bdconect.conect.query("CREATE OR REPLACE VIEW tabelaTarefas AS SELECT AL.numero, AL.nome, AL.id, TD.dataPedida, TD.dataEntrega, TD.idAluno FROM alunos AL LEFT OUTER JOIN tarefaDia TD ON AL.id = TD.idAluno UNION SELECT AL.numero, AL.nome, AL.id, TD.dataPedida, TD.dataEntrega, TD.idAluno FROM alunos AL RIGHT OUTER JOIN tarefaDia TD ON AL.id = TD.idAluno");
            // ok -> const alunos = await bdconect.conect.query("SELECT nome, dataPedida FROM tabelaTarefas ORDER BY numero, dataPedida");

            // ok -> const alunos = await bdconect.conect.query("SELECT * FROM tarefaDia TD LEFT OUTER JOIN alunos AL ON AL.id = TD.idAluno");
 