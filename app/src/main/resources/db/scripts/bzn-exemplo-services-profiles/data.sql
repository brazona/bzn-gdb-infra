--liquibase formatted sql
--changeset dirk:2
------------------------------------

INSERT INTO ${sql_exemplo_profiles_schema}."profiles" (name, user_id, role_id) VALUES ('${sql_exemplo_profiles_name_1}',1 ,1);
