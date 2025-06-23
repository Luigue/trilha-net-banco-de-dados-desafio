-- 1
SELECT F.Nome, F.Ano  FROM dbo.Filmes F;

-- 2
SELECT F.Nome, F.Ano, F.Duracao FROM dbo.Filmes F ORDER BY F.Ano;

-- 3
SELECT F.Nome, F.Ano, F.Duracao FROM dbo.Filmes F WHERE F.Nome = 'De Volta Para o Futuro';

-- 4
SELECT F.Nome, F.Ano, F.Duracao FROM dbo.Filmes F WHERE F.Ano = 1997;

-- 5
SELECT F.Nome, F.Ano, F.Duracao FROM dbo.Filmes F WHERE F.Ano > 2000;

-- 6
SELECT F.Nome, F.Ano, F.Duracao FROM dbo.Filmes F WHERE F.Duracao BETWEEN 100 AND 150;

-- 7
SELECT F.Ano, COUNT(Ano) AS Quantidade FROM dbo.Filmes F GROUP BY F.Ano ORDER BY Quantidade DESC;

-- 8
SELECT A.PrimeiroNome, A.UltimoNome FROM dbo.Atores A WHERE A.Genero = 'M';

-- 9
SELECT A.PrimeiroNome, A.UltimoNome FROM dbo.Atores A WHERE A.Genero = 'F' ORDER BY A.PrimeiroNome;

-- 10
SELECT F.Nome, G.Genero FROM dbo.Filmes F INNER JOIN dbo.FilmesGenero FG ON FG.IdFilme = F.Id INNER JOIN dbo.Generos G ON G.Id = FG.IdGenero;

-- 11
SELECT F.Nome, G.Genero FROM dbo.Filmes F INNER JOIN dbo.FilmesGenero FG ON FG.IdFilme = F.Id INNER JOIN dbo.Generos G ON G.Id = FG.IdGenero WHERE G.Genero = 'Mistério';

-- 12
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, EL.Papel FROM dbo.Filmes F INNER JOIN dbo.ElencoFilme EL ON F.Id = EL.IdFilme INNER JOIN dbo.Atores A ON A.Id = EL.IdAtor;