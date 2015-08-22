
@rem LINK
@rem https://www.youtube.com/watch?v=F81gfUnznZY&index=2&list=PLL_LQvNX4xKzVcg_GoRzjeM_veo8CI15A

€rem MORE INSTRUCTION ####################
@rem CLEAR SCREEN ************************
cl scr;

@rem SHOW NAME OF command ****************
SHOW con_name;

@rem NAME AND CONTAINER (QUERY)
SELECT name, con_id FROM v$pdbs;

@rem QUERY
SELECT name FROM v$active_services WHERE con_id=3;

@rem RELOAD CHANGES
lsnrctl reload

@rem ALTER session
ALTER SESSION SET CONTAINER = pdborcl;

@rem NAME AND CONTAINER (QUERY)
SELECT name, open_mode FROM v$pdbs;

@rem ALTER pluggable database OPEN
ALTER PLUGGABLE DATABASE pdborcl OPEN;

@rem ALTER databse user 
ALTER USER hr IDENTIFIED BY hr ACCOUNT UNLOCK;

@rem CONNECT to database
conn hr/hr@PDBORCL;

@rem USER
SHOW user;

@rem QUERY
SELECT name, open_mode FROM v$pdbs WHERE name='PDBORCL';

@rem PASSWORD CHANGE (sysdba; sysdba)
password system

@rem EXIT
exit;

databaseROOT
root
root