create database db_integrador;

use db_integrador;

create table integrante(
ID_integrante int primary key auto_increment not null,
Nome varchar(30) not null,
Sobrenome varchar(60) not null,
Funcao_integrante varchar(30),
Altura_Metros decimal(2,2) not null,
Massa_KG decimal(3,2) not null
);

create table bloco(
ID_bloco int primary key auto_increment not null,
Origem_traj varchar(100) not null,
Dest_traj varchar(100) not null,
Dt_coleta date not null,
H_coleta time not null,
D1 FLOAT NOT NULL,
D2 FLOAT NOT NULL,
D3 FLOAT NOT NULL,
T1 TIME NOT NULL,
T2 TIME NOT NULL,
G1 FLOAT NOT NULL,
G2 FLOAT NOT NULL,
Iluminacao enum('s','n','p') not null,
Fluxo_pessoa enum('s','n','p') not null,
Sombra enum('s','n','p') not null,
Degrau enum('s','n','p') not null,
Rampa enum('s','n','p') not null,
Calcada enum('s','n','p') not null,
Placa enum('s','n','p') not null,
Pavimento enum('s','n','p') not null,
Bebedouro enum('s','n','p') not null,
Banheiro enum('s','n','p') not null,
Banheiro_PCD enum('s','n','p') not null
);
alter table bloco modify column Origem_traj varchar(50) not null;
alter table bloco add column Observacoes varchar(1000);
alter table integrante modify column Altura_Metros float not null;
alter table integrante modify column Massa_KG float not null;

insert into integrante(Nome,Sobrenome,Funcao_integrante,Altura_Metros,Massa_KG)values('Ana Clara','Gomes Martins','Observação', 1.61, 63);
insert into integrante(Nome,Sobrenome,Funcao_integrante,Altura_Metros,Massa_KG)values('Gustavo', 'Cardoso Japonês', 'Fotógrafo', 1.77, 62);
insert into integrante(Nome,Sobrenome,Funcao_integrante,Altura_Metros,Massa_KG)values('Maria','Luísa Rodrigues Ferreira', 'Anotações', 1.47, 62);
insert into integrante(Nome,Sobrenome,Funcao_integrante,Altura_Metros,Massa_KG)values('Tarcísio','Araújo Silva Lima','Controlador do Strava',1.78,64);

insert into bloco(Origem_traj,Dest_traj,Dt_coleta,H_coleta,D1,D2,D3,T1,T2,G1,G2,Iluminacao,Fluxo_pessoa, Sombra, Degrau,Rampa,Calcada,Placa,Pavimento,Bebedouro,Banheiro,Banheiro_PCD,Observacoes)
values('Bloco D','Refeitório','2022-04-27', '10:37:00', '120', '150', '140', '00:02:02', '00:02:32',' 0.07','0.08' , 'n','s','p','s','s','s','s','n','n','n','n','Chão irregular, rampas muito ígrimas.');
insert into bloco(Origem_traj,Dest_traj,Dt_coleta,H_coleta,D1,D2,D3,T1,T2,G1,G2,Iluminacao,Fluxo_pessoa, Sombra, Degrau,Rampa,Calcada,Placa,Pavimento,Bebedouro,Banheiro,Banheiro_PCD,Observacoes)
values('Bloco D','Quadra Aberta','2022-04-27','10:51:00', '230', '250', '320', '00:03:15','00:03:40',0.11,0.13,'n','s','p','s','s','s','s','n','n','n','n','Péssimo Paviamento');
insert into bloco(Origem_traj,Dest_traj,Dt_coleta,H_coleta,D1,D2,D3,T1,T2,G1,G2,Iluminacao,Fluxo_pessoa, Sombra, Degrau,Rampa,Calcada,Placa,Pavimento,Bebedouro,Banheiro,Banheiro_PCD,Observacoes)
values('Bloco D','Residência Masculina','2022-05-05','15:22:00','150','270','154','00:02:11','00:03:55',0.08,0.11,'n','p','n','s','s','s','n','p','n','n','n','Trajeto extremamente ingrime, pavimento irregular.');
insert into bloco(Origem_traj,Dest_traj,Dt_coleta,H_coleta,D1,D2,D3,T1,T2,G1,G2,Iluminacao,Fluxo_pessoa, Sombra, Degrau,Rampa,Calcada,Placa,Pavimento,Bebedouro,Banheiro,Banheiro_PCD,Observacoes)
values('Bloco D','Mirante','2022-05-27','11:05:00','30','170','32','00:00:34','00:02:48','0.02','0.09', 'n','p','s','s','n','n','n','n','n','n','n','Piso escorregadio e ingrime,');
insert into bloco(Origem_traj,Dest_traj,Dt_coleta,H_coleta,D1,D2,D3,T1,T2,G1,G2,Iluminacao,Fluxo_pessoa, Sombra, Degrau,Rampa,Calcada,Placa,Pavimento,Bebedouro,Banheiro,Banheiro_PCD,Observacoes)
values('Bloco D','Biblioteca','2022-05-05','15:45:00','320','340','360','00:04:45','00:04:39','0.17','0.18','p','s','p','s','s','s','p','s','n','n','n','Grande fluxo de veículos');
insert into bloco(Origem_traj,Dest_traj,Dt_coleta,H_coleta,D1,D2,D3,T1,T2,G1,G2,Iluminacao,Fluxo_pessoa, Sombra, Degrau,Rampa,Calcada,Placa,Pavimento,Bebedouro,Banheiro,Banheiro_PCD,Observacoes)
values('Bloco D','Bloco A','2022-05-05','15:29:00','140','155','140','00:02:00','00:02:15','0.07','0.08','s','s','s','p','s','s','n','s','s','s','n','Boa iluminação');
insert into bloco(Origem_traj,Dest_traj,Dt_coleta,H_coleta,D1,D2,D3,T1,T2,G1,G2,Iluminacao,Fluxo_pessoa, Sombra, Degrau,Rampa,Calcada,Placa,Pavimento,Bebedouro,Banheiro,Banheiro_PCD,Observacoes)
values('Bloco D','Mecanização','2022-05-05','15:35:00','290','310','330','00:04:10','00:04:20','0.16','0.17','p','s','p','s','s','s','s','s','n','n','n','Péssimo pavimento');
insert into bloco(Origem_traj,Dest_traj,Dt_coleta,H_coleta,D1,D2,D3,T1,T2,G1,G2,Iluminacao,Fluxo_pessoa, Sombra, Degrau,Rampa,Calcada,Placa,Pavimento,Bebedouro,Banheiro,Banheiro_PCD,Observacoes)
values('Bloco D','Banheiro da Cantina','2022-05-05','15:12:00','160','180','185','00:02:27','00:02:42','0.09','0.10','p','s','n','s','s','s','n','s','s','s','n','Banheiro sem adaptação para pessoas que possuem mobilidade reduzida');
insert into bloco(Origem_traj,Dest_traj,Dt_coleta,H_coleta,D1,D2,D3,T1,T2,G1,G2,Iluminacao,Fluxo_pessoa, Sombra, Degrau,Rampa,Calcada,Placa,Pavimento,Bebedouro,Banheiro,Banheiro_PCD,Observacoes)
values('Bloco D','Suinocultura','2022-05-02','13:21:00','1290','1750','1300','00:15:28','00:21:27','0.68','0.93','n','p','p','n','n','n','n','n','n','n','n','Pela falta de paviamento as possibilidades de uma pessoa com mobilidade reduzida chegar ao local chegam a ser nulas.Sem sinalização, falta de banheiros e bebedouros.');
