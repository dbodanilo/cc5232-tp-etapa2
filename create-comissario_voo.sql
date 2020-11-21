CREATE TABLE public.comissario_voo (
    cpf_funcionario varchar(250) NOT NULL,
    codigo_voo varchar(250) NOT NULL
);

CREATE INDEX ON public.comissario_voo
    (cpf_funcionario);
CREATE INDEX ON public.comissario_voo
    (codigo_voo);

ALTER TABLE public.comissario_voo ADD CONSTRAINT FK_comissario_voo__cpf_funcionario FOREIGN KEY (cpf_funcionario) REFERENCES public.funcionario(cpf_funcionario);
ALTER TABLE public.comissario_voo ADD CONSTRAINT FK_comissario_voo__codigo_voo FOREIGN KEY (codigo_voo) REFERENCES public.voo(codigo_voo);
