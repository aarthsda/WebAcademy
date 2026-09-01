DROP DATABASE Hospital;

CREATE DATABASE Hospital;

use Hospital;

CREATE TABLE IF NOT EXISTS paciente (
    paciente_id INT AUTO_INCREMENT PRIMARY KEY,
    paciente_nome VARCHAR(255) NOT NULL,
    paciente_planodesaude_fk BIGINT,
    paciente_status TINYINT(1)
);

CREATE TABLE IF NOT EXISTS medico (
    medico_id INT AUTO_INCREMENT PRIMARY KEY,
    medico_nome VARCHAR(255),
    medico_crm VARCHAR(255),
    medico_especialidade_fk BIGINT
);

CREATE TABLE IF NOT EXISTS exame (
    exame_id INT AUTO_INCREMENT PRIMARY KEY,
    exame_consulta_fk BIGINT,
    exame_tipo BIGINT,
    exame_resultado_file VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS tipo_exame (
    tipoExame_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipoExame_nome VARCHAR(255),
    tipoExame_especialidade_fk BIGINT
);

CREATE TABLE IF NOT EXISTS especialidade (
    especialidade_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    especialidade_nome VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS medicamento (
    medicamento_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    medicamento_nome VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS receita (
    receita_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    receita_medicamento_fk BIGINT,
    receita_dosagem VARCHAR(255),
    receita_consulta_fk BIGINT
);

CREATE TABLE IF NOT EXISTS consulta (
    consulta_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    consulta_horario TIME,
    consulta_data DATE,
    consulta_medico_id_fk BIGINT,
    consulta_paciente_id_fk BIGINT
);