--liquibase formatted sql
--changeset dirk:2
------------------------------------

INSERT INTO ${sql_exemplo_roles_schema}."roles" (name) VALUES ('${sql_exemplo_roles_name_1}');
INSERT INTO ${sql_exemplo_roles_schema}."roles" (name) VALUES ('${sql_exemplo_roles_name_2}');
INSERT INTO ${sql_exemplo_roles_schema}."roles" (name) VALUES ('${sql_exemplo_roles_name_3}');