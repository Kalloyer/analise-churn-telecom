SELECT * FROM dataset;

-- Taxa geral churn
select
	(count(case when churn = 'Yes' then 1 end) * 100) / count(*) as taxa_geral_churn
from dataset;

-- Média geral de permanencia das empresas
select churn, avg(tempo_permanecido) as media_tempo_permanecido
from dataset
group by churn;

-- Métodos de pagamentos mais utilizados
select metodo_pagamento, count(*) as clientes_churn
from dataset
where churn = 'Yes'
group by metodo_pagamento
order by clientes_churn desc;

-- Clientes que possuem todos os servicos contratados
select customerID, 
servico_telefone, 
seguranca_online, 
backup_online, 
protecao_dispositivo,
suporte_ti,
streaming_tv,
streaming_movies
from dataset
where servico_telefone = 'Yes' 
and seguranca_online = 'Yes' 
and backup_online = 'Yes' 
and protecao_dispositivo = 'Yes'
and suporte_ti = 'Yes'
and streaming_tv = 'Yes'
and streaming_movies = 'Yes';

-- Clientes que não possuem internet
select customerID, 
seguranca_online, 
backup_online, 
protecao_dispositivo,
suporte_ti,
streaming_tv,
streaming_movies
from dataset
where seguranca_online = 'No internet service' 
and backup_online = 'No internet service' 
and protecao_dispositivo = 'No internet service'
and suporte_ti = 'No internet service'
and streaming_tv = 'No internet service'
and streaming_movies = 'No internet service';

-- Clientes que recebem cobranças digitalmente
select customerID,
cobranca_digital
from dataset
where cobranca_digital = 'Yes';