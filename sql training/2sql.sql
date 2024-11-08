use sakila;
DROP TABLE avengers;

DROP TABLE avengers_enemy;

DROP TABLE weapon;

create table avengers (
    ar_id int PRIMARY key AUTO_INCREMENT,
    f_name varchar(30),
    l_name varchar(30),
    heroic_name varchar(30),
    city varchar(30)
);

insert into
    avengers (
        f_name,
        l_name,
        heroic_name,
        city
    )
VALUES (
        'Roger',
        'Steve',
        'Captain America',
        'NYC'
    ),
    (
        'Tony',
        'Stark',
        'Iron Man',
        'NYC'
    ),
    (
        'Thor',
        'Odinson',
        'Thor',
        'NYC'
    ),
    (
        'Peter',
        'Parker',
        'Spider-Man',
        'NYC'
    ),
    (
        'Scott',
        'Lang',
        'Ant-Man',
        'California'
    ),
    (
        'Stephen',
        'Strange',
        'Dr.Strange',
        'Florida'
    ),
    (
        'James',
        'Barnes',
        'Winter Soldier',
        'California'
    );



create table avengers_enemy (
    ae_id int PRIMARY key AUTO_INCREMENT,
    enemy_name varchar(30),
    ar_id int,
    FOREIGN KEY (ar_id) REFERENCES avengers (ar_id)
);

INSERT INTO
    avengers_enemy (enemy_name, ar_id)
VALUES ('Armin Zola', 1),
    ('Doctor octopus', 4),
    ('Dormammu', 6),
    ('Electro', 4),
    ('Green Goblin', 4),
    ('Red Skull', 1),
    ('Obadiah Stane', 2),
    ('Hela', 3);

INSERT INTO
    avengers_enemy (enemy_name)
VALUES ('Gorr'),
    ('Whiplash'),
    ('zemo');



create table weapon (
    wp_id int PRIMARY key AUTO_INCREMENT,
    weapon_name varchar(30),
    ar_id int,
    ae_id int,
    FOREIGN key (ar_id) REFERENCES avengers (ar_id),
    FOREIGN key (ae_id) REFERENCES avengers_enemy (ae_id)
);

insert into weapon (weapon_name, ar_id, ae_id)
VALUES ('web', 4, 2),
    ('pym particle', 5, null),
    ('magic', 6, 3),
    ('shield', 1, 6),
    ('suit', 2, 7),
    ('milonir', 3, 8),
    ('vibranium Hand', null, null);

SELECT *  FROM avengers;
SELECT *  FROM avengers_enemy;
SELECT *  FROM weapon;

select heroic_name,enemy_name from avengers
INNER JOIN avengers_enemy
ON avengers.ar_id=avengers_enemy.ar_id;

select heroic_name,enemy_name,weapon_name from avengers
natural join avengers_enemy
inner join weapon
on avengers.ar_id=weapon.ar_id;

USE sakila;

-- left join --
select a.heroic_name,ae.enemy_name from avengers as a
left join avengers_enemy as ae
on a.ar_id=ae.ar_id;

-- right join --
select ae.heroic_name,a.enemy_name from avengers_enemy as a
right join avengers as ae
on a.ar_id=ae.ar_id;

-- union --
select a.heroic_name,ae.enemy_name from avengers as a
left join avengers_enemy as ae
on a.ar_id=ae.ar_id
union
select a.heroic_name,ae.enemy_name from avengers as a
right join avengers_enemy as ae
on a.ar_id=ae.ar_id;

-- union all --
select a.heroic_name,ae.enemy_name from avengers as a
left join avengers_enemy as ae
on a.ar_id=ae.ar_id
union all
select ae.heroic_name,a.enemy_name from avengers_enemy as a
right join avengers as ae
on a.ar_id=ae.ar_id;

use sakila;


DROP TABLE employees;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    manager_id INT
);

INSERT INTO
    employees (
        employee_id,
        employee_name,
        manager_id
    )
VALUES (1, 'John Doe', 3),
    (2, 'Jane Smith', 1),
    (3, 'Alice Johnson', NULL),
    (4, 'Bob Brown', 2),
    (5, 'Emily White', 2);


SELECT * from employees;


--  self joint --
select e.employee_name as employee,m.employee_name as manager from employees as e
inner join employees as m
on m.employee_id=e.manager_id;

DROP TABLE employees;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    manager_id INT
);

INSERT INTO
    employees (
        employee_id,
        employee_name,
        manager_id
    )
VALUES (1, 'John Doe', 3),
    (2, 'Jane Smith', 1),
    (3, 'Alice Johnson', NULL),
    (4, 'Bob Brown', 2),
    (5, 'Emily White', 2);


SELECT * from employees;


--  self joint --
select e.employee_name as employee,m.employee_name as manager from employees as e
inner join employees as m
on m.employee_id=e.manager_id;


