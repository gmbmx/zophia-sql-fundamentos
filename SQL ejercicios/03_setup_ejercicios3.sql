create table IF NOT EXISTS visitantes (
		id_visitante int,
		direccion_ip varchar(30),
		dispositivo varchar(60),
		url_campaign varchar(100),
		url_referral varchar(100),
		ultimo_login datetime;
	)

	create table IF NOT EXISTS paginas_web (
		id_pagina int,
		url varchar(100),
		id_curso varchar(6)
	)

	create table IF NOT EXISTS visitas (
		id_visita int,
		id_visitante int,
		id_pagina int,
		fecha_visita datetime;
	)