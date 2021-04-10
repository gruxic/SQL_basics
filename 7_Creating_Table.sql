/*CREATE*/
CREATE TABLE players(player_id SERIAL PRIMARY KEY, age SMALLINT NOT NULL);

CREATE TABLE account(
	user_id SERIAL PRIMARY KEY,
	user_name VARCHAR(50) UNIQUE NOT NULL,
	password VARCHAR(50) NOT NULL,
	email VARCHAR(250) UNIQUE NOT NULL,
	created_on TIMESTAMP NOT NULL,
	last_login TIMESTAMP
);

CREATE TABLE job(
	user_id INTEGER REFERENCES account(user_id)
	
);

/*INSERT*/
INSERT INTO account(user_name,password,email,created_on)
VALUES
('ganduj','ganur','ganesh@ruj.com',CURRENT_TIMESTAMP)


/*UPDATE*/
UPDATE account
SET last_login = CURRENT_TIMESTAMP

UPDATE account
SET last_login = CURRENT_TIMESTAMP
RETURNING email,created_on,last_login

/*DELETE*/
DELETE FROM account
WHERE email= '%ruju%'
RETURNING user_name,email


/*ALTER TABLE*/
ALTER TABLE job
RENAME COLUMN person TO people

ALTER TABLE job
ALTER COLUMN people DROP NOT NULL

/*DROP*/
ALTER TABLE new_info
DROP COLUMN people