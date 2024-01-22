-- 1
SELECT Nome, Ano FROM Filmes

-- 2
SELECT * FROM Filmes
ORDER BY Ano

-- 3
SELECT * FROM Filmes
WHERE Nome = 'De volta para o futuro'

-- 4
SELECT * FROM Filmes
WHERE Ano = 1997

-- 5
SELECT * FROM Filmes
WHERE Ano > 2000

-- 6
SELECT * FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

-- 7
SELECT  
	Ano,
	COUNT(*) Quantidade
FROM Filmes
GROUP BY  Ano
ORDER BY Quantidade DESC

-- 8
SELECT * FROM Atores
WHERE Genero = 'M'


-- 9
SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome


-- 10
SELECT Nome, Genero FROM Filmes, FilmesGenero INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Filmes.Id = FilmesGenero.IdFilme


-- 11
SELECT 
	Nome, 
	Genero 
FROM Filmes, FilmesGenero 
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id AND  Generos.Id = 10
WHERE Filmes.Id = FilmesGenero.IdFilme


-- 12
SELECT
	Nome,
	PrimeiroNome,
	UltimoNome,
	Papel
FROM Atores, Filmes
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
WHERE Atores.Id = ElencoFilme.IdAtor

