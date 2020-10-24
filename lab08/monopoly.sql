--
-- This SQL script builds a monopoly database, deleting any pre-existing version.
--
-- @author kvlinden
-- @version Summer, 2015
-- @modified by gnawnahtan, FA20

-- Drop previous versions of the tables if they they exist, in reverse order of foreign keys.
DROP TABLE IF EXISTS PlayerGame;
DROP TABLE IF EXISTS Game;
DROP TABLE IF EXISTS Player;

-- Create the schema.
CREATE TABLE Game
(
	ID integer PRIMARY KEY,
	time timestamp
);

CREATE TABLE Player
(
	ID integer PRIMARY KEY,
	emailAddress varchar(50) NOT NULL,
	name varchar(50)
);

CREATE TABLE PlayerGame
(
	gameID integer REFERENCES Game(ID),
	playerID integer REFERENCES Player(ID),
	score integer,
	--Added by gnawnahtan--
	cash integer,
	piecePosition varchar(50)
);

CREATE TABLE PlayerGameProperties
(
	propertyTitle varchar(50),
	houses integer,
	hotels integer,
	playerID integer REFERENCES Player(ID),
	gameID integer REFERENCES Game(ID)
);

-- Allow users to select data from the tables.
GRANT SELECT ON Game TO PUBLIC;
GRANT SELECT ON Player TO PUBLIC;
GRANT SELECT ON PlayerGame TO PUBLIC;
--GRANTS added by gnawnahtan--
GRANT SELECT ON PlayerGameProperties TO PUBLIC;

-- Add sample records.
INSERT INTO Game
VALUES
	(1, '2006-06-27 08:00:00');
INSERT INTO Game
VALUES
	(2, '2006-06-28 13:20:00');
INSERT INTO Game
VALUES
	(3, '2006-06-29 18:41:00');

INSERT INTO Player
	(ID, emailAddress)
VALUES
	(1, 'me@calvin.edu');
INSERT INTO Player
VALUES
	(2, 'king@gmail.edu', 'The King');
INSERT INTO Player
VALUES
	(3, 'dog@gmail.edu', 'Dogbreath');

INSERT INTO PlayerGame
VALUES
	(1, 1, 0.00);
INSERT INTO PlayerGame
VALUES
	(1, 2, 0.00);
INSERT INTO PlayerGame
VALUES
	(1, 3, 2350.00);
INSERT INTO PlayerGame
VALUES
	(2, 1, 1000.00);
INSERT INTO PlayerGame
VALUES
	(2, 2, 0.00);
INSERT INTO PlayerGame
VALUES
	(2, 3, 500.00);
INSERT INTO PlayerGame
VALUES
	(3, 2, 0.00);
INSERT INTO PlayerGame
VALUES
	(3, 3, 5500.00);

-- Sample records added by gnawnahtan--
INSERT INTO Game
VALUES
	(4, '2020-10-15 15:26:00');

INSERT INTO Game
VALUES
	(5, '2020-10-15 15:31:00');

INSERT INTO Player
VALUES
	(4, 'mario@gmail.edu', 'Mario');
INSERT INTO Player
VALUES
	(5, 'luigi@gmail.edu', 'Luigi');

INSERT INTO PlayerGame
VALUES
	(4, 4, 450.00, 2875.00, 'Boardwalk');

INSERT INTO PlayerGame
VALUES
	(5, 4, 505.00, 3875.00, 'FREE PARKING');

INSERT INTO PlayerGame
VALUES
	(5, 5, 675.00, 2560.00, 'JAIL');

INSERT INTO PlayerGameProperties
VALUES
	('Boardwalk', 3, 1, 4, 4);

INSERT INTO PlayerGameProperties
VALUES
	('RainbowRailroad', 4, 0, 4, 4);

INSERT INTO PlayerGameProperties
VALUES
	('BalticAve', 0, 1, 5, 4);

INSERT INTO PlayerGameProperties
VALUES
	('IndianaAve', 3, 1, 5, 4);

INSERT INTO PlayerGameProperties
VALUES
	('Boardwalk', 3, 1, 4, 5);