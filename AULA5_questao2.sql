--Questão 01. Crie um SCHEMA chamado avaliacaocontinua n
create  schema avaliacaocontinua;
--Questão 02. Crie a tabela company com os atributos company_name e city.
CREATE TABLE avaliacaocontinua.company (
    company_name varchar(50) not null primary key,
    city varchar(50) 
);
--Questão 03. Crie a tabela employee com os atributos person_name, street e city.
create table avaliacaocontinua.employee (
    person_name varchar(50) not null primary key,
    street varchar(50),
    city varchar(50)
);
--Questão 04. Crie a tabela manages com os atributos person_name e
create table avaliacaocontinua.manages (
    person_name varchar(50) not null primary key,
    manager_name varchar(50)
);
--Questão 05. Crie a tabela works com os atributos person_name, company_name e salary.
create table avaliacaocontinua.works (
    person_name varchar(50) not null primary key,
    company_name varchar(50) not null,
    salary money
);
--Questão 06. Crie a integridade referencial entre a relação works e a relação
ALTER TABLE avaliacaocontinua.works
ADD constraint wok_work_employee
FOREIGN KEY (person_name) REFERENCES avaliacaocontinua.employee(person_name)
ON UPDATE CASCADE
ON DELETE CASCADE;
--Questão 07. Crie a integridade referencial entre a relação works e a relação company.

ALTER TABLE avaliacaocontinua.works
ADD constraint works_company
FOREIGN KEY (company_name) REFERENCES avaliacaocontinua.company(company_name)
ON UPDATE CASCADE
ON DELETE CASCADE;

--Questão 08. Crie a integridade referencial entre a relação manages e a relação employee.
ALTER TABLE avaliacaocontinua.manages
ADD constraint manages_employee
FOREIGN KEY (person_name) REFERENCES avaliacaocontinua.employee(person_name)
ON UPDATE CASCADE
ON DELETE CASCADE;

