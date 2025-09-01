--liquibase formatted sql
--changeset dirk:2
------------------------------------
-- ROLES
------------------------------------
DROP ROLE IF EXISTS ${sql_bzn_gai_identity_schema};
CREATE ROLE ${sql_bzn_gai_identity_schema} NOSUPERUSER NOCREATEDB NOCREATEROLE NOINHERIT LOGIN NOREPLICATION NOBYPASSRLS PASSWORD '${sql_bzn_gai_identity_schema_pass}';
------------------------------------
-- SCHEMAS
------------------------------------
DROP SCHEMA IF EXISTS ${sql_bzn_gai_identity_schema};
CREATE SCHEMA ${sql_bzn_gai_identity_schema} AUTHORIZATION ${sql_bzn_gai_identity_schema};
------------------------------------
-- SEARCH PATH
------------------------------------
ALTER ROLE ${sql_bzn_gai_identity_schema} SET search_path to ${sql_bzn_gai_identity_schema};
------------------------------------
-- TABLE CREDENTIALS
------------------------------------
DROP TABLE IF EXISTS ${sql_bzn_gai_identity_schema}."credentials";
CREATE TABLE ${sql_bzn_gai_identity_schema}."credentials" (
	id int8 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL,
	username varchar(255) NOT NULL,
	password varchar(255) NOT NULL,
	CONSTRAINT credentials_pkey PRIMARY KEY (id),
	CONSTRAINT credentials_username_unique UNIQUE (username)
);
COMMENT ON TABLE ${sql_bzn_gai_identity_schema}."credentials" IS 'Tabela para persistencia dos dados de credenciais de acesso';

------------------------------------
-- GRANT
------------------------------------
GRANT ALL ON ALL TABLES IN SCHEMA ${sql_bzn_gai_identity_schema} TO ${sql_bzn_gai_identity_schema};
ALTER DEFAULT PRIVILEGES IN SCHEMA ${sql_bzn_gai_identity_schema} GRANT ALL ON TABLES TO ${sql_bzn_gai_identity_schema};