-- ALTER TABLE public.trajeto add codigo_origem varchar(250)
-- ALTER TABLE public.trajeto add codigo_destino varchar(250)

-- ALTER TABLE public.trajeto 
-- ADD CONSTRAINT FK_trajeto__codigo_origem 
-- FOREIGN KEY (codigo_origem) 
-- REFERENCES public.aeroporto(codigo_iata);

-- ALTER TABLE public.trajeto 
-- ADD CONSTRAINT FK_trajeto__codigo_destino 
-- FOREIGN KEY (codigo_destino) 
-- REFERENCES public.aeroporto(codigo_iata);

INSERT INTO public.trajeto(
   id_trajeto, codigo_origem, codigo_destino, preco)
   VALUES   
    (1, 'GRU', 'BSB', 0),
    (2, 'BSB', 'GRU', 0),
 
    (3, 'GRU', 'GIG', 0),
    (4, 'GIG', 'GRU', 0),
 
    (5, 'GRU', 'SDU', 0),
    (6, 'SDU', 'GRU', 0),
 
    (7, 'GRU', 'CWB', 0),
    (8, 'CWB', 'GRU', 0),
 
    (9, 'GRU', 'PLU', 0),
    (10, 'PLU', 'GRU', 0),
 
    (11, 'GRU', 'EZE', 0),
    (12, 'EZE', 'GRU', 0),
 
    (13, 'GRU', 'SCL', 0),
    (14, 'SCL', 'GRU', 0),
 
    (15, 'GRU', 'MEX', 0),
    (16, 'MEX', 'GRU', 0),
 
    (17, 'GRU', 'JFK', 0),
    (18, 'JFK', 'GRU', 0),
 
    (19, 'GRU', 'LHR', 0),   
    (20, 'LHR', 'GRU', 0),
 
    (21, 'GRU', 'HDL', 0),
    (22, 'HDL', 'GRU', 0),
 
    (23, 'GRU', 'CDG', 0),   
    (24, 'CDG', 'GRU', 0),
 
    (25, 'JFK', 'BSB', 0),
    (26, 'BSB', 'JFK', 0),
 
    (27, 'JFK', 'GIG', 0),
    (28, 'GIG', 'JFK', 0),
 
    (29, 'JFK', 'EZE', 0),
    (30, 'EZE', 'JFK', 0),
 
    (31, 'JFK', 'SCL', 0),
    (32, 'SCL', 'JFK', 0),
 
    (33, 'JFK', 'MEX', 0),
    (34, 'MEX', 'JFK', 0),
 
    (35, 'JFK', 'LHR', 0),
    (36, 'LHR', 'JFK', 0),
 
    (37, 'JFK', 'HDL', 0),
    (38, 'HDL', 'JFK', 0),
 
    (39, 'JFK', 'CDG', 0),
    (40, 'CDG', 'JFK', 0),
   ---
   
   (41, 'BSB', 'GIG', 0),
   (42, 'GIG', 'BSB', 0),
   
   (43, 'BSB', 'EZE', 0),
   (44, 'EZE', 'BSB', 0),
   
   (45, 'BSB', 'SCL', 0),
   (46, 'SCL', 'BSB', 0),
   
   (47, 'BSB', 'MEX', 0),
   (48, 'MEX', 'BSB', 0),
   
   (49, 'BSB', 'LHR', 0),
   (50, 'LHR', 'BSB', 0),
   
   (51, 'BSB', 'HDL', 0),
   (52, 'HDL', 'BSB', 0),
   
   (53, 'BSB', 'CDG', 0),
   (54, 'CDG', 'BSB', 0),
   --,
   
   (55, 'GIG', 'CDG', 0),
   (56, 'CDG', 'GIG', 0),
   
   (57, 'GIG', 'EZE', 0),
   (58, 'EZE', 'GIG', 0),
   
   (59, 'GIG', 'SCL', 0),
   (60, 'SCL', 'GIG', 0),
   
   (61, 'GIG', 'MEX', 0),
   (62, 'MEX', 'GIG', 0),
   
   (63, 'GIG', 'LHR', 0),
   (64, 'LHR', 'GIG', 0),
   
   (65, 'GIG', 'HDL', 0),
   (66, 'HDL', 'GIG', 0);
