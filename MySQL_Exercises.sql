#################################################################
#Prob.1

use vmethuku;
show tables;

CREATE TABLE METHUKU (
    ID INT UNSIGNED NOT NULL AUTO_INCREMENT,
    GI_NUMBER VARCHAR(11),
    MOLECULE ENUM('DNA','AA'),
    LENGTH INT UNSIGNED,
    DATE DATE,
    SEQUENCE LONGTEXT NOT NULL,
    PRIMARY KEY (ID) );
	
show tables;

describe METHUKU;
INSERT INTO METHUKU (GI_NUMBER,SEQUENCE,MOLECULE,LENGTH,DATE)
VALUES ('GI321456','ATGCGT','DNA', 6, '2001-03-04');
select * from METHUKU;
INSERT INTO METHUKU (GI_NUMBER,SEQUENCE,MOLECULE,LENGTH,DATE)
VALUES ('GI123456', 'MILVK','AA',5, '1998-12-03');
select * from METHUKU;
INSERT INTO METHUKU (GI_NUMBER,SEQUENCE,MOLECULE,LENGTH,DATE)
VALUES ('GI786543', 'ATGCCAGCCA','DNA',10, '1995-05-29');
select * from METHUKU;
###################################################################
#Prob.2
select * from METHUKU where SEQUENCE LIKE 'A%';
###################################################################
#Prob.3
select * from METHUKU where MOLECULE = 'DNA' order by LENGTH;
