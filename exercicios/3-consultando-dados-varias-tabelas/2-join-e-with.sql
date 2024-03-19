-- Crie uma consulta para realizar inner join com as tabelas "tracks", "albums" e "artists"
SELECT 
tracks.TrackId,
tracks.Name,
albums.Title,
artists.Name
FROM tracks
INNER JOIN albums ON tracks.AlbumId = albums.AlbumId
INNER JOIN artists ON albums.ArtistId = artists.ArtistId

-- Refatore a consulta anterior usando a cláusula "with" e verifique o total de músicas existente na base de terminado artista, ex: Caetano Veloso
WITH musica AS (
SELECT 
tracks.TrackId as id,
tracks.Name as musica,
albums.Title as album,
artists.Name as artista
FROM tracks
INNER JOIN albums ON tracks.AlbumId = albums.AlbumId
INNER JOIN artists ON albums.ArtistId = artists.ArtistId)

SELECT artista,
COUNT (musica) as qnt_musicas
FROM musica
WHERE artista LIKE 'Caetano%';


