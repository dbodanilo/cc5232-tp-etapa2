-- ALTER TABLE public.voo add codigo_origem varchar(250);
-- ALTER TABLE public.voo add codigo_destino varchar(250)

-- ALTER TABLE public.voo 
-- ADD CONSTRAINT FK_voo__codigo_origem 
-- FOREIGN KEY (codigo_origem) 
-- REFERENCES public.aeroporto(codigo_iata);

-- ALTER TABLE public.voo 
-- ADD CONSTRAINT FK_voo__codigo_destino 
-- FOREIGN KEY (codigo_destino) 
-- REFERENCES public.aeroporto(codigo_iata);

-- avioes (asc em capacidade passageiros)
-- 5, 1, 4

INSERT INTO public.voo(
	id_voo, codigo_origem, codigo_destino, id_aviao, codigo)
	VALUES 
 	  (1, 'GRU', 'BSB', 5, 'BR11'),
 	  (2, 'BSB', 'GRU', 5, 'BR12'),
  
 	  (3, 'GRU', 'GIG', 5, 'BR21'),
 	  (4, 'GIG', 'GRU', 5, 'BR22'),
  
 	  (5, 'GRU', 'EZE', 1, 'AL11'),
 	  (6, 'EZE', 'GRU', 1, 'AL12'),
  
 	  (7, 'GRU', 'SCL', 1, 'AL21'),
 	  (8, 'SCL', 'GRU', 1, 'AL22'),
  
 	  (9, 'GRU', 'MEX', 1, 'AL31'),
 	  (10, 'MEX', 'GRU', 1, 'AL32'),
  
 	  (11, 'JFK', 'LHR', 4, 'TA11'),
 	  (12, 'LHR', 'JFK', 4, 'TA12'),
  
 	  (13, 'JFK', 'HDL', 4, 'TA21'),
 	  (14, 'HDL', 'JFK', 4, 'TA22'),
	  
 	  (15, 'JFK', 'CDG', 4, 'TA31'),
 	  (16, 'CDG', 'JFK', 4, 'TA32'),
	  
	  (17, 'GRU', 'JFK', 4, 'HB11'),
	  (18, 'JFK', 'GRU', 4, 'HB12');
	