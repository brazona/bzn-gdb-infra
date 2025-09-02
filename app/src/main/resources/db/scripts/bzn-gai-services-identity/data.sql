--liquibase formatted sql
--changeset dirk:2
------------------------------------

INSERT INTO ${sql_bzn_gai_identity_schema}."credentials" (username, password) VALUES ('${sql_bzn_gai_identity_username_1}', '${sql_bzn_gai_identity_password_1}');
INSERT INTO ${sql_bzn_gai_identity_schema}."credentials" (username, password) VALUES ('${sql_bzn_gai_identity_username_2}', '${sql_bzn_gai_identity_password_2}');
INSERT INTO ${sql_bzn_gai_identity_schema}."credentials" (username, password) VALUES ('${sql_bzn_gai_identity_username_3}', '${sql_bzn_gai_identity_password_3}');


------------------------------------
-- TABLE ADDRESSES
------------------------------------

INSERT INTO ${sql_bzn_gai_identity_schema}."addresses" (name, street, number, complement, neighborhood, city, state, country, zip_code, username) VALUES ('Casa', 'Rua dos Bobos', '0', 'Apto 101', 'Centro', 'Sao Paulo', 'SP', 'Brasil', '00000-000', '${sql_bzn_gai_identity_username_1}');
INSERT INTO ${sql_bzn_gai_identity_schema}."addresses" (name, street, number, complement, neighborhood, city, state, country, zip_code, username) VALUES ('Trabalho', 'Avenida Paulista', '1000', 'Conj 202', 'Bela Vista', 'Sao Paulo', 'SP', 'Brasil', '11111-111', '${sql_bzn_gai_identity_username_2}');
INSERT INTO ${sql_bzn_gai_identity_schema}."addresses" (name, street, number, complement, neighborhood, city, state, country, zip_code, username) VALUES ('Casa namorada', 'Rua das Flores', '500', '', 'Jardim', 'Rio de Janeiro', 'RJ', 'Brasil', '22222-222', '${sql_bzn_gai_identity_username_3}');