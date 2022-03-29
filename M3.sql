#Pergunta (dentro da tabela mostra os melhores resultados de combineHand "Avaliações individuais dos atletas" )
SELECT combineHand FROM combine 
ORDER BY combineHand DESC;

select * from combine where combineHand = 11.75;
# melhor resultado de combineHand

#Pergunta (dentro da tabela mostra os piores resultados de combineHand "Avaliações individuais dos atletas" )
SELECT combineHand FROM combine 
ORDER BY combineHand ASC;

select * from combine where combineHand = 7.5;
# pior resultado de combineHand

#Pergunta (podem ser acrescentadas mais penalidades, coloquei 2 como ex)
SELECT penaltyDescrip, COUNT('defensive Holding') AS registros
FROM penalties
GROUP BY penaltyDescrip;
# Quantos registros de faltas Defensive Holding já teve ? 3935
# Quantos registros de faltas Offensive Holding já teve ? 13445

#Pergunta
select * from games where season <=2004;
# Qual foi a data e hora do primeiro jogo da NFL segundo a tabela games?

#Pergunta
select * from players where homeCountry = "Brazil";
# Quantos jogadores são Brasileiros na NFL?

#Pergunta
SELECT homeCountry, COUNT('USA') AS registros
FROM players
GROUP BY homeCountry;
# Quantidade comparativa de jogadores de todos os Paises que passaram na NFL!

#Pergunta
SELECT * FROM players where position = 'QB';
#Quantos Quaterbacks já tiveram no total? 711

#tabela
SELECT * FROM PASSER;
#Pergunta
SELECT passOutcomes, COUNT('complete') AS registros
FROM passer
GROUP BY passOutcomes;
# Quantos passes completo, inconpleto, intercepitado ou sack"derrubando quarterback" já foram feitos?

 



