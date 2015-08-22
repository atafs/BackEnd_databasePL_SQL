
@rem LINK
@rem https://www.youtube.com/watch?v=F81gfUnznZY&index=2&list=PLL_LQvNX4xKzVcg_GoRzjeM_veo8CI15A

€rem 1- OPEN SQL PLUS (CMD)
sqlplus / as sysdba

€rem 2- CLEAN SCREEN
cl scr;

€rem 3- QUERY NAME and CONTAINER_ID
SELECT name, con_id FROM v$pdbs;

€rem 4- QUERY NAME OF SERVICE
SELECT name FROM v$active_services WHERE con_id=3;

€rem 5- open = D:\app\root\product\12.1.0\dbhome_1\NETWORK\ADMIN\tnsnames.ora
€rem ADD INSTRCTION

€rem 6- RELOAD DATA CHANGES in C:\Windows\system32> 
lsnrctl reload

€rem 7- POEN SQL PLUS AS ROOT 
sqlplus / as sysdba

€rem 8- CONTAINER
SHOW con_name;

€rem 9- CHANGE CONTAINER
ALTER SESSION SET CONTAINER = pdborcl;
SHOW con_name;

€rem 10- CHECK IF IT IS OPEN
SELECT name, open_mode FROM v$pdbs;

€rem 11- OPEN IF NECESSARY
ALTER PLUGGABLE DATABASE OPEN;
SELECT name, open_mode FROM v$pdbs;

€rem 12- USER ALTER (change)
ALTER USER hr IDENTIFIED BY hr ACCOUNT UNLOCK;

€rem 13- CONNECT TO HR USER
conn hr/hr@PDBORCL;
SHOW user;

@rem LINK
@rem https://www.youtube.com/watch?v=tLFjwyHCEqk&index=2&list=PLL_LQvNX4xKzVcg_GoRzjeM_veo8CI15A

€rem 14- CHECK STATE
SELECT name, open_mode FROM v$pdbs WHERE name='PDBORCL';

€rem 15- OPEN PLUGGABLE
ALTER PLUGGABLE DATABASE pdborcl OPEN;

@rem EXIT
exit;

