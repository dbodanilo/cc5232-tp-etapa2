CREATE TABLE public.trajeto (
    codigo_origem varchar(250) NOT NULL,
    codigo_destino varchar(250) NOT NULL,
    PRIMARY KEY (codigo_origem, codigo_destino)
);

CREATE INDEX ON public.trajeto
    (codigo_origem);
CREATE INDEX ON public.trajeto
    (codigo_destino);

ALTER TABLE public.trajeto ADD CONSTRAINT FK_trajeto__codigo_origem FOREIGN KEY (codigo_origem) REFERENCES public.aeroporto(codigo_aeroporto);
ALTER TABLE public.trajeto ADD CONSTRAINT FK_trajeto__codigo_destino FOREIGN KEY (codigo_destino) REFERENCES public.aeroporto(codigo_aeroporto);
