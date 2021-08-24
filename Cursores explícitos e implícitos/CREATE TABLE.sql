CREATE TABLE emp_protect (
    id int NOT NULL,
    nome varchar(255),
    cpf varchar(11) unique,
    turno varchar(8),
    PRIMARY KEY(id)
);

INSERT INTO emp_protect VALUES (1, 'Raphael Oliveira', 12345695132, 'Manhã'); 
INSERT INTO emp_protect VALUES (2, 'Machado de Assis', 12345695152, 'Manhã');
INSERT INTO emp_protect VALUES (3, 'Graciliano Ramos', 14545695132, 'Manhã');
INSERT INTO emp_protect VALUES (4, 'J.R.R.Tolkien', 88345695132, 'Tarde');
INSERT INTO emp_protect VALUES (5, 'George Orwel', 12354395132, 'Noite');
INSERT INTO emp_protect VALUES (6, 'Carol dos Santos', 12345695999, 'Manhã');
INSERT INTO emp_protect VALUES (7, 'Wilson Smith', 12316295132, 'Noite');
INSERT INTO emp_protect VALUES (8, 'Júlia', 12345695132, 'Manhã');
INSERT INTO emp_protect VALUES (9, 'Irene', 12342225132, 'Noite');
INSERT INTO emp_protect VALUES (10, 'Curtie', 12666695132, 'Tarde');

SELECT * FROM emp_protect;

Alter Table emp_protect modify nome varchar(30);

SELECT * FROM emp_protect;