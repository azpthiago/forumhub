CREATE TABLE topicos
(
    id            BIGINT AUTO_INCREMENT PRIMARY KEY,
    titulo        VARCHAR(100)         NOT NULL,
    data          DATETIME             NOT NULL,
    mensagem      VARCHAR(255)         NOT NULL,
    estado_topico BOOLEAN DEFAULT TRUE NOT NULL,
    autor         VARCHAR(255)         NOT NULL,
    curso         VARCHAR(255)         NOT NULL
);

CREATE TABLE usuarios
(
    id    INT AUTO_INCREMENT PRIMARY KEY,
    login VARCHAR(100) NOT NULL,
    senha VARCHAR(255) NOT NULL
);
