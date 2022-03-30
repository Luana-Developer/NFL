#Melhor potencia e jogado!
SELECT * FROM combine;
SELECT a.nameFirst, b.CombineArm
FROM players as A
LEFT JOIN combine as B
                on a.playerId = b.playerId
                ORDER BY combineHand DESC;
#############################################################################

#Pergunta (dentro da tabela mostra os melhores resultados de combineHand "Avaliações individuais dos atletas" )
#SELECT * FROM combine ;#
#SELECT * FROM players ;#          
#SELECT combineHand FROM combine;#
#ORDER BY combineHand DESC;#
#select * from combine where combineHand = 11.75;#

#Pergunta
SELECT * FROM combine;

SELECT a.nameFirst, b.CombineHand
FROM players as A
INNER JOIN combine as B
                on a.playerId = b.playerId
                ORDER BY combineHand DESC;
# melhor resultado de combineHand

#Pergunta (dentro da tabela mostra os piores resultados de combineHand "Avaliações individuais dos atletas" )
SELECT a.nameFirst, b.CombineHand
FROM players as A
INNER JOIN combine as B
                on a.playerId = b.playerId
                ORDER BY combineHand ASC;

#select * from combine where combineHand = 7.5;#
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
select * from players;
SELECT homeCountry, COUNT('homeCountry') AS registros
FROM players 
GROUP BY homeCountry ;
# Quantidade comparativa de jogadores de todos os Paises que passaram na NFL!

SELECT homeCountry, COUNT('homecountry') AS registros
FROM players
GROUP BY homeCountry having COUNT('homecountry') >"10";
# Quantidade comparativa maior quantidade que 10 jogadores de todos os Paises que passaram na NFL!

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

