-----------------------------------------------------------------------
--Change Identification Tags
--$Id: //ecomm-auth-hub/common/SQL/2022.11.01/sql/InAuthDatabase/MRISK/DDL-Schema/care_rule_compare#1.sql#Bhurewar,-Oct-07-2022-13:41:11
--$Author: Bhurewar, Neeraj
--$Datetime: Oct 07 2022 13:41:08
Create or replace function care_rule_compare( in_db1 varchar2, in_db2 varchar2)return sys_refcursor is
-----------------------------------------------------------------------
--Change Identification Tags
--$Id: //ecomm-auth-hub/common/SQL/2022.11.01/sql/InAuthDatabase/MRISK/DDL-Schema/care_rule_compare#1.sql#Bhurewar,-Oct-07-2022-13:41:11
--$Author: Bhurewar, Neeraj
--$Datetime: Oct 07 2022 13:41:08
// test data 01012023
    v_rc sys_refcursor;
       v_sqlstmt varchar2(2000);
     begin
        v_sqlstmt := 'select '''|| in_db1 ||''', b.rule_id, b.rule_version,b.rule_name,b.rule_desc, a.clob_len, b.rule_options, b.updt_ts from '||
        '(select rule_id,rule_version,rule_name,rule_de
