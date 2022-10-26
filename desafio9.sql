SELECT 
    COUNT(h.music_id) AS quantidade_musicas_no_historico
FROM
    SpotifyClone.historic AS h
        INNER JOIN
    SpotifyClone.user AS u ON u.user_id = h.user_id
WHERE u.user_name = 'Barbara Liskov'
GROUP BY u.user_name;