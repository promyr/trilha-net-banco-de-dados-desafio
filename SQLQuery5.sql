-- 1
SELECT 
	Nome,
	Ano
FROM Filmes;


-- 2 
SELECT
	Nome,
	Ano,
	Duracao
	FROM Filmes
	ORDER BY Ano ASC;


-- 3
SELECT
	Nome,
	Ano,
	Duracao	
FROM
	Filmes
WHERE
	Nome = 'De Volta para o Futuro';


--4
SELECT
	Nome,
	Ano,
	Duracao
FROM
	Filmes
WHERE 
	Ano = 1997;


--5
SELECT
	Nome,
	Ano,
	Duracao
FROM
	Filmes
	WHERE 
	Ano >= 2000;


--6
SELECT
	Nome,
	Ano,
	Duracao
FROM
	Filmes
	WHERE 
	Duracao BETWEEN 101 AND 150
ORDER BY  Duracao ASC;


--7
SELECT
	Ano,
	COUNT(Ano) AS Quantidade
FROM
	Filmes
	GROUP BY 
	Ano
	
ORDER BY
	Quantidade DESC;


--8
SELECT
	Id,
    PrimeiroNome,
    UltimoNome,
	Genero
FROM
    Atores
WHERE 
    Genero = 'M'
GROUP BY
    PrimeiroNome, UltimoNome, Id, Genero
ORDER BY
    Id;


--9
SELECT
	Id,
    PrimeiroNome,
    UltimoNome,
	Genero
FROM
    Atores
WHERE 
    Genero = 'F'
GROUP BY
    PrimeiroNome, UltimoNome, Id, Genero
ORDER BY
    PrimeiroNome;


--10
SELECT
	Filmes.Nome AS Filme,
	Generos.Genero AS Genero

FROM
	Filmes
INNER JOIN
	Generos ON Generos.Genero = Generos.Genero;


--11
SELECT
	Filmes.Nome AS Filme,
	Generos.Genero AS Genero

FROM
	Filmes

INNER JOIN
	Generos ON Generos.Genero = Generos.Genero
WHERE
    Generos.Genero = 'Mistério';


--12
SELECT
	Filmes.Nome AS Nome,
    Atores.PrimeiroNome AS PrimeiroNome,
    Atores.UltimoNome AS UltimoNome,
	ElencoFilme.Papel AS Papel
FROM
    Filmes,
	Atores,
	ElencoFilme
GROUP BY
    Nome,PrimeiroNome, UltimoNome, Papel

