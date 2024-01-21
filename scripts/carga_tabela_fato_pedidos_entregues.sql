select 
    pedido,
    date(data_entrega) as data,
    fechamento_pedido as data_pedido,
    data_entrega,
    data_previsao_entrega,
    TIMESTAMPDIFF(day,date(fechamento_pedido),data_previsao_entrega) as prazo_prometido,
    TIMESTAMPDIFF(SECOND,fechamento_pedido,data_entrega)/86400 as prazo_realizado,
    case when date(data_entrega) > date(data_previsao_entrega) then 0 else 1 end sla,
    case when coalesce(pecas_falta,0) = 0 and date(data_entrega) <= date(data_previsao_entrega) then 1 else 0 end otif
from db_tcc.tb_origem a 
WHERE data_entrega IS NOT NULL AND data_entrega <> 'null'
AND date(data_entrega) <= '2023-12-31'