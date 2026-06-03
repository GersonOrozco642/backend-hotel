USE weed_and_resort;

CREATE TABLE huesped (
    id_huesped          INT          NOT NULL AUTO_INCREMENT,
    nombre              VARCHAR(100) NOT NULL,
    apellido            VARCHAR(100) NOT NULL,
    email               VARCHAR(150) NOT NULL,
    telefono            VARCHAR(20),
    documento_identidad VARCHAR(30),
    fecha_registro      DATE         NOT NULL DEFAULT (CURRENT_DATE),
    activo              TINYINT  NOT NULL DEFAULT 1,
    CONSTRAINT pk_huesped      PRIMARY KEY (id_huesped),
    CONSTRAINT uq_email        UNIQUE (email)
) ENGINE=InnoDB;