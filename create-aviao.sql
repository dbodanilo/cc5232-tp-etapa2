CREATE TABLE public.aviao (
    id_aviao integer NOT NULL,
    fabricante varchar(250) NOT NULL,
    modelo varchar(250) NOT NULL,
    capacidade_bagagem_m3 numeric NOT NULL,
    capacidade_passageiros integer NOT NULL,
    PRIMARY KEY (id_aviao)
);
