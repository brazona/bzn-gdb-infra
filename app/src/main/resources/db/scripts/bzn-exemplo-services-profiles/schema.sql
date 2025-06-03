--liquibase formatted sql
--changeset dirk:2

------------------------------------
-- ROLES
------------------------------------
DROP ROLE IF EXISTS ${sql_exemplo_profiles_schema};
CREATE ROLE ${sql_exemplo_profiles_schema} NOSUPERUSER NOCREATEDB NOCREATEROLE NOINHERIT LOGIN NOREPLICATION NOBYPASSRLS PASSWORD '${sql_exemplo_profiles_schema_pass}';
------------------------------------
-- SCHEMAS
------------------------------------
DROP SCHEMA IF EXISTS ${sql_exemplo_profiles_schema};
CREATE SCHEMA ${sql_exemplo_profiles_schema} AUTHORIZATION ${sql_exemplo_profiles_schema};
------------------------------------
-- SEARCH PATH
------------------------------------
ALTER ROLE ${sql_exemplo_profiles_schema} SET search_path to ${sql_exemplo_profiles_schema};
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
ALTER DEFAULT PRIVILEGES IN SCHEMA ${sql_exemplo_profiles_schema} GRANT ALL ON TABLES TO ${sql_exemplo_profiles_schema};