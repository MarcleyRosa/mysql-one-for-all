SELECT 
    a.artist_name AS artista, al.album_name AS album, COUNT(f.user_id) AS seguidores
FROM
    SpotifyClone.follow AS f
        INNER JOIN
    SpotifyClone.artist AS a ON f.artist_id = a.artist_id
        INNER JOIN
    SpotifyClone.album AS al ON al.artist_id = a.artist_id
    GROUP BY al.album_name, a.artist_name
    ORDER BY COUNT(f.user_id) DESC, a.artist_name, al.album_name; 