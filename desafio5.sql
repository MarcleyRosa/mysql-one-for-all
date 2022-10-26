SELECT 
    m.music_name AS cancao, COUNT(h.music_id) AS reproducoes
FROM
    SpotifyClone.historic AS h
        INNER JOIN
    SpotifyClone.music AS m ON m.music_id = h.music_id
GROUP BY m.music_name
ORDER BY COUNT(h.music_id) DESC, m.music_name
LIMIT 2;