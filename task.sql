create table books (
	id int,
	title varchar(100),
	author varchar(100),
	genre varchar(50),
	price numeric(8, 2),
	pages int,
	publish_year int,
	publisher varchar(50)
);

insert into books(id, title, author, genre, price, pages, publish_year, publisher) values 
(1,  'Əli və Nino',       'Qurban Səid',              'Roman',        12.50, 320, 1937, 'Azərnəşr'),
(2,  'Sehrli Şəhər',      'Aysel Rəhimova',           'Fantastika',   15.90, 410, 2019, 'Qanun'),
(3,  '1984',              'George Orwell',            'Antiutopiya',  14.00, 328, 1949, 'Penguin'),
(4,  'Kiçik Şahzadə',     'Antoine de Saint-Exupéry', 'Nağıl',         9.50,  96, 1943, 'Qanun'),
(5,  'Sapiens',           'Yuval Noah Harari',        'Tarix',        22.00, 512, 2011, 'Harper'),
(6,  'Atomic Habits',     'James Clear',              'Özünüinkişaf', 18.50, 320, 2018, 'Avery'),
(7,  'Python-a Giriş',    'Elnur Quliyev',            'Texnologiya',  25.00, 280, 2021, NULL),
(8,  'SQL Əsasları',      'Nərmin Əliyeva',           'Texnologiya',  19.90, 240, 2022, NULL),
(9,  'Cinayət və Cəza',   'Fyodor Dostoyevski',       'Roman',        16.00, 672, 1866, 'Penguin'),
(10, 'Qaranlıq Meşə',     'Rüfət Məmmədov',           NULL,           11.00, 200, 2015, 'Azərnəşr'),
(11, 'Dünya Tarixi',      'Tofiq Hüseynov',           'Tarix',        30.00, 800, 2009, 'Qanun'),
(12, 'Şəhərin Sirri',     'Aysel Babayeva',           'Detektiv',     13.50, 260, 2020, 'Azərnəşr');

select * from books;

select title, author, price from books;

select title as kitab, price as qiymet from books;

select price * 0.8 as discount_price from books;

select distinct * from books;

select * from books where price > 15;

select * from books;

select title, author from books where genre = 'Texnologiya';

select * from books where price between 10 and 20;

select * from books where genre in ('Roman', 'Dedektiv');

select * from books where publish_year > 2015;

select * from books where publisher = 'Azərnəşr' and pages > 250;

select * from books where publisher ISNULL;

select * from books where genre ISNULL;

select * from books where not genre = 'Tarix';

select * from books where title ilike 'S%';

select * from books where author ilike '%ov';

select * from books where title ilike '%Tarix%';

select * from books order by price desc;

select * from books
order by genre asc, price desc;

select * from books 
order by price desc
limit 3;

select * from books 
order by publish_year desc
limit 2;


select * from books
order by price 
limit 3 offset 2;





-- Yeni task

create table films(
	id integer,
	name text,
	genre text,
	raiting numeric(5, 2),
	duration numeric(4, 3),
	release_year integer
);

insert into films(id, name, genre, raiting, duration, release_year) values
(1, 'Inception', 'Sci-Fi', 8.80, 2.483, 2010),
(2, 'The Godfather', 'Crime', 9.20, 2.916, 1972),
(3, 'The Dark Knight', 'Action', 9.00, 2.533, 2008),
(4, 'Interstellar', 'Sci-Fi', 8.70, 2.749, 2014),
(5, 'Parasite', 'Thriller', 8.50, 2.216, 2019);


select * from films;

select id, raiting from films;

select * from films where genre = 'dram';

select * from films where raiting > 8;

select * from films where release_year > 2020;

select * from films order by raiting desc;

select * from films order by raiting asc;

select * from films order by name asc;

select * from films order by raiting asc limit 3;

select * from films where duration > 1.200;

select * from films where in ('dram', 'komediya', 'qorxu');



