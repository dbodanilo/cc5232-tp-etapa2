CREATE TABLE public.aviao (
    modelo_aviao varchar(250) NOT NULL,
    capacidade_bagagem_m3 numeric NOT NULL,
    capacidade_passageiros integer NOT NULL,
    PRIMARY KEY (modelo_aviao)
);
