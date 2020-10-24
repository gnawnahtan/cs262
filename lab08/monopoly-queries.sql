-- Get the number of Game records.
SELECT *
FROM Game
;

-- Get the player records.
SELECT *
FROM Player
;

-- Get all the users with Calvin email addresses.
SELECT *
FROM Player
WHERE emailAddress LIKE '%calvin%'
;

-- Get the highest score ever recorded.
SELECT score
FROM PlayerGame
ORDER BY score DESC
LIMIT 1
;

-- Get the cross-product of all the tables.
SELECT *
FROM Player
, PlayerGame, Game
;

--Exercise 8.1--
-- -- Retrieve a list of all the games, ordered by date with the most recent game coming first.
-- SELECT *
-- FROM Game
-- ORDER BY time DESC
-- ;
-- Retrieve all the games that occurred in the past week.
-- SELECT *
-- FROM Game
-- WHERE time >= NOW() - interval '7 days'
-- ;
-- -- Retrieve a list of players who have (non-NULL) names.
-- SELECT *
-- FROM Player
-- WHERE name IS NOT NULL
-- ;
-- -- Retrieve a list of IDs for players who have some game score larger than 2000.
-- SELECT playerid
-- FROM PlayerGame
-- WHERE score > 2000
-- ;
-- -- Retrieve a list of players who have GMail accounts.
-- SELECT *
-- FROM Player
-- WHERE emailAddress LIKE '%gmail%'
-- ;

-- Retrieve all “The King”’s game scores in decreasing order.
SELECT score
FROM Player, PlayerGame
WHERE Player.id = PlayerGame.playerid
  AND Player.name = 'The King'
ORDER BY score DESC
;
-- Retrieve the name of the winner of the game played on 2006-06-28 13:20:00.
SELECT name
FROM Game, PlayerGame, Player
WHERE Game.time = '2006-06-28 13:20:00'
  AND Game.id = PlayerGame.gameid
  AND Player.id = PlayerGame.playerid
ORDER BY score DESC
LIMIT 1
;
-- So what does that P1.ID < P2.ID clause do in the last example query?
-- It ensures that although the name is the same, it belongs to a different player with the same name (no doubles).


-- The query that joined the Player table to itself seems rather contrived. Can you think of a realistic situation in which you’d want to join a table to itself?
-- Self join could be used for situations in which you query data with hierarchy or you need to compare rows within a table. For example, in Monopoly, if you're wanting to find
-- a list of properties and to whom they belong, you could use self-join.
