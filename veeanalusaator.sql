--
-- DUMP FILE
--
-- Database is ported from MS Access
--------------------------------------------------------------------
-- Created using MS Access to PostgreSQL form http://www.bullzip.com
-- Program Version 5.5.281
--
-- OPTIONS:
--   sourcefilename=C:/Users/Aivar/Desktop/database/vee_andmebaas.accdb
--   sourceusername=
--   sourcepassword=
--   sourcesystemdatabase=
--   destinationserver=apex.ttu.ee
--   destinationdatabase=vee_andmebaas
--   maintenancedb=postgres
--   dropdatabase=1
--   createtables=1
--   unicode=1
--   autocommit=1
--   transferdefaultvalues=1
--   transferindexes=1
--   transferautonumbers=1
--   transferrecords=1
--   columnlist=1
--   tableprefix=
--   negativeboolean=0
--   ignorelargeblobs=0
--   memotype=TEXT
--   datetimetype=TIMESTAMP
--

DROP DATABASE IF EXISTS vee_andmebaas;
CREATE DATABASE vee_andmebaas;

-- NOTICE: At this place you need to connect to the new database and run the rest of the statements.

--
-- Table structure for table 'analytes'
--

DROP TABLE IF EXISTS analytes;

CREATE TABLE analytes (
  analyte_id SERIAL NOT NULL, 
  analyte_name VARCHAR(255), 
  PRIMARY KEY (analyte_id)
);

--
-- Dumping data for table 'analytes'
--

INSERT INTO analytes (analyte_id, analyte_name) VALUES (1, 'Na');
INSERT INTO analytes (analyte_id, analyte_name) VALUES (2, 'K');
INSERT INTO analytes (analyte_id, analyte_name) VALUES (3, 'Li');
INSERT INTO analytes (analyte_id, analyte_name) VALUES (4, 'NH4');
INSERT INTO analytes (analyte_id, analyte_name) VALUES (5, 'Ba');
INSERT INTO analytes (analyte_id, analyte_name) VALUES (6, 'Mg');
INSERT INTO analytes (analyte_id, analyte_name) VALUES (7, 'Mn');
INSERT INTO analytes (analyte_id, analyte_name) VALUES (8, 'Fe2+');
INSERT INTO analytes (analyte_id, analyte_name) VALUES (9, 'Br');
INSERT INTO analytes (analyte_id, analyte_name) VALUES (10, 'Cl');
INSERT INTO analytes (analyte_id, analyte_name) VALUES (11, 'SO4');
INSERT INTO analytes (analyte_id, analyte_name) VALUES (12, 'SO3');
INSERT INTO analytes (analyte_id, analyte_name) VALUES (13, 'NO3');
INSERT INTO analytes (analyte_id, analyte_name) VALUES (14, 'NO2');
INSERT INTO analytes (analyte_id, analyte_name) VALUES (15, 'F');
INSERT INTO analytes (analyte_id, analyte_name) VALUES (16, 'PO4');
INSERT INTO analytes (analyte_id, analyte_name) VALUES (17, 'Thiamin');
INSERT INTO analytes (analyte_id, analyte_name) VALUES (18, 'Nicotinic acid');
INSERT INTO analytes (analyte_id, analyte_name) VALUES (19, 'Nicotinamid');
INSERT INTO analytes (analyte_id, analyte_name) VALUES (20, 'Pyridoxid');
INSERT INTO analytes (analyte_id, analyte_name) VALUES (21, 'Ascorbic acid');
INSERT INTO analytes (analyte_id, analyte_name) VALUES (22, 'GABA');
INSERT INTO analytes (analyte_id, analyte_name) VALUES (23, 'Arginin');
INSERT INTO analytes (analyte_id, analyte_name) VALUES (24, 'Lysin');
INSERT INTO analytes (analyte_id, analyte_name) VALUES (25, 'Phenylalanin');
-- 25 records

SELECT setval('analytes_analyte_id_seq', MAX(analyte_id)) FROM analytes;

--
-- Table structure for table 'matrixes'
--

DROP TABLE IF EXISTS matrixes;

CREATE TABLE matrixes (
  matrix_id SERIAL NOT NULL, 
  matrix_name VARCHAR(255), 
  PRIMARY KEY (matrix_id)
);

--
-- Dumping data for table 'matrixes'
--

INSERT INTO matrixes (matrix_id, matrix_name) VALUES (1, 'soil');
INSERT INTO matrixes (matrix_id, matrix_name) VALUES (2, 'sand');
INSERT INTO matrixes (matrix_id, matrix_name) VALUES (3, 'rocks');
INSERT INTO matrixes (matrix_id, matrix_name) VALUES (4, 'tap water');
INSERT INTO matrixes (matrix_id, matrix_name) VALUES (5, 'rain water');
INSERT INTO matrixes (matrix_id, matrix_name) VALUES (6, 'spring water');
INSERT INTO matrixes (matrix_id, matrix_name) VALUES (7, 'aquarium water');
INSERT INTO matrixes (matrix_id, matrix_name) VALUES (8, 'sea water');
INSERT INTO matrixes (matrix_id, matrix_name) VALUES (9, 'canalization water');
INSERT INTO matrixes (matrix_id, matrix_name) VALUES (10, 'saliva');
INSERT INTO matrixes (matrix_id, matrix_name) VALUES (11, 'blood');
INSERT INTO matrixes (matrix_id, matrix_name) VALUES (12, 'urin');
INSERT INTO matrixes (matrix_id, matrix_name) VALUES (13, 'plant extract');
INSERT INTO matrixes (matrix_id, matrix_name) VALUES (14, 'juic');
INSERT INTO matrixes (matrix_id, matrix_name) VALUES (15, 'drink');
-- 15 records

SELECT setval('matrixes_matrix_id_seq', MAX(matrix_id)) FROM matrixes;

--
-- Table structure for table 'bges'
--

DROP TABLE IF EXISTS bges;

CREATE TABLE bges (
  bge_id SERIAL NOT NULL, 
  bge_name VARCHAR(255), 
  PRIMARY KEY (bge_id)
);

--
-- Dumping data for table 'bges'
--

INSERT INTO bges (bge_id, bge_name) VALUES (1, 'Acetic acid 1M');
INSERT INTO bges (bge_id, bge_name) VALUES (2, 'Acetic acid 2M');
INSERT INTO bges (bge_id, bge_name) VALUES (3, 'Acetic acid 3M');
INSERT INTO bges (bge_id, bge_name) VALUES (4, 'Acetic acid 6M');
INSERT INTO bges (bge_id, bge_name) VALUES (5, 'Mes');
INSERT INTO bges (bge_id, bge_name) VALUES (6, 'His');
-- 6 records

SELECT setval('bges_bge_id_seq', MAX(bge_id)) FROM bges;

--
-- Table structure for table 'user_classes'
--

DROP TABLE IF EXISTS user_classes;

CREATE TABLE user_classes (
  user_class_id SERIAL NOT NULL, 
  user_class_name VARCHAR(255), 
  PRIMARY KEY (user_class_id)
);

--
-- Dumping data for table 'user_classes'
--

INSERT INTO user_classes (user_class_id, user_class_name) VALUES (1, 'Administrators');
INSERT INTO user_classes (user_class_id, user_class_name) VALUES (2, 'Scientists');
INSERT INTO user_classes (user_class_id, user_class_name) VALUES (3, 'Regular users');
-- 3 records

SELECT setval('user_classes_user_class_id_seq', MAX(user_class_id)) FROM user_classes;

--
-- Table structure for table 'users'
--

DROP TABLE IF EXISTS users;

CREATE TABLE users (
  user_id SERIAL NOT NULL, 
  user_name VARCHAR(255), 
  user_class INTEGER DEFAULT 0, 
  PRIMARY KEY (user_id)
);

--
-- Dumping data for table 'users'
--

INSERT INTO users (user_id, user_name, user_class) VALUES (1, 'Administrator', 1);
INSERT INTO users (user_id, user_name, user_class) VALUES (2, 'Scientist', 2);
INSERT INTO users (user_id, user_name, user_class) VALUES (3, 'Regular user', 3);
-- 3 records

SELECT setval('users_user_id_seq', MAX(user_id)) FROM users;

--
-- Table structure for table 'methods'
--

DROP TABLE IF EXISTS methods;

CREATE TABLE methods (
  method_id SERIAL NOT NULL, 
  method_name VARCHAR(255), 
  matrix_id INTEGER DEFAULT 0, 
  capillary_inner INTEGER DEFAULT 0, 
  capillary_outer INTEGER DEFAULT 0, 
  capillary_total INTEGER DEFAULT 0, 
  capillary_effective INTEGER DEFAULT 0, 
  injection_method VARCHAR(255), 
  injection_amount INTEGER DEFAULT 0, 
  injection_unit VARCHAR(255), 
  injection_duration INTEGER DEFAULT 0, 
  frequency INTEGER DEFAULT 0, 
  hv_value INTEGER DEFAULT 0, 
  PRIMARY KEY (method_id),
  method_description VARCHAR(255), 
);

--
-- Dumping data for table 'methods'
--

-- 0 records

SELECT setval('methods_method_id_seq', MAX(method_id)) FROM methods;

CREATE INDEX methods_capillary_effective_id ON methods (capillary_effective);

CREATE INDEX methods_capillary_id ON methods (capillary_inner);

CREATE INDEX methods_capillary_total_id ON methods (capillary_total);

CREATE INDEX methods_frequency_id ON methods (frequency);

CREATE INDEX methods_injection_method_id ON methods (injection_method);

CREATE INDEX methods_matrix_id ON methods (matrix_id);

--
-- Table structure for table 'analyte_measurements'
--

DROP TABLE IF EXISTS analyte_measurements;

CREATE TABLE analyte_measurements (
  analyte_measurement_id SERIAL NOT NULL, 
  test_time VARCHAR(255), 
  method_id INTEGER DEFAULT 0, 
  analyte_id INTEGER DEFAULT 0, 
  amount INTEGER DEFAULT 0, 
  analyte_unit VARCHAR(255), 
  PRIMARY KEY (analyte_measurement_id)
);

--
-- Dumping data for table 'analyte_measurements'
--

-- 0 records

SELECT setval('analyte_measurements_analyte_measurement_id_seq', MAX(analyte_measurement_id)) FROM analyte_measurements;

CREATE INDEX analyte_measurements_analyte_id ON analyte_measurements (analyte_id);

CREATE INDEX analyte_measurements_method_id ON analyte_measurements (method_id);

CREATE INDEX analyte_measurements_test_id1 ON analyte_measurements (test_time);

--
-- Table structure for table 'bge_measurements'
--

DROP TABLE IF EXISTS bge_measurements;

CREATE TABLE bge_measurements (
  bge_measurement_id SERIAL NOT NULL, 
  test_time VARCHAR(255), 
  method_id INTEGER DEFAULT 0, 
  bge_id INTEGER DEFAULT 0, 
  bge_amount INTEGER DEFAULT 0, 
  bge_unit VARCHAR(255), 
  PRIMARY KEY (bge_measurement_id)
);

--
-- Dumping data for table 'bge_measurements'
--

-- 0 records

SELECT setval('bge_measurements_bge_measurement_id_seq', MAX(bge_measurement_id)) FROM bge_measurements;

CREATE INDEX bge_measurements_bge_id ON bge_measurements (bge_id);

CREATE INDEX bge_measurements_method_id ON bge_measurements (method_id);

CREATE INDEX bge_measurements_test_id1 ON bge_measurements (test_time);

--
-- Table structure for table 'measurements'
--

DROP TABLE IF EXISTS measurements;

CREATE TABLE measurements (
  measurement_id SERIAL NOT NULL, 
  test_id INTEGER DEFAULT 0, 
  measurement INTEGER DEFAULT 0, 
  PRIMARY KEY (measurement_id)
);

--
-- Dumping data for table 'measurements'
--

-- 0 records

SELECT setval('measurements_measurement_id_seq', MAX(measurement_id)) FROM measurements;

CREATE INDEX measurements_test_id ON measurements (test_id);

--
-- Table structure for table 'tests'
--

DROP TABLE IF EXISTS tests;

CREATE TABLE tests (
  test_id SERIAL NOT NULL, 
  user_id INTEGER DEFAULT 0, 
  method_id INTEGER DEFAULT 0, 
  test_time VARCHAR(255),
  test_duration INTEGER DEFAULT 0, 
  PRIMARY KEY (test_id)
);

--
-- Dumping data for table 'tests'
--

-- 0 records

SELECT setval('tests_test_id_seq', MAX(test_id)) FROM tests;

CREATE INDEX tests_method_id ON tests (method_id);

CREATE INDEX tests_teststest_time ON tests (test_time);

CREATE INDEX tests_user_id ON tests (user_id);
