--liquibase formatted sql
--changeset dirk:2
------------------------------------
-- ROLES
------------------------------------
DROP ROLE IF EXISTS ${sql_exemplo_users_schema};
CREATE ROLE ${sql_exemplo_users_schema} NOSUPERUSER NOCREATEDB NOCREATEROLE NOINHERIT LOGIN NOREPLICATION NOBYPASSRLS PASSWORD '${sql_exemplo_users_schema_pass}';
------------------------------------
-- SCHEMAS
------------------------------------
DROP SCHEMA IF EXISTS ${sql_exemplo_users_schema};
CREATE SCHEMA ${sql_exemplo_users_schema} AUTHORIZATION ${sql_exemplo_users_schema};
------------------------------------
-- SEARCH PATH
------------------------------------
ALTER ROLE ${sql_exemplo_users_schema} SET search_path to ${sql_exemplo_users_schema};
------------------------------------
-- TABLE USERS
------------------------------------
DROP TABLE IF EXISTS ${sql_exemplo_users_schema}."users";
CREATE TABLE ${sql_exemplo_users_schema}."users" (
	id int8 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL,
	email varchar(255) NOT NULL,
	CONSTRAINT users_pkey PRIMARY KEY (id),
	CONSTRAINT users_email_unique UNIQUE (email)
);
COMMENT ON TABLE ${sql_exemplo_users_schema}."users" IS 'Tabela para persistencia dos dados de usuários';

------------------------------------
-- GRANT
------------------------------------
GRANT ALL ON ALL TABLES IN SCHEMA ${sql_exemplo_users_schema} TO ${sql_exemplo_users_schema};
ALTER DEFAULT PRIVILEGES IN SCHEMA ${sql_exemplo_users_schema} GRANT ALL ON TABLES TO ${sql_exemplo_users_schema};