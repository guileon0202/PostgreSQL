CREATE DOMAIN dm_descricao VARCHAR(100);
CREATE TABLE cidade(
 	id_cid INTEGER NOT NULL,
	nome_cid dm_descricao,
	uf_cid CHAR(2),
	PRIMARY KEY (id_cid)
);

INSERT INTO cidade VALUES(1, 'Jacareí', 'SP');


CREATE TABLE caminhao(
	id_cam CHAR(7),
	placa_cam CHAR(7),
	ano_cam INTEGER,
	marca_cam VARCHAR(30),
	carga_cam INTEGER,
	PRIMARY KEY (id_cam)
);

CREATE TABLE cliente(
	id_cli INTEGER NOT NULL,
	nome_cli dm_descricao,
	endereco_cli dm_descricao,
	fone_cli CHAR(11),
	ie_cli VARCHAR(20),
	cnpj_cli CHAR(14),
	area_cli dm_descricao,
	cid_id INTEGER,
	PRIMARY KEY (id_cli),
	FOREIGN KEY(cid_id) REFERENCES cidade(id_cid)
);

