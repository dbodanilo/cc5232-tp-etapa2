INSERT INTO public.passageiro_trajeto(
	passaporte_passageiro, codigo_origem, codigo_destino, datahora_compra)
	VALUES 
	-- GRU -> GIG 2x cada
 	  ('DB', 'GRU', 'GIG', '2019-11-19T12:00:00'),
 	  ('MA', 'GRU', 'GIG', '2019-11-19T12:00:00'),
 	  ('MG', 'GRU', 'GIG', '2019-11-19T12:00:00'),

 	  ('DB', 'GRU', 'GIG', '2020-11-20T00:00:00'),
 	  ('MA', 'GRU', 'GIG', '2020-11-20T00:00:00'),
 	  ('MG', 'GRU', 'GIG', '2020-11-20T00:00:00'),

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
