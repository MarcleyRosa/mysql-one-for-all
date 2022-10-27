SELECT 
    music_name AS nome_musica,
    CASE
        WHEN music_name = 'The Bard’s Song' THEN REPLACE(music_name, 'Bard', 'QA')
        WHEN music_name = 'Como Nossos Pais' THEN REPLACE(music_name, 'Pais', 'Pull Requests')
        WHEN music_name = 'BREAK MY SOUL' THEN REPLACE(music_name, 'SOUL', 'CODE')
        WHEN music_name = 'ALIEN SUPERSTAR' THEN REPLACE(music_name, 'SUPERSTAR', 'SUPERDEV')
        WHEN
            music_name = 'O Medo de Amar é o Medo de Ser Livre'
        THEN
            REPLACE(music_name,
                'Amar',
                'Code Review')
    END AS novo_nome
FROM
    SpotifyClone.music
    ORDER BY novo_nome DESC LIMIT 5;