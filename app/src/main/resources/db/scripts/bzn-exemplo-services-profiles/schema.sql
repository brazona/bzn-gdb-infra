--liquibase formatted sql
--changeset dirk:2
------------------------------------
-- TABLE PROFILES
------------------------------------
DROP TABLE IF EXISTS ${sql_exemplo_profiles_schema}."profiles";
CREATE TABLE ${sql_exemplo_profiles_schema}."profiles" (
	id int8 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL,
	name varchar(255) NOT NULL,
	user_id int8 NOT NULL,
	role_id int8 NOT NULL,
	CONSTRAINT profiles_pkey PRIMARY KEY (id)
);
COMMENT ON TABLE ${sql_exemplo_profiles_schema}."profiles" IS 'Tabela para persistencia dos dados de perfis de acesso dos usuários.';

------------------------------------
-- GRANT
------------------------------------
GRANT ALL ON ALL TABLES IN SCHEMA ${sql_exemplo_profiles_schema} TO ${sql_exemplo_profiles_schema};