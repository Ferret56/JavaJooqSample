DROP TABLE IF EXISTS author_book,author,book;

CREATE TABLE author(
    ID INT NOT NULL PRIMARY KEY,
    FIRST_NAME VARCHAR(50) NOT NULL,
    LAST_NAME VARCHAR(50) NOT NULL
);

CREATE TABLE book(
    ID INT NOT NULL PRIMARY KEY,
    TITLE VARCHAR(100) NOT NULL
);

CREATE TABLE author_book(
    AUTHOR_ID INT NOT NULL,
    BOOK_ID INT NOT NULL,

    PRIMARY KEY(AUTHOR_ID,BOOK_ID),
    CONSTRAINT fk_ab_author FOREIGN KEY(AUTHOR_ID) REFERENCES author(ID)
                        ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT fk_ad_book FOREIGN KEY(BOOK_ID) REFERENCES book(ID)
);

INSERT INTO author VALUES
        (1,'Neal', 'Stephenson'),
        (2,'Stephen ', 'King'),
        (3,'George  ', 'Orwell'),
        (4,'Leo  ', 'Tolstoy'),
        (5,'Fedor   ', 'Dostoevsky');

INSERT INTO book VALUES
       (1,'It'),
       (2,'1984'),
       (3,'War and Peace'),
       (4,'Idiot'),
       (5,'The Shining'),
       (6,'Crime and Punishment'),
       (7,'Cryptonomicon');

INSERT INTO author_book VALUES (1,7),(2,1), (2,5), (3,2),(4,3),(5,4),(5,6);