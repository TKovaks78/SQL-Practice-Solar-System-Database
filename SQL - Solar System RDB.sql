CREATE TABLE SOLAR_SYSTEM_OBJECTS (

  OBJECT_ID VARCHAR(20) NOT NULL,

  OBJECT_NAME VARCHAR(20) NOT NULL,

  OBJECT_TYPE CHAR(5) NOT NULL,

  PRIMARY KEY (OBJECT_ID));

CREATE TABLE COMETS (

  COMET_ID VARCHAR(20) NOT NULL,

  COMET_NAME VARCHAR(20) NOT NULL,

  COMET_SPEED_KMH VARCHAR(20) NOT NULL,

  PRIMARY KEY (COMET_ID));
  
 CREATE TABLE STARS (

  STAR_ID VARCHAR(20) NOT NULL,

  STAR_NAME VARCHAR(10) NOT NULL,

  STAR_WEIGHT FLOAT NOT NULL,
  
  WEIGHT_UNIT CHAR(5) NOT NULL,
  
  STAR_DIAMETER FLOAT NOT NULL,
  
  DIAMETER_UNIT CHAR(5) NOT NULL,
  
  ELEMENT_COMPOSITION_ID VARCHAR(10),
  
  PRIMARY KEY (STAR_ID));

CREATE TABLE PLANETS (

  PLANET_ID VARCHAR (20) NOT NULL,

  PLANET_NAME VARCHAR(20) NOT NULL,

  PLANET_METRICS_ID CHAR(5) NOT NULL,
  
  DAYS_OF_ROTATION INT,
  
  DAYS_OF_REVOLUTION INT,
  
  DISTANCE_TO_SUN FLOAT,
  
  DISTANCE_TO_EARTH FLOAT,
  
  DISTANCE_UNIT VARCHAR(10) NOT NULL,
  
  ELEMENT_COMPOSITION_ID VARCHAR(10) NOT NULL,
  
  SATELLITE_ID VARCHAR(10) NOT NULL,
  
  DISCOVERY_ID VARCHAR(10) NOT NULL,
  
  NUMBER_OF_RING SMALLINT,
  
  LAYERS_OF_ATMOSPHERE SMALLINT,
    
PRIMARY KEY (PLANET_ID));

CREATE TABLE MOONS (

  PLANET_ID VARCHAR(10) NOT NULL,

  NUMSEQ SMALLINT NOT NULL,

  MOON_NAME VARCHAR(20),
  
  MOON_WEIGHT FLOAT NOT NULL,
  
  WEIGHT_UNIT CHAR(5) NOT NULL,

  MOON_DIAMETER FLOAT NOT NULL,
  
  DIAMETER_UNIT CHAR(5) NOT NULL,
  
 CONSTRAINT PK_MOONS PRIMARY KEY (PLANET_ID, NUMSEQ));
  
CREATE TABLE DWARF_PLANETS (

	DWARF_PLANET_ID VARCHAR (20) NOT NULL, 
	
	DWARF_PLANET_NAME VARCHAR (10) NOT NULL,
	
	DWARF_PLANETS_WEIGHT FLOAT, 
	
	WEIGHT_UNIT CHAR (5) NOT NULL, 
	
	DWARF_PLANETS_DIAMETER FLOAT,
	
	DIAMETER_UNIT CHAR (5) NOT NULL,
	
	ELEMENT_COMPOSITION_ID VARCHAR (10) NOT NULL,

PRIMARY KEY (DWARF_PLANET_ID)); 
  
CREATE TABLE ELEMENT_COMPOSITION (

	ELEMENT_COMPOSITION_ID VARCHAR (10) NOT NULL,

	NUMSEQ SMALLINT NOT NULL, 

	ELEMENT_ID CHAR (2) NOT NULL, 

	ELEMENT_QUANTITY FLOAT, 

CONSTRAINT PK_ELEMENT_COMPOSITION PRIMARY KEY (ELEMENT_COMPOSITION_ID, NUMSEQ)); 

CREATE TABLE ELEMENTS (

	ELEMENT_ID CHAR (2) NOT NULL, 
	
	ELEMENT_DESCRIPTION VARCHAR (20) NOT NULL,  

PRIMARY KEY (ELEMENT_ID)); 

CREATE TABLE HUMAN_SATELLITES (

	SATELLITE_ID VARCHAR (10) NOT NULL, 

	NUMSEQ SMALLINT NOT NULL,

	SATELLITE_NAME VARCHAR (20) NOT NULL, 

	LAUNCHDATE DATE,   

CONSTRAINT HUMAN_SATELLITES PRIMARY KEY (SATELLITE_ID, NUMSEQ)); 

CREATE TABLE DISCOVERY (

	DISCOVERY_ID CHAR (5) NOT NULL,  

	DISCOVERED_BY_ID CHAR(3),
	
	DISCOVERY_DATE DATE,

PRIMARY KEY (DISCOVERY_ID)); 

CREATE TABLE DISCOVERS (
    DISCOVERED_BY_ID CHAR(3) NOT NULL,
    FIRST_NAME	VARCHAR (50),
    LAST_NAME	VARCHAR (50),
    NATIONALITY	VARCHAR (50),
PRIMARY KEY (DISCOVERED_BY_ID)
);

CREATE TABLE OBJECT_DETAILS ( 
 
	OBJECT_TYPE CHAR (5) NOT NULL,

	OBJECT_DESCRIPTION VARCHAR (20) NOT NULL, 
	
PRIMARY KEY (OBJECT_TYPE));

CREATE TABLE METRICS ( 
 
	METRIC_UNIT CHAR (5) NOT NULL, 
	
	METRIC_DESCRIPTION VARCHAR (20) NOT NULL,
	
PRIMARY KEY (METRIC_UNIT));
 
CREATE TABLE PLANET_METRICS ( 
 
	PLANET_METRICS_ID VARCHAR (10) NOT NULL, 
	
	PLANET_DIAMETER FLOAT, 

	DIAMETER_UNIT CHAR(5) NOT NULL, 

	PLANET_WEIGHT FLOAT,

	WEIGHT_UNIT CHAR(5) NOT NULL,

	PLANET_GRAVITY FLOAT,

	GRAVITY_UNIT CHAR(5) NOT NULL,
	
PRIMARY KEY (PLANET_METRICS_ID));

INSERT INTO SOLAR_SYSTEM_OBJECTS (OBJECT_ID,OBJECT_NAME,OBJECT_TYPE)
	VALUES
		('1C', 'Halley', 'C'),
		('2C', 'Encke', 'C'),
		('3C', 'DArrest', 'C'),
		('4C', 'Tempel 1', 'C'),
		('5C', 'Borrelly', 'C'),
		('6C', 'Zinner', 'C'),
		('7C', 'Grigg', 'C'),
		('8C', 'Crommelin', 'C'),
		('9C', 'Honda', 'C'),
		('10C', 'Biela', 'C'),
		('11C', 'Chiron', 'C'),
		('12C', 'Ikeya', 'C'),
		('13C', 'Mykos', 'C'),
		('14C', 'Arend', 'C'),
		('15C', 'Roland', 'C'),
		('1S', 'Sun', 'S'),
		('2S', 'Polaris', 'S'),
		('3S', 'Sirius', 'S'),
		('4S', 'Andromeda', 'S'),
		('5S', 'Regulus', 'S'),
		('6S', 'Orion', 'S'),
		('7S', 'Leo', 'S'),
		('8S', 'Lynx', 'S'),
		('9S', 'Cygnus', 'S'),
		('10S', 'Ursa Major', 'S'),
		('11S', 'Crate', 'S'),
		('12S', 'Scorpius', 'S'),
		('13S', 'Aquila', 'S'),
		('14S', 'Serpens', 'S'),
		('15S', 'Carina', 'S'),
		('1P', 'Mercury', 'P'),
		('2P', 'Venus', 'P'),
		('3P', 'Earth', 'P'),
		('4P', 'Mars', 'P'),
		('5P', 'Jupiter', 'P'),
		('6P', 'Saturn', 'P'),
		('7P', 'Neptune', 'P'),
		('8P', 'Uranus', 'P'),
		('9P', 'Apollo', 'P'),
		('10P', 'Minerva', 'P'),
		('11P', 'Diana', 'P'),
		('12P', 'Vulcan', 'P'),
		('13P', 'Cupid', 'P'),
		('14P', 'Vesta', 'P'),
		('15P', 'Isis', 'P'),
		('1DP', 'Ceres', 'DP'),
		('2DP', 'Pluto', 'DP'),
		('3DP', 'Iris', 'DP'),
		('4DP', 'Zeus', 'DP'),
		('5DP', 'Hera', 'DP'),
		('6DP', 'Hades', 'DP'),
		('7DP', 'Percy', 'DP'),
		('8DP', 'Adonis', 'DP'),
		('9DP', 'Ares', 'DP'),
		('10DP', 'Nike', 'DP'),
		('11DP', 'Janus', 'DP'),
		('12DP', 'Demeter', 'DP'),
		('13DP', 'Hypnos', 'DP'),
		('14DP', 'Tyche', 'DP'),
		('15DP', 'Hecate', 'DP');
		
INSERT INTO COMETS (COMET_ID,COMET_NAME,COMET_SPEED_KMH)
	VALUES
		('1C', 'Halley', '2401'),
		('2C', 'Encke', '3234'),
		('3C', 'DArrest', '4096'),
		('4C', 'Tempel 1', '4832'),
		('5C', 'Borrelly', '3104'),
		('6C', 'Zinner', '1547'),
		('7C', 'Grigg', '3624'),
		('8C', 'Crommelin', '1938'),
		('9C', 'Honda', '3552'),
		('10C', 'Biela', '3414'),
		('11C', 'Chiron', '2994'),
		('12C', 'Ikeya', '4414'),
		('13C', 'Mykos', '2721'),
		('14C', 'Arend', '3158'),
		('15C', 'Roland', '4079');
		
INSERT INTO DWARF_PLANETS (DWARF_PLANET_ID,DWARF_PLANET_NAME,DWARF_PLANETS_WEIGHT,WEIGHT_UNIT,DWARF_PLANETS_DIAMETER,DIAMETER_UNIT,ELEMENT_COMPOSITION_ID)
	VALUES
		('1DP', 'Ceres', '19', 'K1025', '1038', 'KM', 'DP01'),
		('2DP', 'Pluto', '42', 'K1025', '1572', 'KM', 'DP02'),
		('3DP', 'Iris', '11', 'K1025', '1685', 'KM', 'DP03'),
		('4DP', 'Zeus', '21', 'K1025', '742', 'KM', 'DP04'),
		('5DP', 'Hera', '45', 'K1025', '581', 'KM', 'DP05'),
		('6DP', 'Hades', '28', 'K1025', '1550', 'KM', 'DP06'),
		('7DP', 'Percy', '13', 'K1025', '1671', 'KM', 'DP07'),
		('8DP', 'Adonis', '17', 'K1025', '1670', 'KM', 'DP08'),
		('9DP', 'Ares', '30', 'K1025', '1541', 'KM', 'DP09'),
		('10DP', 'Nike', '45', 'K1025', '1160', 'KM', 'DP10'),
		('11DP', 'Janus', '50', 'K1025', '1911', 'KM', 'DP11'),
		('12DP', 'Demeter', '28', 'K1025', '940', 'KM', 'DP12'),
		('13DP', 'Hypnos', '23', 'K1025', '1070', 'KM', 'DP13'),
		('14DP', 'Tyche', '41', 'K1025', '1717', 'KM', 'DP14'),
		('15DP', 'Hecate', '32', 'K1025', '1320', 'KM', 'DP15');
	
INSERT INTO STARS (STAR_ID,STAR_NAME,STAR_WEIGHT,WEIGHT_UNIT,STAR_DIAMETER,DIAMETER_UNIT,ELEMENT_COMPOSITION_ID)
	VALUES
		('1S', 'Sun', '1989', 'K1025', '1.4', 'MN-KM', 'S001'),
		('2S', 'Polaris', '1833', 'K1025', '1.024', 'MN-KM', 'S002'),
		('3S', 'Sirius', '2369', 'K1025', '1.227', 'MN-KM', 'S003'),
		('4S', 'Andromeda', '1999', 'K1025', '1.053', 'MN-KM', 'S004'),
		('5S', 'Regulus', '1840', 'K1025', '0.993', 'MN-KM', 'S005'),
		('6S', 'Orion', '2070', 'K1025', '0.944', 'MN-KM', 'S006'),
		('7S', 'Leo', '1620', 'K1025', '1.45', 'MN-KM', 'S007'),
		('8S', 'Lynx', '1585', 'K1025', '1.236', 'MN-KM', 'S008'),
		('9S', 'Cygnus', '1937', 'K1025', '1.37', 'MN-KM', 'S009'),
		('10S', 'Ursa Major', '2205', 'K1025', '0.987', 'MN-KM', 'S010'),
		('11S', 'Crate', '2038', 'K1025', '1.011', 'MN-KM', 'S011'),
		('12S', 'Scorpius', '1769', 'K1025', '1.004', 'MN-KM', 'S012'),
		('13S', 'Aquila', '1533', 'K1025', '1.058', 'MN-KM', 'S013'),
		('14S', 'Serpens', '1573', 'K1025', '1.479', 'MN-KM', 'S014'),
		('15S', 'Carina', '2229', 'K1025', '1.496', 'MN-KM', 'S015');
		
INSERT INTO PLANETS (PLANET_ID,PLANET_NAME,PLANET_METRICS_ID,DAYS_OF_ROTATION,DAYS_OF_REVOLUTION,DISTANCE_TO_SUN,DISTANCE_TO_EARTH,DISTANCE_UNIT,ELEMENT_COMPOSITION_ID,SATELLITE_ID,DISCOVERY_ID,NUMBER_OF_RING,LAYERS_OF_ATMOSPHERE)
	VALUES
		('1P', 'Mercury', 'PM1', '57', '88.00', '0.39', '0.61', 'AstUn', 'P001', 'PS001', 'PD001', '0', '1'),
		('2P', 'Venus', 'PM2', '243', '225.00', '0.72', '0.28', 'AstUn', 'P002', 'PS002', 'PD002', '0', '3'),
		('3P', 'Earth', 'PM3', '1', '365.00', '1', '0', 'AstUn', 'P003', 'PS003', 'PD003', '0', '7'),
		('4P', 'Mars', 'PM4', '1', '686.00', '1.52', '0.5', 'AstUn', 'P004', 'PS004', 'PD004', '0', '3'),
		('5P', 'Jupiter', 'PM5', '1', '4015.00', '5.2', '4.2', 'AstUn', 'P005', 'PS005', 'PD005', '4', '3'),
		('6P', 'Saturn', 'PM6', '1', '10950.00', '9.54', '8.52', 'AstUn', 'P006', 'PS006', 'PD006', '7', '2'),
		('7P', 'Neptune', 'PM7', '1', '30660.00', '19.2', '15.4', 'AstUn', 'P007', 'PS007', 'PD007', '5', '3'),
		('8P', 'Uranus', 'PM8', '1', '59860.00', '30.6', '18.2', 'AstUn', 'P008', 'PS008', 'PD008', '13', '2'),
		('9P', 'Apollo', 'PM9', '1', '6570.00', '25.2', '17.4', 'AstUn', 'P009', 'PS009', 'PD009', '16', '5'),
		('10P', 'Minerva', 'PM10', '1', '13505.00', '6.5', '13.2', 'AstUn', 'P010', 'PS010', 'PD010', '17', '1'),
		('11P', 'Diana', 'PM11', '1', '6205', '16.3', '5.7', 'AstUn', 'P011', 'PS011', 'PD011', '6', '2'),
		('12P', 'Vulcan', 'PM12', '1', '16790.00', '29.8', '6.1', 'AstUn', 'P012', 'PS012', 'PD012', '15', '3'),
		('13P', 'Cupid', 'PM13', '1', '6570.00', '5.3', '17.2', 'AstUn', 'P013', 'PS013', 'PD013', '19', '1'),
		('14P', 'Vesta', 'PM14', '1', '4745.00', '27.3', '15.7', 'AstUn', 'P014', 'PS014', 'PD014', '16', '2'),
		('15P', 'Isis', 'PM15', '1', '15330.00', '29.9', '11.6', 'AstUn', 'P015', 'PS015', 'PD015', '19', '5');
		
INSERT INTO MOONS (PLANET_ID,NUMSEQ,MOON_NAME,MOON_WEIGHT,WEIGHT_UNIT,MOON_DIAMETER,DIAMETER_UNIT)
	VALUES
		('3P', '1', 'Moon', '7.3', 'K1022', '3474', 'KM'),
		('5P', '1', 'Io', '8.4', 'K1022', '3660', 'KM'),
		('5P', '2', 'Callisto', '9.1', 'K1022', '2431', 'KM'),
		('5P', '3', 'Europa', '11.1', 'K1022', '2635', 'KM'),
		('5P', '4', 'Ganymede', '18', 'K1022', '4076', 'KM'),
		('6P', '1', 'Titan', '18.5', 'K1022', '2878', 'KM'),
		('6P', '2', 'Mimas', '5.1', 'K1022', '4154', 'KM'),
		('6P', '3', 'Hyperion', '16.5', 'K1022', '3057', 'KM'),
		('6P', '4', 'Rhea', '6.7', 'K1022', '2585', 'KM'),
		('10P', '1', 'Fenrir', '12.2', 'K1022', '4375', 'KM'),
		('12P', '1', 'Loge', '16.3', 'K1022', '2827', 'KM'),
		('12P', '2', 'Pan', '9.8', 'K1022', '4170', 'KM'),
		('14P', '1', 'Oberon', '20.1', 'K1022', '3188', 'KM'),
		('14P', '2', 'Ariel', '14.3', 'K1022', '3796', 'KM'),
		('15P', '1', 'Puck', '7.1', 'K1022', '2230', 'KM');
		
		
INSERT INTO ELEMENT_COMPOSITION (ELEMENT_COMPOSITION_ID,NUMSEQ,ELEMENT_ID,ELEMENT_QUANTITY)
	VALUES
		('S001', '1', 'H', '1790'),
		('S001', '2', 'He', '199'),
		('S002', '1', 'H', '1595'),
		('S002', '2', 'He', '238'),
		('S003', '1', 'H', '1800'),
		('S003', '2', 'He', '569'),
		('S004', '1', 'H', '1839'),
		('S004', '2', 'He', '160'),
		('S005', '1', 'H', '1730'),
		('S005', '2', 'He', '110'),
		('S006', '1', 'H', '1842'),
		('S006', '2', 'He', '228'),
		('S007', '1', 'H', '1361'),
		('S007', '2', 'He', '259'),
		('S008', '1', 'H', '1157'),
		('S008', '2', 'He', '428'),
		('S009', '1', 'H', '1530'),
		('S009', '2', 'He', '407'),
		('S010', '1', 'H', '1764'),
		('S010', '2', 'He', '441'),
		('S011', '1', 'H', '1590'),
		('S011', '2', 'He', '448'),
		('S012', '1', 'H', '1645'),
		('S012', '2', 'He', '124'),
		('S013', '1', 'H', '1334'),
		('S013', '2', 'He', '199'),
		('S014', '1', 'H', '1431'),
		('S014', '2', 'He', '142'),
		('S015', '1', 'H', '1984'),
		('S015', '2', 'He', '245'),
		('P001', '1', 'O', '0.165'),
		('P001', '2', 'Na', '0.099'),
		('P001', '3', 'H', '0.033'),
		('P001', '4', 'He', '0.0165'),
		('P001', '5', 'K', '0.0165'),
		('P002', '1', 'CO', '4.6752'),
		('P002', '2', 'N', '0.1948'),
		('P003', '1', 'O', '2.7462'),
		('P003', '2', 'Si', '1.9104'),
		('P003', '3', 'Al', '0.597'),
		('P003', '4', 'Fe', '0.597'),
		('P003', '5', 'Ca', '0.1194'),
		('P004', '1', 'Fe', '0.0365'),
		('P004', '2', 'Ni', '0.0219'),
		('P004', '3', 'S', '0.0146'),
		('P005', '1', 'H', '0.5778'),
		('P005', '2', 'He', '0.0642'),
		('P006', '1', 'H', '1689.22'),
		('P006', '2', 'He', '208.78'),
		('P007', '1', 'H', '482.8'),
		('P007', '2', 'He', '79.52'),
		('P007', '3', 'CH', '5.68'),
		('P008', '1', 'CH', '65.968'),
		('P008', '2', 'HO', '20.832'),
		('P009', '1', 'Fe', '88.74'),
		('P009', '2', 'Al', '13.26'),
		('P010', '1', 'H', '806.84'),
		('P010', '2', 'He', '61.39'),
		('P010', '3', 'N', '8.77'),
		('P011', '1', 'Ni', '696.6'),
		('P011', '2', 'Si', '113.4'),
		('P012', '1', 'S', '1180.85'),
		('P012', '2', 'N', '62.15'),
		('P013', '1', 'Ni', '603.68'),
		('P013', '2', 'Ca', '54.88'),
		('P013', '3', 'N', '27.44'),
		('P014', '1', 'H', '1093.88'),
		('P014', '2', 'He', '95.12'),
		('P015', '1', 'Na', '418.2'),
		('P015', '2', 'O', '223.04'),
		('P015', '3', 'Ca', '41.82'),
		('P015', '4', 'Si', '13.94'),
		('DP01', '1', 'H', '7'),
		('DP01', '2', 'He', '12'),
		('DP02', '1', 'H', '22'),
		('DP02', '2', 'He', '10'),
		('DP02', '3', 'Ca', '10'),
		('DP03', '1', 'He', '1'),
		('DP03', '2', 'H', '10'),
		('DP04', '1', 'He', '1'),
		('DP04', '2', 'H', '15'),
		('DP04', '3', 'Na', '3'),
		('DP04', '4', 'Ca', '2'),
		('DP05', '1', 'He', '20'),
		('DP05', '2', 'H', '25'),
		('DP06', '1', 'He', '8'),
		('DP06', '2', 'H', '10'),
		('DP06', '3', 'Na', '10'),
		('DP07', '1', 'He', '5'),
		('DP07', '2', 'H', '8'),
		('DP08', '1', 'He', '10'),
		('DP08', '2', 'H', '7'),
		('DP09', '1', 'He', '15'),
		('DP09', '2', 'H', '15'),
		('DP10', '1', 'He', '40'),
		('DP10', '2', 'H', '5'),
		('DP11', '1', 'He', '20'),
		('DP11', '2', 'H', '20'),
		('DP11', '3', 'Na', '10'),
		('DP12', '1', 'He', '8'),
		('DP12', '2', 'H', '20'),
		('DP13', '1', 'He', '20'),
		('DP13', '2', 'O', '3'),
		('DP14', '1', 'Na', '41'),
		('DP15', '1', 'He', '12'),
		('DP15', '2', 'K', '10'),
		('DP15', '3', 'CO', '10');
	
INSERT INTO ELEMENTS (ELEMENT_ID,ELEMENT_DESCRIPTION)
	VALUES
		('Al', 'Aluminum'),
		('Ca', 'Calcium'),
		('CH', 'Methane'),
		('CO', 'Carbon Dioxide'),
		('Fe', 'Iron'),
		('H', 'Hydrogen'),
		('He', 'Helium'),
		('HO', 'Water'),
		('K', 'Potassium'),
		('N', 'Nitrogen'),
		('Na', 'Sodium'),
		('Ni', 'Nickel'),
		('O', 'Oxygen'),
		('S', 'Sulphur'),
		('Si', 'Silicon');


INSERT INTO HUMAN_SATELLITES (SATELLITE_ID,NUMSEQ,SATELLITE_NAME,LAUNCHDATE)
	VALUES
		('PS001', '1', 'Mariner10', '2004-03-01'),
		('PS001', '2', 'Messenger', '2008-04-13'),
		('PS002', '1', 'Magellan', '1989-05-04'),
		('PS002', '2', 'Cassini', '1997-10-15'),
		('PS003', '1', 'Sputnik', '1957-10-04'),
		('PS003', '2', 'Juno', '1996-04-18'),
		('PS003', '3', 'Mariner2', '2002-07-27'),
		('PS004', '1', 'Mangalyaan', '2014-09-24'),
		('PS004', '2', 'Maven', '2016-10-19'),
		('PS004', '3', 'Opportunity', '2003-07-08'),
		('PS005', '1', 'Pioneer10', '1973-04-19'),
		('PS006', '1', 'Cosmos1', '1989-03-15'),
		('PS006', '2', 'Cosmos2', '2004-05-23'),
		('PS007', '1', 'Vega10', '2014-10-31'),
		('PS008', '1', 'Ikaros5', '2019-01-21'),
		('PS008', '2', 'Ikaros10', '2021-10-10'),
		('PS009', '1', 'Zond', '1991-12-24'),
		('PS010', '1', 'Venera1', '2004-02-01'),
		('PS010', '2', 'Venera2', '1994-01-14'),
		('PS010', '3', 'Venera3', '2003-09-13'),
		('PS011', '1', 'Havoc', '2005-08-28'),
		('PS012', '1', 'Vise10', '2007-12-09'),
		('PS012', '2', 'Vise20', '2018-06-04'),
		('PS013', '1', 'Zephyr', '2020-09-17'),
		('PS014', '1', 'Ranger5', '2009-07-21'),
		('PS014', '2', 'Ranger15', '2018-06-03'),
		('PS015', '1', 'Luna', '2021-08-16');
		
INSERT INTO DISCOVERY (DISCOVERY_ID,DISCOVERED_BY_ID,DISCOVERY_DATE)
	VALUES
		('PD001', 'D01', '1903-01-03'),
		('PD002', 'D02', '1904-05-13'),
		('PD003', 'D03', '1900-05-27'),
		('PD004', 'D04', '1902-07-21'),
		('PD005', 'D05', '1907-10-08'),
		('PD006', 'D04', '1908-05-15'),
		('PD007', 'D06', '1913-10-29'),
		('PD008', 'D06', '1912-07-05'),
		('PD009', 'D05', '1916-09-10'),
		('PD010', 'D07', '1919-05-03'),
		('PD011', 'D04', '1921-04-17'),
		('PD012', 'D06', '1920-03-18'),
		('PD013', 'D07', '1922-04-27'),
		('PD014', 'D05', '1922-11-05'),
		('PD015', 'D07', '1925-08-24');
	
INSERT INTO DISCOVERS (DISCOVERED_BY_ID,FIRST_NAME,LAST_NAME,NATIONALITY)
	VALUES
		('D01', 'Philolaus', 'DiCroton', 'Greek'),
		('D02', 'Hicetas', '', 'Greek'),
		('D03', 'Aristarchus', 'Samos', 'Greek'),
		('D04', 'Copernicus', '', 'Polish'),
		('D05', 'Galileo', 'Galilei', 'Italian'),
		('D06', 'Herschel', 'William', 'German'),
		('D07', 'Piazzi', '', 'Italian');
		
INSERT INTO OBJECT_DETAILS (OBJECT_TYPE,OBJECT_DESCRIPTION)
	VALUES
		('C', 'Comet'),
		('S', 'Star'),
		('P', 'Planet'),
		('DP', 'Dwarf Planet');
		
INSERT INTO METRICS (METRIC_UNIT,METRIC_DESCRIPTION)
	VALUES
		('K1025', '10^25 kilograms'),
		('K1022', '10^22 kilograms'),
		('MN-KM', 'Million Kilometers'),
		('AstUn', 'Astronomical Units'),
		('KM', 'Kilometers'),
		('M/s2', 'Meter per sq second');
		
INSERT INTO PLANET_METRICS (PLANET_METRICS_ID,PLANET_DIAMETER,DIAMETER_UNIT,PLANET_WEIGHT,WEIGHT_UNIT,PLANET_GRAVITY,GRAVITY_UNIT)
	VALUES
		('PM1', '4879', 'KM', '0.33', 'K1025', '3.7', 'M/s2'),
		('PM2', '12104', 'KM', '5', 'K1025', '9', 'M/s2'),
		('PM3', '12756', 'KM', '6', 'K1025', '10', 'M/s2'),
		('PM4', '3475', 'KM', '0.073', 'K1025', '1.6', 'M/s2'),
		('PM5', '6792', 'KM', '0.642', 'K1025', '3.7', 'M/s2'),
		('PM6', '142984', 'KM', '1898', 'K1025', '23', 'M/s2'),
		('PM7', '120536', 'KM', '568', 'K1025', '9', 'M/s2'),
		('PM8', '51118', 'KM', '87', 'K1025', '9', 'M/s2'),
		('PM9', '49528', 'KM', '102', 'K1025', '11', 'M/s2'),
		('PM10', '2376', 'KM', '877', 'K1025', '0.7', 'M/s2'),
		('PM11', '103809', 'KM', '810', 'K1025', '9.2', 'M/s2'),
		('PM12', '85973', 'KM', '1243', 'K1025', '3.7', 'M/s2'),
		('PM13', '58607', 'KM', '686', 'K1025', '6.4', 'M/s2'),
		('PM14', '95107', 'KM', '1189', 'K1025', '7.5', 'M/s2'),
		('PM15', '25715', 'KM', '697', 'K1025', '8.1', 'M/s2');


ALTER TABLE SOLAR_SYSTEM_OBJECTS
	ADD FOREIGN KEY (OBJECT_TYPE)
		REFERENCES OBJECT_DETAILS (OBJECT_TYPE);

ALTER TABLE PLANET_METRICS
	ADD FOREIGN KEY (WEIGHT_UNIT)
		REFERENCES METRICS (METRIC_UNIT),
	ADD FOREIGN KEY (DIAMETER_UNIT)
		REFERENCES METRICS (METRIC_UNIT),	
	ADD FOREIGN KEY (GRAVITY_UNIT)
		REFERENCES METRICS (METRIC_UNIT);
		
ALTER TABLE COMETS
	ADD FOREIGN KEY (COMET_ID)
		REFERENCES SOLAR_SYSTEM_OBJECTS (OBJECT_ID);
		
ALTER TABLE STARS
	ADD FOREIGN KEY (STAR_ID)
		REFERENCES SOLAR_SYSTEM_OBJECTS (OBJECT_ID),
	ADD FOREIGN KEY (WEIGHT_UNIT)
		REFERENCES METRICS (METRIC_UNIT),
	ADD FOREIGN KEY (DIAMETER_UNIT)
		REFERENCES METRICS (METRIC_UNIT),
	ADD FOREIGN KEY (ELEMENT_COMPOSITION_ID)
		REFERENCES ELEMENT_COMPOSITION (ELEMENT_COMPOSITION_ID);
		
ALTER TABLE PLANETS
	ADD FOREIGN KEY (PLANET_ID)
		REFERENCES SOLAR_SYSTEM_OBJECTS (OBJECT_ID),
	ADD FOREIGN KEY (PLANET_METRICS_ID)
		REFERENCES PLANET_METRICS (PLANET_METRICS_ID),
	ADD FOREIGN KEY (DISTANCE_UNIT)
		REFERENCES METRICS (METRIC_UNIT),
	ADD FOREIGN KEY (ELEMENT_COMPOSITION_ID)
		REFERENCES ELEMENT_COMPOSITION (ELEMENT_COMPOSITION_ID),
	ADD FOREIGN KEY (SATELLITE_ID)
		REFERENCES HUMAN_SATELLITES (SATELLITE_ID),
	ADD FOREIGN KEY (DISCOVERY_ID)
		REFERENCES DISCOVERY (DISCOVERY_ID);
		
ALTER TABLE MOONS
	ADD FOREIGN KEY (PLANET_ID)
		REFERENCES PLANETS (PLANET_ID),
    ADD FOREIGN KEY (WEIGHT_UNIT)
		REFERENCES METRICS (METRIC_UNIT),
	ADD FOREIGN KEY (DIAMETER_UNIT)
		REFERENCES METRICS (METRIC_UNIT);
		
ALTER TABLE DWARF_PLANETS
	ADD FOREIGN KEY (DWARF_PLANET_ID)
		REFERENCES SOLAR_SYSTEM_OBJECTS (OBJECT_ID),
	ADD FOREIGN KEY (ELEMENT_COMPOSITION_ID)
		REFERENCES ELEMENT_COMPOSITION (ELEMENT_COMPOSITION_ID),
	ADD FOREIGN KEY (WEIGHT_UNIT)
		REFERENCES METRICS (METRIC_UNIT),
	ADD FOREIGN KEY (DIAMETER_UNIT)
		REFERENCES METRICS (METRIC_UNIT);
		
ALTER TABLE ELEMENT_COMPOSITION
	ADD FOREIGN KEY (ELEMENT_ID)
		REFERENCES ELEMENTS (ELEMENT_ID);

ALTER TABLE DISCOVERY
	ADD FOREIGN KEY (DISCOVERED_BY_ID)
		REFERENCES DISCOVERS (DISCOVERED_BY_ID);		