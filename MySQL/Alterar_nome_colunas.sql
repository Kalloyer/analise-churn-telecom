SELECT * FROM dataset;

-- Alterar o nome das colunas
alter table dataset
rename column gender to genero;
alter table dataset
rename column SeniorCitizen to idoso;
alter table dataset
rename column Partner to conjuge;
alter table dataset
rename column Dependents to dependentes;
alter table dataset
rename column tenure to tempo_permanecido;
alter table dataset
rename column PhoneService to servico_telefone;
alter table dataset
rename column MultipleLines to multiplas_linhas;
alter table dataset
rename column InternetService to servico_internet;
alter table dataset
rename column OnlineSecurity to seguranca_online;
alter table dataset
rename column OnlineBackup to backup_online;
alter table dataset
rename column DeviceProtection to protecao_dispositivo;
alter table dataset
rename column TechSupport to suporte_ti;
alter table dataset
rename column StreamingTV to streaming_tv;
alter table dataset
rename column StreamingMovies to streaming_movies;
alter table dataset
rename column Contract to tempo_contratual;
alter table dataset
rename column PaperlessBilling to cobranca_digital;
alter table dataset
rename column PaymentMethod to metodo_pagamento;
alter table dataset
rename column MonthlyCharges to cobranca_mensal;
alter table dataset
rename column TotalCharges to total_cobranca;
alter table dataset
rename column Churn to churn;

SELECT * FROM dataset;