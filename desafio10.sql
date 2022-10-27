SELECT 
    m.music_name AS nome, COUNT(m.music_name) AS reproducoes
FROM
    SpotifyClone.user AS u
        INNER JOIN
    SpotifyClone.historic AS h ON u.user_id = h.user_id
    INNER JOIN SpotifyClone.music AS m ON h.music_id = m.music_id
WHERE
    u.plan_id = 1 OR u.plan_id = 4
    GROUP BY m.music_name
    ORDER BY m.music_name;