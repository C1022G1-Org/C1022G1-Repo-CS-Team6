CREATE DATABASE idol_manager;
USE idol_manager;

CREATE TABLE idol
(
    id            INT AUTO_INCREMENT PRIMARY KEY,
    name          VARCHAR(50),
    gender        VARCHAR(10),
    date_of_birth VARCHAR(15),
    country       VARCHAR(50),
    popular       VARCHAR(50),
    skill         VARCHAR(50)
);

CREATE TABLE customer
(
    id               INT AUTO_INCREMENT PRIMARY KEY,
    customer_type_id INT,
    name             VARCHAR(50),
    date_of_birth    VARCHAR(50),
    gender           VARCHAR(10),
    email            VARCHAR(50),
    password         VARCHAR(30),
    FOREIGN KEY (customer_type_id) REFERENCES customer_type (id)
);

CREATE TABLE customer_type
(
    id        INT PRIMARY KEY,
    type_name VARCHAR(15)
);

CREATE TABLE favourite
(
    id              INT AUTO_INCREMENT PRIMARY KEY,
    name            VARCHAR(50),
    number_of_likes INT,
    idol_id         INT,
    customer_id     INT,
    FOREIGN KEY (idol_id) REFERENCES idol (id),
    FOREIGN KEY (customer_id) REFERENCES customer (id)
);

DELIMITER //
CREATE PROCEDURE select_all_idol_by_name(IN name_find VARCHAR(10))
BEGIN
    SELECT * FROM idol WHERE name LIKE CONCAT('%', name_find, '%') ;
END;
// DELIMITER ;
call select_all_idol_by_name('');

DELIMITER //
CREATE PROCEDURE add_idols(
    name VARCHAR(50),
    gender VARCHAR(10),
    date_of_birth VARCHAR(15),
    country VARCHAR(50),
    popular VARCHAR(50),
    skill VARCHAR(50)
)
BEGIN
    INSERT INTO idol(name, gender, date_of_birth, country, popular, skill)
    VALUES (name, gender, date_of_birth, country, popular, skill);
END;
// DELIMITER ;

DELIMITER //
CREATE PROCEDURE update_idol_by_id(
    name VARCHAR(50),
    gender VARCHAR(10),
    date_of_birth VARCHAR(15),
    country VARCHAR(50),
    popular VARCHAR(50),
    skill VARCHAR(50)
)
BEGIN
    UPDATE idol i
    SET i.name          = name,
        i.gender        = gender,
        i.date_of_birth = date_of_birth,
        i.country       = country,
        i.popular       = popular,
        i.skill         = skill
    WHERE i.id = id;
END;
// DELIMITER ;

DELIMITER //
CREATE PROCEDURE delete_idol(id INT)
BEGIN
    DELETE
    FROM idol i
    WHERE i.id = id;
END;
// DELIMITER ;


# ---------INSERT DATA IN TABLE IDOL---------
INSERT INTO idol (name, gender, date_of_birth, country, popular, skill)
VALUES ('BTS Jimin', 'Male', '1995-10-13', 'South Korea', 'K-Pop Singer/Dancer', 'Singing, Dancing, Songwriting'),
       ('Ariana Grande', 'Female', '1993-06-26', 'United States', 'Singer/Actress', 'Singing, Songwriting'),
       ('Justin Bieber', 'Male', '1994-03-01', 'Canada', 'Singer/Songwriter', 'Singing, Songwriting, Guitar'),
       ('Taylor Swift', 'Female', '1989-12-13', 'United States', 'Singer/Songwriter', 'Singing, Songwriting, Guitar'),
       ('Harry Styles', 'Male', '1994-02-01', 'United Kingdom', 'Singer/Songwriter/Actor',
        'Singing, Songwriting, Guitar'),
       ('Blackpink Jennie', 'Female', '1996-01-16', 'South Korea', 'K-Pop Singer/Rapper', 'Singing, Rapping, Dancing'),
       ('Shawn Mendes', 'Male', '1998-08-08', 'Canada', 'Singer/Songwriter', 'Singing, Songwriting, Guitar'),
       ('Billie Eilish', 'Female', '2001-12-18', 'United States', 'Singer/Songwriter', 'Singing, Songwriting'),
       ('Jungkook', 'Male', '1997-09-01', 'South Korea', 'K-Pop Singer/Dancer', 'Singing, Dancing, Songwriting'),
       ('Dua Lipa', 'Female', '1995-08-22', 'United Kingdom', 'Singer/Songwriter', 'Singing, Songwriting'),
       ('Zayn Malik', 'Male', '1993-01-12', 'United Kingdom', 'Singer/Songwriter/Actor', 'Singing, Songwriting'),
       ('Selena Gomez', 'Female', '1992-07-22', 'United States', 'Singer/Actress', 'Singing, Acting'),
       ('EXO Baekhyun', 'Male', '1992-05-06', 'South Korea', 'K-Pop Singer', 'Singing'),
       ('Beyoncé', 'Female', '1981-09-04', 'United States', 'Singer/Actress', 'Singing, Acting, Dancing'),
       ('Ed Sheeran', 'Male', '1991-02-17', 'United Kingdom', 'Singer/Songwriter', 'Singing, Songwriting, Guitar'),
       ('IU', 'Female', '1993-05-16', 'South Korea', 'K-Pop Singer/Actress', 'Singing, Acting'),
       ('Bruno Mars', 'Male', '1985-10-08', 'United States', 'Singer/Songwriter/Producer', 'Singing, Songwriting');

INSERT INTO customer_type(id, type_name)
VALUES (1,'DIAMOND'),
       (2,'GOLD'),
       (3,'SLIVER');

