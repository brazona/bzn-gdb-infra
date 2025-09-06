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
-- TABLE ADDRESSES
------------------------------------
DROP TABLE IF EXISTS ${sql_bzn_gai_identity_schema}."persons";
CREATE TABLE ${sql_bzn_gai_identity_schema}."persons" (
	id int8 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL,
	person_code varchar(255) NOT NULL,
	name varchar(255) NOT NULL,
	name_social varchar(255) NOT NULL,
	document varchar(255) NOT NULL,
	gender varchar(255) NOT NULL,
	user_id int8 NOT NULL,
	CONSTRAINT persons_pkey PRIMARY KEY (id),
	CONSTRAINT persons_code_pkey PRIMARY KEY (person_code),
	CONSTRAINT persons_user_id_fkey FOREIGN KEY (user_id) REFERENCES credentials (id)
);
COMMENT ON TABLE ${sql_bzn_gai_identity_schema}."persons" IS 'Tabela para persistencia as informa����es da pessoa';

------------------------------------
-- GRANT
------------------------------------
GRANT ALL ON ALL TABLES IN SCHEMA ${sql_bzn_gai_identity_schema} TO ${sql_bzn_gai_identity_schema};
ALTER DEFAULT PRIVILEGES IN SCHEMA ${sql_bzn_gai_identity_schema} GRANT ALL ON TABLES TO ${sql_bzn_gai_identity_schema};

------------------------------------
-- TABLE ADDRESSES
------------------------------------
DROP TABLE IF EXISTS ${sql_bzn_gai_identity_schema}."addresses";
CREATE TABLE ${sql_bzn_gai_identity_schema}."addresses" (
	id int8 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL,
	name varchar(255) NOT NULL,
	street varchar(255) NOT NULL,
	number varchar(50) NOT NULL,
	complement varchar(255),
	neighborhood varchar(100) NOT NULL,
	city varchar(50) NOT NULL,
	state varchar(50) NOT NULL,
	country varchar(50) NOT NULL,
	zip_code varchar(20) NOT NULL,
	username varchar(255) NOT NULL,
	CONSTRAINT addresses_pkey PRIMARY KEY (id)
);
COMMENT ON TABLE ${sql_bzn_gai_identity_schema}."addresses" IS 'Tabela para persistencia as informa����es de enderecos dos usuarios';

------------------------------------
-- GRANT
------------------------------------
GRANT ALL ON ALL TABLES IN SCHEMA ${sql_bzn_gai_identity_schema} TO ${sql_bzn_gai_identity_schema};
ALTER DEFAULT PRIVILEGES IN SCHEMA ${sql_bzn_gai_identity_schema} GRANT ALL ON TABLES TO ${sql_bzn_gai_identity_schema};