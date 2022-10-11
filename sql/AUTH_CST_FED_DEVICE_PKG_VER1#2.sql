
-----------------------------------------------------------------------
Change Identification Tags
--$Id: //ecomm-auth-hub/common/SQL/2022.11.01/sql/InAuthDatabase/MRISK/DDL-Schema/AUTH_CST_FED_DEVICE_PKG_VER1#2.sql#Bhurewar,-Oct-07-2022-13:41:11
--$Author: Bhurewar, Neeraj
--$Datetime: Oct 07 2022 13:41:08
// test data change 10112022
-----------------------------------------------------------------------
NAME:       AUTH_CST_FED_DEVICE_PKG_VER1
PURPOSE:    Version1 Package which contains procedures used for getting the  customer enrollment device details details from AUTH DB.
PROCEDURES: 
            RETRIEVE_FED_DEVICE_DETAILS_V01_PROC    
******************************************************************************/
CREATE OR REPLACE PACKAGE AUTH_CST_FED_DEVICE_PKG_VER1 AS
-----------------------------------------------------------------------
--Perforce Change Identification Tags
--$Id: //ecomm-auth-hub/common/SQL/2022.11.01/sql/InAuthDatabase/MRISK/DDL-Schema/AUTH_CST_FED
from Neeraj Bhurewar to everyone:    2:22 PM
AUTH_CST_FED_DEVICE_PKG_VER1#2.sql
from Neeraj Bhurewar to everyone:    2:26 PM
-----------------------------------------------------------------------
Change Identification Tags
--$Id: //ecomm-auth-hub/common/SQL/2022.11.01/sql/InAuthDatabase/MRISK/DDL-Schema/AUTH_CST_FED_DEVICE_PKG_VER1#2.sql#Bhurewar,-Oct-07-2022-13:41:11
--$Author: Bhurewar, Neeraj
--$Datetime: Oct 07 2022 13:41:08
// test data change 10112022
-----------------------------------------------------------------------
NAME:       AUTH_CST_FED_DEVICE_PKG_VER1
PURPOSE:    Version1 Package which contains procedures used for getting the  customer enrollment device details details from AUTH DB.
PROCEDURES: 
            RETRIEVE_FED_DEVICE_DETAILS_V01_PROC    
******************************************************************************/
CREATE OR REPLACE PACKAGE AUTH_CST_FED_DEVICE_PKG_VER1 AS
-----------------------------------------------------------------------
--Perforce Change Identification Tags
--$Id: //ecomm-auth-hub/common/SQL/2022.11.01/sql/InAuthDatabase/MRISK/DDL-Schema/AUTH_CST_FED

 --Change Identification Tags
--$Id: //ecomm-auth-hub/common/SQL/2022.11.01/sql/InAuthDatabase/MRISK/DDL-Schema/AUTH_CST_FED_DEVICE_PKG_VER1#2.sql#Bhurewar,-Oct-07-2022-13:41:11
--$Author: Bhurewar, Neeraj
--$DateTime: 2021/06/10 07:38:38 $
  --------------------------------------------------------
/*PROCEDURE TO RETRIEVE USERID MAPPED DEVICE DETAILS TO AUTH DB*/
  PROCEDURE RETRIEVE_FED_DEVICE_DETAILS_V01_PROC(
  in_fed_user_id    IN VARCHAR2,
  out_fed_device_list  OUT T_CST_DEVC_OBJ_V1_ARRAY,
  out_status_code     OUT INTEGER,
  out_status_desc     OUT VARCHAR2 )
AS
e_cust_fed_not_found EXCEPTION;
e_null_data EXCEPTION;
v_count           INT;
RETCSTFED_REFCUR SYS_REFCURSOR;
r_cst_id AUTH.FIDO_REG.CST_ID%TYPE;
r_cst_id_typ_cd AUTH.FIDO_REG.CST_ID_TYP_CD%TYPE;
r_device_id AUTH.FIDO_REG.DEVICE_ID%TYPE;
r_db_devc_id AUTH.CST_DEVC_BND.DEVC_ID%TYPE;
r_devc_id AUTH.CST_DEVC.DEVC_ID%TYPE;
r_app_id AUTH.CST_DEVC.APP_ID%TYPE;
r_devc_ref_id AUTH.CST_DEVC.DEVC_REF_ID%T
