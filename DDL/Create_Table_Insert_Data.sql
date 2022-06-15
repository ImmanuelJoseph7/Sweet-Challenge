CREATE TABLE Sweets (
    id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    Date DATE,
    Child VARCHAR(50) NOT NULL,
    SweetsEaten INT NOT NULL
);

INSERT INTO Sweets
    ([Date], [Child],[SweetsEaten])
VALUES
    ('2022-01-01', 'Tom',3),
    ('2022-01-02', 'Jane',2),
    ('2022-01-11', 'Leslie',1),
    ('2022-02-14', 'Tom',0),
    ('2022-02-18', 'Jane',5),
    ('2022-02-01', 'Leslie',1),
    ('2022-03-07', 'Leslie',3),
    ('2022-03-09', 'Tom',2),
    ('2022-03-18', 'Jane',0)
;