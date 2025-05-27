--liquibase formatted sql
--changeset dirk:2
------------------------------------
-- TABLE IDP.USERS
------------------------------------
INSERT INTO idp.users (email,is_account_non_expired,is_account_non_locked,is_credentials_non_expired,is_enabled,is_update_password,"name","password") VALUES
	 ('${sql_user_email_1}',true,true,true,true, false, '${sql_user_name_1}','${sql_user_pass_1}'),
	 ('${sql_user_email_2}',true,true,true,true, false, '${sql_user_name_2}','${sql_user_pass_2}');


------------------------------------
-- TABLE IDP.OWNERS
------------------------------------

INSERT INTO idp.owners (full_name,"document",user_id) VALUES
	 ('${sql_owners_name_1}','${sql_owners_doc_1}',2);


------------------------------------
-- TABLE IDP.BUSINESS PARTNERS
------------------------------------

INSERT INTO idp.business_partners (full_name,"document",gender,user_id) VALUES
	 ('${sql_bp_name_1}','${sql_bp_doc_1}','masculino',1);


------------------------------------
-- TABLE IDP.ADDRESSES
------------------------------------
INSERT INTO idp.addresses (street,neighborhood,"number",complement,state,zipcode,country,business_partner_id) VALUES
	 ('Norman Cordon','Eldorado','10','2','SP','04476500','Brasil',1);


------------------------------------
-- TABLE IDP.SERVICES
------------------------------------
INSERT INTO idp.services (id,"name",sigla) VALUES
	 (1,'Business Administration Game','bag');

------------------------------------
-- TABLE IDP.ROLES
------------------------------------

INSERT INTO idp.roles (id,"name") VALUES
	 (1,'OWNER_SYS'),
	 (2,'ADM_SYS'),
	 (3,'USER_SYS'),
	 (4,'OWNER_ORG'),
	 (5,'ADM_ORG'),
	 (6,'USER_ORG');


------------------------------------
-- TABLE IDP.ORGANIZATION
------------------------------------	 

INSERT INTO idp.organizations
(fantasy_name, corporate_reason, "document")
VALUES('Brazona Tech', 'Brazona LTDA', '56.984.829/0001-20');

------------------------------------
-- TABLE IDP.SERVICE BY ORGANIZATION
------------------------------------

INSERT INTO idp.services_by_organizations (organization_id,service_id,business_partner_id,role_id,"name") VALUES
	 (1,1,1,2,'Administrador do Sistema');

