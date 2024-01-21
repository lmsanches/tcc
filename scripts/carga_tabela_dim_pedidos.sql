select pedido
    ,origem as origem_pedido
    ,fechamento_pedido as data_pedido
    ,ROUND(case when codigo_transportador = 'null' then 0 else codigo_transportador end) as codigo_transportador
    ,cep as cep_destino
    ,uf as uf_destino
    ,cidade as cidade_destino
    ,valor
    ,pecas as quantidade_pecas
    ,pecas_falta as quantidade_pecas_falta
from db_tcc.tb_origem