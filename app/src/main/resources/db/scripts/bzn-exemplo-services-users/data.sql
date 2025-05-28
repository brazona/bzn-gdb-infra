--liquibase formatted sql
--changeset dirk:2
------------------------------------

INSERT INTO ${sql_exemplo_users_schema}."users" (email) VALUES ('${sql_exemplo_users_email_1}');
INSERT INTO ${sql_exemplo_users_schema}."users" (email) VALUES ('${sql_exemplo_users_email_2}');
INSERT INTO ${sql_exemplo_users_schema}."users" (email) VALUES ('${sql_exemplo_users_email_3}');