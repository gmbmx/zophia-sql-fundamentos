DROP TABLE IF EXISTS ventas;

CREATE TABLE IF NOT EXISTS ventas (
	id_curso varchar(6),
	id_pago int,
	monto int,
	metodo_pago varchar(60),
	fecha_pago date,
	flag_reembolso boolean
);

INSERT INTO ventas VALUES
	('DE0001', 1, 4000, 'Paypal', DATE '2023/01/04', FALSE),
	('DE0001', 2, 4000, 'Stripe', DATE '2023/01/04', FALSE),
	('DE0001', 3, 4000, 'Paypal', DATE '2023/01/05', FALSE),
	('DE0001', 4, 4000, 'Paypal', DATE '2023/01/05', FALSE),
	('DE0001', 5, 4000, 'Stripe', DATE '2023/01/06', FALSE),
	('DE0001', 6, 4000, 'Paypal', DATE '2023/01/06', FALSE),
	('DE0001', 7, 4000, 'Paypal', DATE '2023/01/06', FALSE),
	('DE0001', 8, 4000, 'Stripe', DATE '2023/01/06', FALSE),
	('DE0001', 9, 4000, 'Paypal', DATE '2023/01/06', FALSE),
	('DE0001', 10, 4000, 'Paypal', DATE '2023/01/07', FALSE),
	('DE0001', 11, 4000, 'Paypal', DATE '2023/01/07', FALSE),
	('DE0001', 12, 4000, 'Stripe', DATE '2023/01/07', FALSE),
	('DE0001', 13, 4000, 'Paypal', DATE '2023/01/07', FALSE),
	('DE0001', 14, 4000, 'Paypal', DATE '2023/01/08', FALSE),
	('DE0001', 15, 4000, 'Paypal', DATE '2023/01/08', FALSE),
	('DE0001', 16, 4000, 'Stripe', DATE '2023/01/08', FALSE),
	('DE0001', 17, 4000, 'Paypal', DATE '2023/01/08', FALSE),
	('DE0001', 18, 4000, 'Paypal', DATE '2023/01/08', FALSE),
	('DE0001', 19, 4000, 'Stripe', DATE '2023/01/09', FALSE),
	('DE0001', 20, 4000, 'Paypal', DATE '2023/01/10', FALSE),
	('DE0002', 21, 6000, 'Paypal', DATE '2023/02/04', FALSE),
	('DE0002', 22, 6000, 'Stripe', DATE '2023/02/04', FALSE),
	('DE0002', 23, 6000, 'Paypal', DATE '2023/02/05', FALSE),
	('DE0002', 24, 6000, 'Paypal', DATE '2023/02/05', FALSE),
	('DE0002', 25, 6000, 'Stripe', DATE '2023/02/06', FALSE),
	('DE0002', 26, 6500, 'Paypal', DATE '2023/02/06', FALSE),
	('DE0002', 27, 6500, 'Paypal', DATE '2023/02/06', FALSE),
	('DE0002', 28, 6500, 'Stripe', DATE '2023/02/06', FALSE),
	('DE0002', 29, 6500, 'Paypal', DATE '2023/02/06', FALSE),
	('DE0002', 30, 6500, 'Paypal', DATE '2023/02/07', FALSE),
	('DE0002', 31, 6500, 'Paypal', DATE '2023/02/07', FALSE),
	('DE0002', 32, 6500, 'Stripe', DATE '2023/02/07', FALSE),
	('DE0002', 33, 6500, 'Paypal', DATE '2023/02/07', FALSE),
	('DE0002', 34, 6500, 'Paypal', DATE '2023/02/08', FALSE),
	('DE0002', 35, 6500, 'Stripe', DATE '2023/02/08', FALSE),
	('DA0001', 36, 3500, 'Paypal', DATE '2023/02/10', TRUE),
	('DA0001', 37, 3500, 'Paypal', DATE '2023/01/06', FALSE),
	('DA0001', 38, 3500, 'Stripe', DATE '2023/01/10', FALSE),
	('DA0001', 39, 3500, 'Paypal', DATE '2023/01/10', FALSE),
	('DA0001', 40, 3500, 'Stripe', DATE '2023/01/10', FALSE),
	('DA0001', 41, 3500, 'Paypal', DATE '2023/01/11', FALSE),
	('DA0001', 42, 3500, 'Stripe', DATE '2023/01/11', FALSE),
	('DA0001', 43, 3500, 'Paypal', DATE '2023/01/11', FALSE),
	('DA0001', 44, 3500, 'Stripe', DATE '2023/01/12', FALSE),
	('DA0001', 45, 3500, 'Paypal', DATE '2023/01/12', FALSE),
	('DA0001', 46, 3500, 'Stripe', DATE '2023/01/12', FALSE),
	('DA0001', 47, 3500, 'Paypal', DATE '2023/01/13', FALSE),
	('DA0001', 48, 3500, 'Paypal', DATE '2023/01/13', FALSE),
	('DA0001', 49, 3500, 'Stripe', DATE '2023/01/13', FALSE),
	('DA0001', 50, 3500, 'Paypal', DATE '2023/01/13', FALSE),
	('DA0002', 51, 4000, 'Paypal', DATE '2023/02/09', FALSE),
	('DA0002', 52, 4000, 'Stripe', DATE '2023/02/09', FALSE),
	('DA0002', 53, 4000, 'Paypal', DATE '2023/02/09', FALSE),
	('DA0002', 54, 4000, 'Paypal', DATE '2023/02/12', FALSE),
	('DA0002', 55, 4000, 'Stripe', DATE '2023/02/12', FALSE),
	('DA0002', 56, 4500, 'Paypal', DATE '2023/02/14', FALSE),
	('DA0002', 57, 4500, 'Paypal', DATE '2023/02/15', FALSE),
	('DA0002', 58, 4500, 'Stripe', DATE '2023/02/18', FALSE),
	('DA0002', 59, 4500, 'Paypal', DATE '2023/02/18', FALSE),
	('DA0002', 60, 4500, 'Paypal', DATE '2023/02/20', FALSE),
	('DA0002', 61, 4500, 'Paypal', DATE '2023/02/20', FALSE),
	('DA0002', 62, 4500, 'Stripe', DATE '2023/02/22', FALSE),
	('DA0002', 63, 4500, 'Paypal', DATE '2023/02/23', FALSE),
	('DA0002', 64, 4500, 'Paypal', DATE '2023/02/23', FALSE),
	('DA0002', 65, 4500, 'Paypal', DATE '2023/02/23', FALSE),
	('DA0003', 66, 4500, 'Stripe', DATE '2023/03/12', FALSE),
	('DA0003', 67, 4500, 'Paypal', DATE '2023/03/13', FALSE),
	('DA0003', 68, 4500, 'Paypal', DATE '2023/03/13', FALSE),
	('DA0003', 69, 4500, 'Stripe', DATE '2023/03/13', FALSE),
	('DA0003', 70, 4500, 'Paypal', DATE '2023/03/13', FALSE),
	('DA0003', 71, 4000, 'Paypal', DATE '2023/03/09', FALSE),
	('DA0003', 72, 4000, 'Stripe', DATE '2023/03/09', FALSE),
	('DA0003', 73, 4000, 'Paypal', DATE '2023/03/09', FALSE),
	('DA0003', 74, 4000, 'Paypal', DATE '2023/03/12', FALSE),
	('DA0003', 75, 4000, 'Stripe', DATE '2023/03/12', FALSE),
	('DA0003', 76, 4500, 'Paypal', DATE '2023/03/14', FALSE),
	('DA0003', 77, 4500, 'Paypal', DATE '2023/03/15', FALSE),
	('DA0003', 78, 4500, 'Stripe', DATE '2023/03/18', FALSE),
	('DA0003', 79, 4500, 'Paypal', DATE '2023/03/18', FALSE),
	('DA0003', 80, 4500, 'Paypal', DATE '2023/03/20', FALSE),
	('DA0001', 81, 4000, 'Stripe', DATE '2023/03/10', TRUE),
	('DA0001', 82, 4000, 'Stripe', DATE '2023/03/10', TRUE),
	('DA0002', 83, 4000, 'Stripe', DATE '2023/03/10', TRUE),
	('DE0002', 84, 2000, 'Paypal', DATE '2023/03/10', TRUE),
	('DE0002', 85, 2000, 'Paypal', DATE '2023/03/10', TRUE),
	('DA0004', 86, 3000, 'Paypal', DATE '2023/04/12', FALSE),
	('DA0004', 87, 3000, 'Stripe', DATE '2023/04/12', FALSE),
	('DA0004', 88, 3000, 'Paypal', DATE '2023/04/14', FALSE),
	(NULL, 89, 3000, 'Paypal', DATE '2023/04/15', FALSE),
	(NULL, 90, 3000, 'Stripe', DATE '2023/04/16', FALSE),
	(NULL, 91, 3000, 'Paypal', DATE '2023/04/18', FALSE),
	(NULL, 92, 3000, 'Paypal', DATE '2023/04/19', FALSE)
	;

DROP TABLE IF EXISTS rechazos;

CREATE TABLE IF NOT EXISTS rechazos (
	id_curso varchar(6),
	id_pago int,
	monto int,
	metodo_pago varchar(60),
	fecha_pago timestamp,
	motivo_rechazo text
);

INSERT INTO rechazos VALUES
	('DE0001', 1, 4000, 'Paypal', TIMESTAMP '2023/01/04 10:23:45', 'Declinada por banco emisor'),
	('DE0001', 10, 4000, 'Paypal', TIMESTAMP '2023/01/07 22:45:56', 'Declinada por banco emisor'),
	('DE0002', 21, 6000, 'Paypal', TIMESTAMP '2023/02/03 04:43:21', 'Declinada por banco emisor'),
	('DE0002', 21, 6000, 'Stripe', TIMESTAMP '2023/02/03 11:23:05', 'Declinada por banco emisor'),
	('DE0002', 21, 6000, 'Paypal', TIMESTAMP'2023/02/04 10:16:45', 'Saldo insuficiente'),
	('DE0002', 21, 6000, 'Paypal', TIMESTAMP '2023/02/04 17:32:31' , NULL),
	('DA0001', 36, 3500, 'Paypal', TIMESTAMP '2023/02/10 08:44:23', NULL),
	('DA0001', 36, 3500, 'Paypal', TIMESTAMP '2023/02/11 21:13:57', 'Saldo insuficiente'),
	('DA0002', 54, 4000, 'Paypal', TIMESTAMP '2023/02/12 10:46:18', 'Tarjeta no autorizada'),
	('DA0002', 55, 4000, 'Stripe', TIMESTAMP '2023/02/12 23:17:22', 'Saldo insuficiente');