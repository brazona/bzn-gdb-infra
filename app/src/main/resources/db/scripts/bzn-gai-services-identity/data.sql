--liquibase formatted sql
--changeset dirk:2
------------------------------------

INSERT INTO ${sql_bzn_gai_identity_schema}."credentials" (username, password) VALUES ('${sql_bzn_gai_identity_username_1}', '${sql_bzn_gai_identity_password_1}');
INSERT INTO ${sql_bzn_gai_identity_schema}."credentials" (username, password) VALUES ('${sql_bzn_gai_identity_username_2}', '${sql_bzn_gai_identity_password_2}');
INSERT INTO ${sql_bzn_gai_identity_schema}."credentials" (username, password) VALUES ('${sql_bzn_gai_identity_username_3}', '${sql_bzn_gai_identity_password_3}');

------------------------------------
-- TABLE PERSONS
------------------------------------

INSERT INTO ${sql_bzn_gai_identity_schema}."persons" (
    person_code,
    name,
    name_social,
    document,
    gender,
    user_id
) VALUES (
    '${sql_bzn_gai_identity_person_code_1}',
    '${sql_bzn_gai_identity_person_name_1}',
    '${sql_bzn_gai_identity_person_name_social_1}',
    '${sql_bzn_gai_identity_person_doc_1}',
    '${sql_bzn_gai_identity_person_gender_1}',
    '${sql_bzn_gai_identity_person_user_1}'
);
INSERT INTO ${sql_bzn_gai_identity_schema}."persons" (
    person_code,
    name,
    name_social,
    document,
    gender,
    user_id
) VALUES (
    '${sql_bzn_gai_identity_person_code_2}',
    '${sql_bzn_gai_identity_person_name_2}',
    '${sql_bzn_gai_identity_person_name_social_2}',
    '${sql_bzn_gai_identity_person_doc_2}',
    '${sql_bzn_gai_identity_person_gender_2}',
    '${sql_bzn_gai_identity_person_user_2}'
);    
INSERT INTO ${sql_bzn_gai_identity_schema}."persons" (
    person_code,
    name,
    name_social,
    document,
    gender,
    user_id
) VALUES (
    '${sql_bzn_gai_identity_person_code_3}',
    '${sql_bzn_gai_identity_person_name_3}',
    '${sql_bzn_gai_identity_person_name_social_3}',
    '${sql_bzn_gai_identity_person_doc_3}',
    '${sql_bzn_gai_identity_person_gender_3}',
    '${sql_bzn_gai_identity_person_user_3}'
);

------------------------------------
-- TABLE ADDRESSES
------------------------------------

INSERT INTO ${sql_bzn_gai_identity_schema}."addresses" (name, street, number, complement, neighborhood, city, state, country, zip_code, person_code) VALUES ('Casa', 'Rua dos Bobos', '0', 'Apto 101', 'Centro', 'Sao Paulo', 'SP', 'Brasil', '00000-000', '${sql_bzn_gai_identity_person_code_1}');
INSERT INTO ${sql_bzn_gai_identity_schema}."addresses" (name, street, number, complement, neighborhood, city, state, country, zip_code, person_code) VALUES ('Trabalho', 'Avenida Paulista', '1000', 'Conj 202', 'Bela Vista', 'Sao Paulo', 'SP', 'Brasil', '11111-111', '${sql_bzn_gai_identity_person_code_2}');
INSERT INTO ${sql_bzn_gai_identity_schema}."addresses" (name, street, number, complement, neighborhood, city, state, country, zip_code, person_code) VALUES ('Casa namorada', 'Rua das Flores', '500', '', 'Jardim', 'Rio de Janeiro', 'RJ', 'Brasil', '22222-222', '${sql_bzn_gai_identity_person_code_3}');