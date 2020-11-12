CREATE TABLE public.voo_aeroporto (
    id_voo integer NOT NULL,
    codigo_aeroporto varchar(250) NOT NULL,
    portao varchar(250) NOT NULL,
    hora timestamp without time zone NOT NULL
);

CREATE INDEX ON public.voo_aeroporto
    (id_voo);
CREATE INDEX ON public.voo_aeroporto
    (codigo_aeroporto);

ALTER TABLE public.voo_aeroporto ADD CONSTRAINT FK_voo_aeroporto__id_voo FOREIGN KEY (id_voo) REFERENCES public.voo(id_voo);
ALTER TABLE public.voo_aeroporto ADD CONSTRAINT FK_voo_aeroporto__codigo_aeroporto FOREIGN KEY (codigo_aeroporto) REFERENCES public.aeroporto(codigo_iata);
