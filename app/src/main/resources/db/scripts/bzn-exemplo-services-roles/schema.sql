--liquibase formatted sql
--changeset dirk:2
------------------------------------
------------------------------------
-- TABLE ROLES
------------------------------------
DROP TABLE IF EXISTS ${sql_exemplo_roles_schema}."roles";
CREATE TABLE ${sql_exemplo_roles_schema}."roles" (
	id int8 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL,
	name varchar(255) NOT NULL,
	CONSTRAINT roles_pkey PRIMARY KEY (id),
	CONSTRAINT roles_name_unique UNIQUE (name)
);
COMMENT ON TABLE ${sql_exemplo_roles_schema}."roles" IS 'Tabela para persistencia dos dados de papeis de acesso.';

