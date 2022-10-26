SELECT 
    a.artist_name AS artista, al.album_name AS album
FROM
    SpotifyClone.album AS al
        INNER JOIN
    SpotifyClone.artist AS a ON al.artist_id = a.artist_id
WHERE
    artist_name = 'Elis Regina'