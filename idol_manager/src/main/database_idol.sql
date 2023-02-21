CREATE DATABASE idol_manager;
USE idol_manager;

CREATE TABLE idol
(

    id            INT AUTO_INCREMENT PRIMARY KEY,
    name          VARCHAR(50),
    gender        VARCHAR(10),
    date_of_birth VARCHAR(15),
    country       VARCHAR(50),
    skill         VARCHAR(50),
    img varchar(200)
);

CREATE TABLE customer
(
    id               INT AUTO_INCREMENT PRIMARY KEY,
    name             VARCHAR(50),
    date_of_birth    VARCHAR(50),
    gender           VARCHAR(10),
    email            VARCHAR(50),
    password         VARCHAR(30)
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
    INSERT INTO idol(name, gender, date_of_birth, country, img, skill)
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
        i.img       = popular,
        i.skill         = skill
    WHERE i.id = id;
END;
// DELIMITER ;

DELIMITER //
CREATE PROCEDURE delete_idol(id INT)
BEGIN
    SET FOREIGN_KEY_CHECKS = 0;
    DELETE
    FROM idol i
    WHERE i.id = id;
    SET FOREIGN_KEY_CHECKS = 1;
END;
// DELIMITER ;

call delete_idol(1);


# ---------INSERT DATA IN TABLE IDOL---------
INSERT INTO idol (name, gender, date_of_birth, country, skill, img)
VALUES ('Yua Mikami', 'Female', '1995-10-13', 'Japan ', 'Singing, Dancing, Songwriting','https://cdn.24h.com.vn/upload/4-2021/images/2021-10-30/Thien-than-phim-18--dau-gia-anh-nong-fan-do-xo-gianh-giat-chiec-ve-yua-mikami--1--1635606665-682-width660height825.jpg'),
       ('Emi Fukada', 'Female', '1993-06-26', 'Japan', 'Singing, Songwriting', 'https://image-us.eva.vn/upload/3-2021/images/2021-08-18/hau-truong-dong-phim-18-qua-loi-ke-cua-dan-my-nhan-hot-nhat-nhat-ban-1-1629257278-122-width650height811.jpg'),
       ('Melody Mark', 'Female', '1994-03-01', 'United States', 'Singing, Songwriting, Guitar' , 'https://p16-sign-va.tiktokcdn.com/tos-maliva-avt-0068/ed828eaad945c7b0bdaf51f0bf881e59~c5_720x720.jpeg?x-expires=1676973600&x-signature=sTyhw4iwohlkUI9lZHhuMkeGcJM%3D'),
       ('Tsukasa Aoi', 'Female', '1989-12-13', 'Japan', 'Singing, Songwriting, Guitar' ,'https://cdn.24h.com.vn/upload/3-2021/images/2021-08-10/tsukasa-aoi--17--1628610764-737-width650height813.jpg');


INSERT INTO customer (name, date_of_birth, gender, email, password)
VALUES ('John Doe', '1990-01-01', 'M', 'johndoe@example.com', 'password123'),
       ('Jane Smith', '1985-03-15', 'F', 'janesmith@example.com', 'password456'),
       ('Bob Johnson', '1975-07-10', 'M', 'bobjohnson@example.com', 'password789'),
       ('Sarah Lee', '1995-11-20', 'F', 'sarahlee@example.com', 'passwordabc'),
       ('Tom Brown', '1980-05-05', 'M', 'tombrown@example.com', 'passworddef'),
       ('Samantha Green', '1988-12-25', 'F', 'samanthagreen@example.com', 'passwordghi'),
       ('David Chen', '1992-09-01', 'M', 'davidchen@example.com', 'passwordjkl'),
       ('Emily Davis', '1987-04-12', 'F', 'emilydavis@example.com', 'passwordmno'),
       ('Mike Wilson', '1972-02-28', 'M', 'mikewilson@example.com', 'passwordpqr'),
       ('Lucy Kim', '1998-06-30', 'F', 'lucykim@example.com', 'passwordstu'),
       ('Lucy Kim', '1998-06-30', 'F', 'admin', 'admin');

DELIMITER //
CREATE PROCEDURE select_all_customer_by_name(IN name_find VARCHAR(10))
BEGIN
    SELECT * FROM customer WHERE name LIKE CONCAT('%', name_find, '%') ;
END;
// DELIMITER ;
call select_all_idol_by_name('');

select * from customer;

select * from idol;

 