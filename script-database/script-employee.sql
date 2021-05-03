-- Database: employee-api

-- DROP DATABASE "employee-api";

CREATE DATABASE "employee-api"
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Portuguese_Brazil.1252'
    LC_CTYPE = 'Portuguese_Brazil.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

-- Ativar o guid uuid
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE employee(
	employee_id uuid PRIMARY KEY NOT NULL DEFAULT uuid_generate_v4(),
	name VARCHAR(255) NOT NULL,
	job_role VARCHAR(255),
	salary NUMERIC(5,2),
	birth DATE NOT NULL,
	employee_registration INTEGER NOT NULL	
);
	
select * from employee;
	
