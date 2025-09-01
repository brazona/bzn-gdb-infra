--liquibase formatted sql
--changeset dirk:2
------------------------------------

INSERT INTO ${sql_bzn_gai_identity_schema}."credentials" (username, password) VALUES ('${sql_bzn_gai_identity_username_1}', '${sql_bzn_gai_identity_password_1}');
INSERT INTO ${sql_bzn_gai_identity_schema}."credentials" (username, password) VALUES ('${sql_bzn_gai_identity_username_2}', '${sql_bzn_gai_identity_password_2}');
INSERT INTO ${sql_bzn_gai_identity_schema}."credentials" (username, password) VALUES ('${sql_bzn_gai_identity_username_3}', '${sql_bzn_gai_identity_password_3}');