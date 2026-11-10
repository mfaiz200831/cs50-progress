SELECT first_name, last_name, weight AS "Player Weight"
FROM players
WHERE birth_country = 'USA'
ORDER BY weight DESC;


