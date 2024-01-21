CREATE TABLE db_tcc.tb_origem (
    pedido int primary key,
    origem VARCHAR(255),
    fechamento_pedido VARCHAR(20),
    data_entrega VARCHAR(20),
    data_previsao_entrega VARCHAR(20),
    codigo_transportador VARCHAR(20),
    cep VARCHAR(10),
    uf VARCHAR(2),
    cidade VARCHAR(255),
    valor DECIMAL(10,2),
    pecas INT,
    pecas_falta INT,
    data_carga TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE db_tcc.fato_pedidos_entregues (
    pedido INT PRIMARY KEY,
    data DATE,
    data_pedido TIMESTAMP,
    data_entrega TIMESTAMP,
    data_previsao_entrega TIMESTAMP,
    prazo_prometido DECIMAL(24,4),
    prazo_realizado DECIMAL(24,4),
    sla INT,
    otif INT,
    data_carga TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE db_tcc.dim_pedido (
    pedido int primary key,
    origem_pedido VARCHAR(255),
    data_pedido timestamp,
    codigo_transportador int,
    cep_destino VARCHAR(10),
    uf_destino VARCHAR(2),
    cidade_destino VARCHAR(255),
    valor DECIMAL(10,2),
    quantidade_pecas INT,
    quantidade_pecas_falta INT,
    data_carga TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );