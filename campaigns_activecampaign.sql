CREATE TABLE IF NOT EXISTS public.campanhas_active_campaign
(
    expert character varying(250) COLLATE pg_catalog."default" NOT NULL,
    nome_campanha character varying(1000) COLLATE pg_catalog."default" NOT NULL,
    landing_page character varying(2500) COLLATE pg_catalog."default",
    versao_lancamento integer,
    id bigint NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
    CONSTRAINT id_pk_campanhas_active_campaign PRIMARY KEY (id)
)
