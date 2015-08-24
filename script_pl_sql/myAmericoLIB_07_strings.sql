-- #################################################################
-- PL/SQL - Strings
-- http://www.tutorialspoint.com/plsql/plsql_strings.htm

DECLARE
   greetings varchar2(11) := 'hello world';
BEGIN
   dbms_output.put_line(UPPER(greetings));
   dbms_output.put_line(LOWER(greetings));
   dbms_output.put_line(INITCAP(greetings));
   
   -- PARAGRAPH
   dbms_output.put_line('');
   
   /* retrieve the first character in the string */
   dbms_output.put_line ( SUBSTR (greetings, 1, 1));
   
   /* retrieve the last character in the string */
   dbms_output.put_line ( SUBSTR (greetings, -1, 1));
   
   /* retrieve five characters, 
      starting from the seventh position. */
   dbms_output.put_line ( SUBSTR (greetings, 7, 5));
   
   /* retrieve the remainder of the string,
      starting from the second position. */
   dbms_output.put_line ( SUBSTR (greetings, 2));
   
   /* find the location of the first "e" */
   dbms_output.put_line ( INSTR (greetings, 'e'));
END;

-- #################################################################

-- R = right; L = left; trim = cortar;
DECLARE
   greetings varchar2(30) := '......Hello World.....';
BEGIN
   dbms_output.put_line(RTRIM(greetings,'.'));
   dbms_output.put_line(LTRIM(greetings, '.'));
   dbms_output.put_line(TRIM( '.' from greetings));
END;
