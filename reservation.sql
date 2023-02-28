#1. customer 테이블 만들기
CREATE TABLE customer (id INT(50), name VARCHAR(50), birthday DATE, phone VARCHAR(50));

#2. customer 테이블에 값을 넣기
INSERT INTO customer (id, name, birthday, phone) VALUES ('1','이경준','2000-10-09','010-7660-5380');
INSERT INTO customer (id, name, birthday, phone) VALUES ('2','김현민','2000-09-30','010-4528-1475');
INSERT INTO customer (id, name, birthday, phone) VALUES ('3','최진성','2000-09-04','010-1624-1596');

#3. customer 테이블 값 출력
SELECT * FROM customer;

#4. screen 테이블 만들기
CREATE TABLE screen (id INT(50), name VARCHAR(50), theater INT(50), time DATETIME);

#5. screen 테이블에 값을 넣기
INSERT INTO screen (id, name, theater, time) VALUES ('1','아바타','5','2023-02-27 15:00:00');
INSERT INTO screen (id, name, theater, time) VALUES ('2','스파이더맨','6','2023-02-27 17:00:00');
INSERT INTO screen (id, name, theater, time) VALUES ('3','아이언맨','7','2023-02-27 19:00:00'); 

#6. screen 테이블 값 출력
SELECT * FROM screen;

#7. 기본키 지정
ALTER TABLE customer MODIFY id INT NOT NULL AUTO_INCREMENT, ADD PRIMARY KEY(id);
ALTER TABLE screen MODIFY id INT NOT NULL AUTO_INCREMENT, ADD PRIMARY KEY(id);

#8 결과 값 출력
SELECT c.name, s.name, s.theater, s.time, c.phone FROM customer c CROSS JOIN screen s ORDER BY c.name;
SELECT c.name, s.name, s.theater, s.time, c.phone FROM customer c INNER JOIN screen s ON c.id = s.id;