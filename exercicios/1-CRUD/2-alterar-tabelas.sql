-- Na tabela salario_classe altere o atributo "nivel" para que seu tipo de dado seja varchar, com tamanho máximo de 50 caracteres
ALTER TABLE salario_classe
--DROP nivel;
ADD nivel varchar(50);


-- Na tabela employees, adicione uma coluna para receber o id_salario
ALTER TABLE employees
ADD id_salario INTEGER;

CREATE TABLE salario_classe2 (
id_salario INTEGER PRIMARY KEY,
salario INTEGER,
nivel VARCHAR(50)
);

DROP TABLE salario_classe;

ALTER TABLE salario_classe2 RENAME TO salario_classe;
