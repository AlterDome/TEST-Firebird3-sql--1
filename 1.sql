CREATE DATABASE './1.fdb'
USER 'SYSDBA' PASSWORD 'masterkey'
PAGE_SIZE 16384
DEFAULT CHARACTER SET UNICODE_FSS;

CREATE TABLE SCLAD (
    id     BIGINT,
    sklad     INTEGER,
    adres  INTEGER
);

--**********************************
INSERT INTO SCLAD (id, sklad, adres) VALUES 
(1, a, moscow )
(2, b, kazan )
(3, c, piter )
(4, d, samara )


--*************************************
CREATE VIEW VI (
    id INTEGER NOT NULL,
    sklad  VARCHAR(30),
    adres VARCHAR(50))
SELECT CAST(adres) FROM SCLAD WHERE (ID=1) GROUP BY adres 
                                           -- группирует по адресам



--#########################################


/*
  Комментарий
*/
