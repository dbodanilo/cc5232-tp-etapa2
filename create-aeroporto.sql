CREATE TABLE public.aeroporto (
    codigo_aeroporto varchar(250) NOT NULL,
    codigo_cidade varchar(250) NOT NULL,
    nome varchar(250) NOT NULL,
    PRIMARY KEY (codigo_aeroporto)
);

CREATE INDEX ON public.aeroporto
    (codigo_cidade);

ALTER TABLE public.aeroporto ADD CONSTRAINT FK_aeroporto__codigo_cidade FOREIGN KEY (codigo_cidade) REFERENCES public.cidade(codigo_cidade);
