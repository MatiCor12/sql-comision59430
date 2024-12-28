USE malta_gamers;

DROP USER IF EXISTS
'anderson'@'%' ,
'hugo'@'%' ,
'nicolas'@'%' ;

CREATE USER 'anderson'@'%' IDENTIFIED BY 'Anderson';
GRANT ALL PRIVILEGES ON *.* TO 'anderson'@'%' WITH GRANT OPTION;

CREATE USER 'hugo'@'%' IDENTIFIED BY 'Hugo';
GRANT ALL PRIVILEGES ON *.* TO 'anderson'@'%' WITH GRANT OPTION;

CREATE USER 'nicolas'@'%' IDENTIFIED BY 'Nicolas';
GRANT ALL PRIVILEGES ON *.* TO 'anderson'@'%' WITH GRANT OPTION;

FLUSH PRIVILEGES;