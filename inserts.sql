INSERT INTO public.aviao(
	modelo_aviao, capacidade_bagagem_m3, capacidade_passageiros)
	VALUES ('737 MAX-10', 55.5, 204),
           ('787-10', 191.4, 440), 
		   ('A220-300', 31.6, 150),
		   ('A380-800', 175.2, 853),
		   ('CRJ1000', 19.4, 104);


INSERT INTO public.cidade(
	codigo_cidade, nome, pais)
	VALUES ('SAO', 'São Paulo', 'Brasil'), 
	       ('RIO', 'Rio de Janeiro', 'Brasil'), 
	       ('BUE', 'Buenos Aires', 'Argentina'), 
	       ('BSB', 'Brasília', 'Brasil'),  
	       ('CWB', 'Curitiba', 'Brasil'), 
	       ('BHZ', 'Belo Horizonte', 'Brasil'), 
	       ('FLN', 'Florianópolis', 'Brasil'), 
	       ('SSA', 'Salvador', 'Brasil'), 
	       ('FOR', 'Fortaleza', 'Brasil'), 
	       ('SCL', 'Santiago', 'Chile'), 
	       ('NYC', 'Nova York', 'Estados Unidos da América'), 
	       ('MEX', 'Cidade do México', 'México'), 
	       ('GDL', 'Guadalajara', 'México'), 
	       ('LON', 'Londres', 'Reino Unido'), 
	       ('LDB', 'Londrina', 'Brasil'), 
	       ('LIS', 'Lisboa', 'Portugal'), 
	       ('PAR', 'Paris', 'França'), 
	       ('DXB', 'Dubai', 'Emirados Árabes Unidos'), 
	       ('WAS', 'Washington, D.C.', 'Estados Unidos da América'), 
	       ('ATL', 'Atlanta', 'Estados Unidos da América'), 
	       ('TYO', 'Tóquio', 'Japão'),
	       ('DEN', 'Denver', 'Estados Unidos da América');


INSERT INTO public.aeroporto(
  codigo_aeroporto, codigo_cidade, nome)
  VALUES 
    ('EZE', 'BUE', 'Aeroporto Internacional Ministro Pistarini'), 
    ('BSB', 'BSB', 'Aeroporto Internacional de Brasília'), 
    ('GIG', 'RIO', 'Aeroporto Internacional Tom Jobim'), 
    ('SDU', 'RIO', 'Aeroporto Santos Dumont'), 
    ('CWB', 'CWB', 'Aeroporto Internacional Afonso Pena'), 
    ('PLU', 'BHZ', 'Aeroporto de Belo Horizonte'), 
    ('FLN', 'FLN', 'Aeroporto Internacional de Florianópolis'),
    ('SSA', 'SSA', 'Aeroporto Internacional de Salvador'), 
    ('FOR', 'FOR', 'Aeroporto Internacional de Fortaleza'), 
    ('SCL', 'SCL', 'Aeroporto Internacional Arturo Merino Benítez'), 
    ('JFK', 'NYC', 'Aeroporto Internacional John F. Kennedy'), 
    ('MEX', 'MEX', 'Aeroporto Internacional da Cidade do México'), 
    ('GDL', 'GDL', 'Aeroporto Internacional de Guadalajara'), 
    ('LHR', 'LON', 'Aeroporto de Londres Heathrow'), 
    ('LDB', 'LDB', 'Aeroporto de Londrina'), 
    ('HDL', 'LIS', 'Aeroporto Humberto Delgado'), 
    ('CDG', 'PAR', 'Aeroporto de Paris-Charles de Gaulle'), 
    ('DXB', 'DXB', 'Aeroporto Internacional de Dubai'), 
    ('DCA', 'WAS', 'Aeroporto Nacional Ronald Reagan de Washington'), 
    ('ATL', 'ATL', 'Aeroporto Internacional Hartsfield-Jackson Atlanta'), 
    ('HND', 'TYO', 'Aeroporto Haneda'), 
    ('DEN', 'DEN', 'Aeroporto Internacional de Denver'), 
    ('GRU', 'SAO', 'Aeroporto Internacional de São Paulo/Guarulhos'), 
    ('CGH', 'SAO', 'Aeroporto de São Paulo/Congonhas');


INSERT INTO public.funcionario(
	cpf_funcionario, nome)
	VALUES ('1A', 'Danilo'),
	       ('1C', 'Danilo'),
	       ('1P', 'Danilo'),
	       ('2A', 'Marco'),
	       ('2C', 'Marco'),
	       ('2P', 'Marco'),
	       ('3A', 'Matheus'),
	       ('3C', 'Matheus'),
	       ('3P', 'Matheus');


INSERT INTO public.atendente(
	cpf_funcionario, codigo_aeroporto)
	VALUES ('1A', 'GRU'),
	       ('2A', 'SDU'),
	       ('3A', 'JFK');


INSERT INTO public.passageiro(
	passaporte_passageiro, nome, sobrenome)
	VALUES ('DB', 'Danilo', 'Bizarria'),
	       ('MA', 'Marco',   'Azevedo'),
		   ('MG', 'Matheus',  'Guedes');


INSERT INTO public.piloto(
	cpf_funcionario, breve)
	VALUES ('1P', 'A-SP'),
	       ('2P', 'B-RJ'),
	       ('3P', 'C-BA');


INSERT INTO public.trajeto(
   codigo_origem, codigo_destino)
   VALUES   
    ('GRU', 'BSB'),
    ('BSB', 'GRU'),
 
    ('GRU', 'GIG'),
    ('GIG', 'GRU'),
 
    ('GRU', 'SDU'),
    ('SDU', 'GRU'),
 
    ('GRU', 'CWB'),
    ('CWB', 'GRU'),
 
    ('GRU', 'PLU'),
    ('PLU', 'GRU'),
 
    ('GRU', 'EZE'),
    ('EZE', 'GRU'),
 
    ('GRU', 'SCL'),
    ('SCL', 'GRU'),
 
    ('GRU', 'MEX'),
    ('MEX', 'GRU'),
 
    ('GRU', 'JFK'),
    ('JFK', 'GRU'),
 
    ('GRU', 'LHR'),   
    ('LHR', 'GRU'),
 
    ('GRU', 'HDL'),
    ('HDL', 'GRU'),
 
    ('GRU', 'CDG'),   
    ('CDG', 'GRU'),
 
    ('JFK', 'BSB'),
    ('BSB', 'JFK'),
 
    ('JFK', 'GIG'),
    ('GIG', 'JFK'),
 
    ('JFK', 'EZE'),
    ('EZE', 'JFK'),
 
    ('JFK', 'SCL'),
    ('SCL', 'JFK'),
 
    ('JFK', 'MEX'),
    ('MEX', 'JFK'),
 
    ('JFK', 'LHR'),
    ('LHR', 'JFK'),
 
    ('JFK', 'HDL'),
    ('HDL', 'JFK'),
 
    ('JFK', 'CDG'),
    ('CDG', 'JFK'),
	
	('BSB', 'GIG'),
	('GIG', 'BSB'),

	('BSB', 'EZE'),
	('EZE', 'BSB'),

	('BSB', 'SCL'),
	('SCL', 'BSB'),

	('BSB', 'MEX'),
	('MEX', 'BSB'),

	('BSB', 'LHR'),
	('LHR', 'BSB'),

	('BSB', 'HDL'),
	('HDL', 'BSB'),

	('BSB', 'CDG'),
	('CDG', 'BSB'),

	('GIG', 'CDG'),
	('CDG', 'GIG'),

	('GIG', 'EZE'),
	('EZE', 'GIG'),

	('GIG', 'SCL'),
	('SCL', 'GIG'),

	('GIG', 'MEX'),
	('MEX', 'GIG'),

	('GIG', 'LHR'),
	('LHR', 'GIG'),

	('GIG', 'HDL'),
	('HDL', 'GIG');


INSERT INTO public.voo(
	codigo_voo, codigo_origem, codigo_destino, modelo_aviao, cpf_piloto, datahora_partida, datahora_chegada)
	VALUES
 	  ('BR11', 'GRU', 'BSB', 'CRJ1000',    '1P', '2020-12-12T12:00:00', '2020-12-12T13:00:00'),
 	  ('BR12', 'BSB', 'GRU', 'CRJ1000',    '1P', '2020-12-12T14:00:00', '2020-12-12T15:00:00'),
  
 	  ('BR21', 'GRU', 'GIG', 'CRJ1000',    '1P', '2020-12-13T12:00:00', '2020-12-13T13:00:00'),
 	  ('BR22', 'GIG', 'GRU', 'CRJ1000',    '1P', '2020-12-13T14:00:00', '2020-12-13T15:00:00'),
  
 	  ('AL11', 'GRU', 'EZE', '737 MAX-10', '3P', '2020-12-12T12:00:00', '2020-12-12T13:00:00'),
 	  ('AL12', 'EZE', 'GRU', '737 MAX-10', '3P', '2020-12-12T14:00:00', '2020-12-12T15:00:00'),
  
 	  ('AL21', 'GRU', 'SCL', '737 MAX-10', '3P', '2020-12-13T12:00:00', '2020-12-13T13:00:00'),
 	  ('AL22', 'SCL', 'GRU', '737 MAX-10', '3P', '2020-12-13T14:00:00', '2020-12-13T15:00:00'),
  
 	  ('AL31', 'GRU', 'MEX', '737 MAX-10', '3P', '2020-12-14T12:00:00', '2020-12-14T13:00:00'),
 	  ('AL32', 'MEX', 'GRU', '737 MAX-10', '3P', '2020-12-14T14:00:00', '2020-12-14T15:00:00'),
  
 	  ('TA11', 'JFK', 'LHR', 'A380-800',   '2P', '2020-12-12T12:00:00', '2020-12-12T13:00:00'),
 	  ('TA12', 'LHR', 'JFK', 'A380-800',   '2P', '2020-12-12T14:00:00', '2020-12-12T15:00:00'),
  
 	  ('TA21', 'JFK', 'HDL', 'A380-800',   '2P', '2020-12-13T12:00:00', '2020-12-13T13:00:00'),
 	  ('TA22', 'HDL', 'JFK', 'A380-800',   '2P', '2020-12-13T14:00:00', '2020-12-13T15:00:00'),
	  
 	  ('TA31', 'JFK', 'CDG', 'A380-800',   '2P', '2020-12-14T12:00:00', '2020-12-14T13:00:00'),
 	  ('TA32', 'CDG', 'JFK', 'A380-800',   '2P', '2020-12-14T14:00:00', '2020-12-14T15:00:00'),
	  
	  ('HB11', 'GRU', 'JFK', 'A380-800',   '1P', '2020-12-11T12:00:00', '2020-12-11T13:00:00'),
	  ('HB12', 'JFK', 'GRU', 'A380-800',   '1P', '2020-12-11T14:00:00', '2020-12-11T15:00:00');


INSERT INTO public.comissario_voo(
	cpf_funcionario, codigo_voo)
	VALUES ('1C', 'BR11'),
           ('1C', 'BR12'),
		   
           ('2C', 'BR21'),
           ('2C', 'BR22'),
           
		   ('1C', 'AL11'),
           ('1C', 'AL12'),
           
		   ('2C', 'AL21'),
           ('2C', 'AL22'),
           
		   ('3C', 'AL31'),
           ('3C', 'AL32'),
           
		   ('1C', 'TA11'),
           ('1C', 'TA12'),
           
		   ('2C', 'TA21'),
           ('2C', 'TA22'),
           
		   ('3C', 'TA31'),
           ('3C', 'TA32'),
           
		   ('1C', 'HB11'),
           ('1C', 'HB12');


INSERT INTO public.compra(
	passaporte_passageiro, codigo_origem, codigo_destino, datahora_compra)
	VALUES 
	-- GRU -> GIG 2x cada
 	  ('DB', 'GRU', 'GIG', '2020-11-20T12:00:00'),
 	  ('MA', 'GRU', 'GIG', '2020-11-20T12:00:00'),
 	  ('MG', 'GRU', 'GIG', '2020-11-20T12:00:00'),

      ('DB', 'GRU', 'GIG', '2019-11-19T12:00:00'),
 	  ('MA', 'GRU', 'GIG', '2019-11-19T12:00:00'),
 	  ('MG', 'GRU', 'GIG', '2019-11-19T12:00:00'),

 	-- BSB -> LHR 2x 2 passageiros
 	  ('DB', 'BSB', 'LHR', '2020-10-20T12:00:00'),	  
 	  ('MA', 'BSB', 'LHR', '2020-10-20T12:00:00'),
	  
 	  ('DB', 'BSB', 'LHR', '2019-10-19T12:00:00'),	  
 	  ('MA', 'BSB', 'LHR', '2019-10-19T12:00:00'),

	  -- GRU -> MEX 2x 2 passageiros
 	  ('DB', 'GRU', 'MEX', '2020-09-20T12:00:00'),	  
 	  ('MG', 'GRU', 'MEX', '2020-09-20T12:00:00'),
	  
 	  ('DB', 'GRU', 'MEX', '2019-09-19T12:00:00'),
 	  ('MG', 'GRU', 'MEX', '2019-09-19T12:00:00'),	  
	  
	  --JFK -> GIG 1x cada
 	  ('DB', 'JFK', 'GIG', '2020-08-20T12:00:00'),	  
 	  ('MA', 'JFK', 'GIG', '2020-08-20T12:00:00'), 	  
	  ('MG', 'JFK', 'GIG', '2020-08-20T12:00:00'),
	  
	  -- GIG -> CDG 1x 2 deles
 	  ('DB', 'GIG', 'CDG', '2020-07-20T12:00:00'),	  
 	  ('MA', 'GIG', 'CDG', '2020-07-20T12:00:00'),
	  
	  -- SCL -> JFK 1x 2 deles
 	  ('MA', 'SCL', 'JFK', '2020-06-20T12:00:00'),
 	  ('MG', 'SCL', 'JFK', '2020-06-20T12:00:00');


INSERT INTO public.bilhete(
	passaporte_passageiro, datahora_compra, codigo_voo, assento, preco)
	VALUES 
	-- GRU -> GIG 2x cada
 	  ('DB', '2019-11-19T12:00:00', 'BR21', '1A', 0),
 	  ('DB', '2020-11-20T12:00:00', 'BR21', '1B', 0),
	  
 	  ('MA', '2019-11-19T12:00:00', 'BR21', '2A', 0),
 	  ('MA', '2020-11-20T12:00:00', 'BR21', '2B', 0),
 	  
	  ('MG', '2019-11-19T12:00:00', 'BR21', '3A', 0),
 	  ('MG', '2020-11-20T12:00:00', 'BR21', '3B', 0),

	  -- BSB -> LHR 2x 2 passageiros (BR12, HB11, TA11)
 	  ('DB', '2020-10-20T12:00:00', 'BR12', '11A', 0),
 	  ('DB', '2020-10-20T12:00:00', 'HB11', '11B', 0),
 	  ('DB', '2020-10-20T12:00:00', 'TA11', '11C', 0),
	  
 	  ('MA', '2020-10-20T12:00:00', 'BR12', '21A', 0),
 	  ('MA', '2020-10-20T12:00:00', 'HB11', '21B', 0),
 	  ('MA', '2020-10-20T12:00:00', 'TA11', '21C', 0),
	  
 	  ('DB', '2019-10-19T12:00:00', 'BR12', '12A', 0),
 	  ('DB', '2019-10-19T12:00:00', 'HB11', '12B', 0),
 	  ('DB', '2019-10-19T12:00:00', 'TA11', '12C', 0),
	  
 	  ('MA', '2019-10-19T12:00:00', 'BR12', '22A', 0),
 	  ('MA', '2019-10-19T12:00:00', 'HB11', '22B', 0),
 	  ('MA', '2019-10-19T12:00:00', 'TA11', '22C', 0),

	  -- GRU -> MEX 2x 2 passageiros
 	  ('DB', '2020-09-20T12:00:00', 'AL31', '1A', 0),	  
 	  ('DB', '2019-09-19T12:00:00', 'AL31', '1B', 0),
	  
 	  ('MG', '2020-09-20T12:00:00', 'AL31', '3A', 0),
 	  ('MG', '2019-09-19T12:00:00', 'AL31', '3B', 0),	  
	  
	  --JFK -> GIG 1x cada (HB12, BR21)
 	  ('DB', '2020-08-20T12:00:00', 'HB12', '1A', 0),
 	  ('DB', '2020-08-20T12:00:00', 'BR21', '1B', 0),
	  
 	  ('MA', '2020-08-20T12:00:00', 'HB12', '2A', 0),
 	  ('MA', '2020-08-20T12:00:00', 'BR21', '2B', 0),
 	  
	  ('MG', '2020-08-20T12:00:00', 'HB12', '3A', 0),
 	  ('MG', '2020-08-20T12:00:00', 'BR21', '3B', 0),
	  
	  -- GIG -> CDG 1x 2 deles (BR22, HB11, TA31)
 	  ('DB', '2020-07-20T12:00:00', 'BR22', '1A', 0),
 	  ('DB', '2020-07-20T12:00:00', 'HB11', '1B', 0),
 	  ('DB', '2020-07-20T12:00:00', 'TA31', '1C', 0),
	  
 	  ('MA', '2020-07-20T12:00:00', 'BR22', '2A', 0),
 	  ('MA', '2020-07-20T12:00:00', 'HB11', '2B', 0),
 	  ('MA', '2020-07-20T12:00:00', 'TA31', '2C', 0),
	  
	  -- SCL -> JFK 1x 2 deles (AL22, HB11)
 	  ('MA', '2020-06-20T12:00:00', 'AL22', '2A', 0),
 	  ('MA', '2020-06-20T12:00:00', 'HB11', '2B', 0),
	  
 	  ('MG', '2020-06-20T12:00:00', 'AL22', '3A', 0),
 	  ('MG', '2020-06-20T12:00:00', 'HB11', '3B', 0);
