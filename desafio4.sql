SELECT 
    u.user_name AS usuario,
    CASE
        WHEN MAX(YEAR(h.music_date)) >= 2021 THEN 'Usuário ativo'
        ELSE 'Usuário inativo'
    END AS status_usuario
FROM
    SpotifyClone.user AS u
        INNER JOIN
    SpotifyClone.historic AS h ON u.user_id = h.user_id
GROUP BY u.user_name
ORDER BY u.user_name;