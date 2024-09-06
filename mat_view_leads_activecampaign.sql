CREATE MATERIALIZED VIEW IF NOT EXISTS public.mat_view_leads_active_campaign
TABLESPACE pg_default
AS
 SELECT c.expert,
    c.nome_campanha,
    l.fonte,
    l.email,
    l.utm_source,
    l.utm_medium,
    l.utm_campaign,
    l.utm_term,
    l.utm_content,
    l.data,
    l.dispositivo,
    l.navegador,
    l.cep,
    l.cidade,
    l.estado,
    l.pais,
    l.sistema_operacional
   FROM leads_active_campaign l
     JOIN campanhas_active_campaign c ON l.id_correspondente = c.id
WITH DATA;
