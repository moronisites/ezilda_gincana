// -------------------------------------------------
// CONTROLE = Módulo com as funções para acesso 
// aos registros da tabela:
// listar; buscar; editar e apagar 
// -------------------------------------------------

'use strict'

const bdconect = require("../database/conexao");
const Aluno = require('../modelos/mdAluno');
const Tarefa = require('../modelos/mdTarefa');
const TarefaAluno = require('../modelos/mdTarefaAluno');

module.exports = {
    
    
    async lista(req, res) {
        
        function buscaTarefa(erro,conteudo){
            
        };
        
        var listatarefas = [];
        // inicio - função para buscar tarefa por aluno ----------------------------------------------------------
        // parametros:
        // id do aluno e id da tarefa
        //
        const tarefaPorAluno = async(alunoId,tarefaId,indAl) =>{
            const tarefasAluno = await TarefaAluno.findAll({ raw: true, where: {idAluno: alunoId, idTarefa: tarefaId}});
            let tarefa = [indA,indAl," -> ",alunoId,tarefaId," Não Enntregue",0];
            if (tarefasAluno.length > 0) {
                tarefa = [indA,indAl,alunoId,tarefaId,tarefasAluno[0].dataEntrega,tarefasAluno[0].conceito];
            }
            listatarefas[indAl] = tarefa;
            console.log(" ------------- este veio --------------> ",indA,listatarefas[indAl]);
            process.stdout.write('ok=============================');
//listatarefas.push(tarefa);
            //console.log(tarefa);
            return tarefa;
        }
        // fim - função para buscar tarefa por aluno ----------------------------------------------------------
 
 
    
        try {
            const alunos = await Aluno.findAll({ raw: true });
            const tarefas = await Tarefa.findAll({ raw: true, order: [["dataPedida"]] });
            let tarefasTotal = tarefas.length;
            console.log(tarefasTotal);
            var colunas = [""];
            //var listatarefas = [[],[]];
            var listaFinal = [];
            tarefas.forEach((elementTr, indexTr, arrayTr) => {
                colunas.push("{dataPed: " + tarefas[indexTr].dataPedida + ", idTarefa: " + tarefas[indexTr].id + "}");
            });
            //-----------------------------------
            //para retornar em json: 
            //let listaAlunos = res.json(alunos);
            //return listaAlunos;
            //-----------------------------------
            var indA = -1;
            alunos.forEach((elementAl, indexAl, arrayAl) => {
                indA = indA + 1;
                var alunosTotal = alunos.length;
                var alunoId = alunos[indexAl].id;
                var alunoNome = alunos[indexAl].nome;
                var alunoNumero = alunos[indexAl].numero;
                try {
                    var indT = -1; 
                    tarefas.forEach(async(elementTr, indexTr, arrayTr) => {
                        indT = indT + 1;
                        tarefaPorAluno(alunoId,tarefas[indexTr].id,indA).then(veio => {
                            //console.log("--------------------> ",veio);
//                            listatarefas[indA] = veio;
//                            console.log(" ------------- este veio --------------> ",indA,indT,listatarefas[indA]);
                            });
                    });
                    console.table(listatarefas);
                    listaFinal.push(alunoNome,listatarefas,"xxxx");
                    //listatarefas = [];
                    //console.log("Nome do aluno ",alunos[index].nome, "  numero ",alunos[index].numero, "  turma ",alunos[index].idTurma);
                } catch (error) {
                    console.log(error);
                    return res.json("Erro ao listar as tarefas e os alunos");
                }
            });
            console.table(listaFinal); 
            console.table(colunas);
            console.table(listatarefas);
            return res.render('tabelaAlunos', {
                dadosDosAlunos: alunos
            });
        } catch (error) {
            console.log("alunos NAO listados");
            console.log(error);
            return res.json("Erro ao listar alunos");
        }
    },

    async listaAlunosTurma(req, res) {
        try {
            let busca = req.params.id;
            const alunos = await Aluno.findAll({
                raw: true,
                where: {
                    idTurma: busca
                }
            });

            //const tarefas = await TarefaDia.findAll({where:{idAluno: busca}});
            const tarefas = await TarefaAluno.findAll();

            return res.render('tabelaAlunos2', {
                dadosDosAlunos: alunos,
                dadosDasTarefas: tarefas,
                btt: "%><h1>teste</h1><%"
            });
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
            const alunos = await TarefaAluno.findAll({
                raw: true,
                attributes: ["idAluno", "dataPedida"],
                include: [Aluno],
                order: [
                    ["idAluno"],
                    ["dataPedida"]
                ]
            });
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
            console.log(nome, numero);
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

// ok -> const alunos = await Aluno.findAll({raw: true, attributes: ["id","nome","numero","idTurma"]});
// alunos.forEach(() => console.log({alunos}));

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

// ok -> console.log(tarefasAluno);
// ok -> console.log(tarefasAluno.length);
// ok -> console.log(tarefasAluno[0].idAluno);


            //    console.log("#######################################################");
            //    console.log(alunoId, " - ", tarefaId, " - ", tarefasAluno[0].dataEntrega, " - ", tarefasAluno[0].conceito);
            //} else {
            //    console.log(".......................................................");
            //    //listatarefas.push("Não Entregue");
