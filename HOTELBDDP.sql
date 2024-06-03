-- Tabela de Clientes
CREATE TABLE Clientes (
    ID_Cliente INT PRIMARY KEY,
    Nome VARCHAR(100),
    Endereco VARCHAR(255),
    Email VARCHAR(100),
    Telefone INT,
);
GO


-- Tabela de Quartos
CREATE TABLE Quartos (
    ID_Quarto INT PRIMARY KEY,
    NumeroQuarto VARCHAR(50),
    TipoQuarto VARCHAR(50),
    DescricaoQuarto VARCHAR(100),
    PrecoPorNoite DECIMAL(10, 2),
    Disponibilidade VARCHAR(20)
);
GO


-- Tabela de Reservas
CREATE TABLE Reservas (
    ID_Reserva INT PRIMARY KEY,
    ID_Cliente INT,
    ID_Quarto INT,
    DataCheckIn DATE,
    DataCheckOut DATE,
    StatusReserva VARCHAR(50),
    FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID_Cliente),
    FOREIGN KEY (ID_Quarto) REFERENCES Quartos(ID_Quarto)
);
GO


-- Tabela de Funcionários
CREATE TABLE Funcionarioshotel (
    ID_Funcionario INT PRIMARY KEY,
    Nome VARCHAR(100),
    Cargo VARCHAR(100),
    Departamento VARCHAR(100),
    Salario DECIMAL(10, 2),
    DataContratacao DATE,
);
GO


-- Tabela de Serviços Adicionais
CREATE TABLE ServicosAdicionais (
    ID_Servico INT PRIMARY KEY,
    DescricaoServico VARCHAR(255),
    PrecoServico DECIMAL(10, 2)
);
GO


-- Tabela de Consumo
CREATE TABLE Consumo (
    ID_Consumo INT PRIMARY KEY,
    ID_Reserva INT,
    ID_Servico INT,
    Quantidade INT,
    DataHoraPedido VARCHAR,
    ValorTotal DECIMAL(10, 2),
    FOREIGN KEY (ID_Reserva) REFERENCES Reservas(ID_Reserva),
    FOREIGN KEY (ID_Servico) REFERENCES ServicosAdicionais(ID_Servico)
);
GO

--altera o formato de data SQL
SET DATEFORMAT DMY;
GO

--COLOCANDO DENTRO DAS TABELAS

INSERT INTO Clientes(ID_Cliente, Nome, Endereco, Email, Telefone)
	VALUES (1, 'Ana da Silva','Rua ana 123', 'ana@gmail.com', '123456789' ),
(2, 'Ana Brandão','Rua bandão 123', 'brandão@gmail.com', '123456781' ),
(3, 'Ana Sousa','Rua sousa 123', 'sousa@gmail.com', '123456782' ),
(4, 'Jessyca Sousa','Rua Jessyca 123', 'Jessyca@gmail.com', '123456783' ),
(5, 'Jessyca Brandão','Rua vinte 123', 'vinte@gmail.com', '123456784' ),
(6, 'Susana Viera','Rua Susana 123', 'Susana@gmail.com', '123456785' ),
(7, 'Antônio Fagundes', 'Rua Antônio 123', 'Antonio@gmail.com', '123456786' ),
(8, 'Abel Pêra','Rua Abel 123', 'Abel@gmail.com', '123456787' ),
(9, 'Blaise Musipere','Rua Blaise 123', 'Blaise@gmail.com', '123456788' ),
(10, 'Adolfo Celi','Rua Adolfo 123', 'aAdolfo@gmail.com', '123456780' ),
(11, 'Alexandre Paternost','Rua Alexandre 123', 'Alexandre@gmail.com', '123456719' ),
(12, 'Alexandre Zacchia','Rua Zacchia 123', 'Zacchia@gmail.com', '123456729' ),
(13, 'Aloísio de Abreu','Rua Aloísio 123', 'Aloisio@gmail.com', '123456739' ),
(14, 'Álvaro Freire','Rua Álvaro 123', 'alvaro@gmail.com', '123456749' ),
(15, 'Amilton Monteiro','Rua Amilton 123', 'Amilton@gmail.com', '123456759' ),
(16, 'André Barros','Rua André 123', 'Andre@gmail.com', '123456769' ),
(17, 'André José Adler','Rua José 123', 'Jose@gmail.com', '123456779' ),
(18, 'Anthony Steffen','Rua Anthony 123', 'Anthony@gmail.com', '123456789' ),
(19, 'Antonio Canto','Rua Antonio 123', 'Antonio@gmail.com', '123456189' ),
(20, 'Regina Duarte','Rua Regina 123', 'Regina@gmail.com', '123456289' ),
(21, 'Giovanna Antonelli','Rua Giovanna 123', 'Giovanna@gmail.com', '123456389' ),
(22, ' Fernanda Vasconcellos','Rua Fernanda 123', 'Fernanda@gmail.com', '123456489' ),
(23, 'Regina Dantas','Rua Dantas 123', 'Dantas@gmail.com', '123456589' ),
(24, 'Adriana Esteves','Rua Adriana 123', 'Adriana@gmail.com', '123456689' ),
(25, 'Betty Faria ','Rua Betty 123', 'Betty@gmail.com', '123456789' ),
(26, 'Patrícia Pillar','Rua Patrícia 123', 'Patricia@gmail.com', '123451789' ),
(27, 'Juliana Paes','Rua Juliana 123', 'Juliana@gmail.com', '123452789' ),
(28, 'Adriana Esteves','Rua Adriana 123', 'Adriana@gmail.com', '123453789' ),
(29, 'Alice Braga','Rua Alice 123', 'Alice@gmail.com', '123454789' ),
(30, 'Jessyca da Silva','Rua Silva 123', 'Silva@gmail.com', '123455789' );
GO

INSERT INTO Quartos (ID_Quarto, NumeroQuarto, TipoQuarto, DescricaoQuarto, PrecoPorNoite, Disponibilidade)
VALUES 
    (1, '101', 'Individual', 'Quarto individual com banheiro privativo', 100.00, 'disponível'),
    (2, '102', 'Duplo', 'Quarto duplo com cama de casal', 150.00, 'disponível'),
    (3, '103', 'Suíte', 'Suíte com vista para o mar', 200.00, 'ocupado'),
	(4, '104', 'Individual', 'Quarto individual com varanda', 120.00, 'disponível'),
    (5, '105', 'Duplo', 'Quarto duplo com vista para o jardim', 180.00, 'disponível'),
    (6, '106', 'Suíte', 'Suíte de luxo com jacuzzi', 250.00, 'disponível'),
    (7, '107', 'Individual', 'Quarto individual com vista para a cidade', 110.00, 'disponível'),
    (8, '108', 'Duplo', 'Quarto duplo com varanda', 160.00, 'ocupado'),
    (9, '109', 'Suíte', 'Suíte com terraço privativo', 220.00, 'disponível'),
    (10, '110', 'Individual', 'Quarto individual com ar condicionado', 130.00, 'disponível'),
    (11, '111', 'Duplo', 'Quarto duplo com vista para o mar', 190.00, 'disponível'),
    (12, '112', 'Suíte', 'Suíte de luxo com vista panorâmica', 280.00, 'disponível'),
    (13, '113', 'Individual', 'Quarto individual com café da manhã incluso', 140.00, 'disponível'),
    (14, '114', 'Duplo', 'Quarto duplo com banheira de hidromassagem', 200.00, 'disponível'),
    (15, '115', 'Suíte', 'Suíte presidencial com serviço de mordomo', 350.00, 'ocupado'),
    (16, '116', 'Individual', 'Quarto individual com decoração moderna', 150.00, 'disponível'),
    (17, '117', 'Duplo', 'Quarto duplo com área de estar', 220.00, 'disponível'),
    (18, '118', 'Suíte', 'Suíte com piscina privativa', 300.00, 'disponível'),
    (19, '119', 'Individual', 'Quarto individual com acesso para cadeira de rodas', 140.00, 'disponível'),
    (20, '120', 'Duplo', 'Quarto duplo com vista para o rio', 200.00, 'disponível'),
    (21, '121', 'Suíte', 'Suíte de luxo com lareira', 280.00, 'disponível'),
    (22, '122', 'Individual', 'Quarto individual com vista para a montanha', 160.00, 'ocupado'),
    (23, '123', 'Duplo', 'Quarto duplo com varanda privativa', 220.00, 'disponível'),
    (24, '124', 'Suíte', 'Suíte com banheira de hidromassagem e sauna', 320.00, 'disponível'),
    (25, '125', 'Individual', 'Quarto individual com vista para o jardim interno', 170.00, 'disponível'),
    (26, '126', 'Duplo', 'Quarto duplo com área de trabalho', 230.00, 'disponível'),
    (27, '127', 'Suíte', 'Suíte com terraço panorâmico', 290.00, 'disponível'),
    (28, '128', 'Individual', 'Quarto individual com cozinha compacta', 180.00, 'ocupado'),
    (29, '129', 'Duplo', 'Quarto duplo com vista para o campo de golfe', 240.00, 'disponível'),
    (30, '130', 'Suíte', 'Suíte com sala de estar e banheira de hidromassagem', 350.00, 'disponível');
	GO

	INSERT INTO Reservas (ID_Reserva, ID_Cliente, ID_Quarto, DataCheckIn, DataCheckOut, StatusReserva)
VALUES 
    (1, 1, 1, '2024-04-01', '2024-04-05', 'confirmada'),
    (2, 2, 2, '2024-04-02', '2024-04-06', 'pendente'),
    (3, 3, 3, '2024-04-03', '2024-04-07', 'cancelada'),
	(4, 4, 4, '2024-04-04', '2024-04-08', 'confirmada'),
    (5, 5, 5, '2024-04-05', '2024-04-09', 'pendente'),
    (6, 6, 6, '2024-04-06', '2024-04-10', 'cancelada'),
    (7, 7, 7, '2024-04-07', '2024-04-11', 'confirmada'),
    (8, 8, 8, '2024-04-08', '2024-04-12', 'pendente'),
    (9, 9, 9, '2024-04-09', '2024-04-13', 'cancelada'),
    (10, 10, 10, '2024-04-10', '2024-04-14', 'confirmada'),
    (11, 11, 11, '2024-04-11', '2024-04-15', 'pendente'),
    (12, 12, 12, '2024-04-12', '2024-04-16', 'cancelada'),
    (13, 13, 13, '2024-04-13', '2024-04-17', 'confirmada'),
    (14, 14, 14, '2024-04-14', '2024-04-18', 'pendente'),
    (15, 15, 15, '2024-04-15', '2024-04-19', 'cancelada'),
    (16, 16, 16, '2024-04-16', '2024-04-20', 'confirmada'),
    (17, 17, 17, '2024-04-17', '2024-04-21', 'pendente'),
    (18, 18, 18, '2024-04-18', '2024-04-22', 'cancelada'),
    (19, 19, 19, '2024-04-19', '2024-04-23', 'confirmada'),
    (20, 20, 20, '2024-04-20', '2024-04-24', 'pendente'),
    (21, 21, 21, '2024-04-21', '2024-04-25', 'cancelada'),
    (22, 22, 22, '2024-04-22', '2024-04-26', 'confirmada'),
    (23, 23, 23, '2024-04-23', '2024-04-27', 'pendente'),
    (24, 24, 24, '2024-04-24', '2024-04-28', 'cancelada'),
    (25, 25, 25, '2024-04-25', '2024-04-29', 'confirmada'),
    (26, 26, 26, '2024-04-26', '2024-04-30', 'pendente'),
    (27, 27, 27, '2024-04-27', '2024-05-01', 'cancelada'),
    (28, 28, 28, '2024-04-28', '2024-05-02', 'confirmada'),
    (29, 29, 29, '2024-04-29', '2024-05-03', 'pendente'),
    (30, 30, 30, '2024-04-30', '2024-05-04', 'cancelada');
	GO

	INSERT INTO Funcionarioshotel (ID_Funcionario, Nome, Cargo, Departamento, Salario, DataContratacao)
VALUES 
    (1, 'João Silva', 'Recepcionista', 'Recepção', 2500.00, '2022-01-15'),
    (2, 'Maria Souza', 'Camareira', 'Limpeza', 2000.00, '2022-02-20'),
    (3, 'Pedro Santos', 'Cozinheiro', 'Restaurante', 2800.00, '2022-03-10'),
	(4, 'Ana Oliveira', 'Recepcionista', 'Recepção', 2600.00, '2022-04-05'),
    (5, 'Carlos Silva', 'Camareiro', 'Limpeza', 2100.00, '2022-05-10'),
    (6, 'Fernanda Santos', 'Cozinheira', 'Restaurante', 2900.00, '2022-06-15'),
    (7, 'Rafael Pereira', 'Gerente', 'Administração', 3500.00, '2022-07-20'),
    (8, 'Juliana Lima', 'Atendente de Bar', 'Bar', 2300.00, '2022-08-25'),
    (9, 'Lucas Ferreira', 'Segurança', 'Segurança', 2700.00, '2022-09-30'),
    (10, 'Mariana Almeida', 'Recepcionista', 'Recepção', 2600.00, '2022-10-05'),
    (11, 'Rodrigo Santos', 'Camareiro', 'Limpeza', 2100.00, '2022-11-10'),
    (12, 'Amanda Pereira', 'Cozinheira', 'Restaurante', 2900.00, '2022-12-15'),
    (13, 'Luiz Oliveira', 'Gerente', 'Administração', 3500.00, '2023-01-20'),
    (14, 'Bruna Lima', 'Atendente de Bar', 'Bar', 2300.00, '2023-02-25'),
    (15, 'Gustavo Ferreira', 'Segurança', 'Segurança', 2700.00, '2023-03-30'),
    (16, 'Carla Almeida', 'Recepcionista', 'Recepção', 2600.00, '2023-04-05'),
    (17, 'João Pimentel', 'Camareiro', 'Limpeza', 2100.00, '2023-05-10'),
    (18, 'Maria Pimentel', 'Cozinheira', 'Restaurante', 2900.00, '2023-06-15'),
    (19, 'Pedro Pimentel', 'Gerente', 'Administração', 3500.00, '2023-07-20'),
    (20, 'Ana Pimentel', 'Atendente de Bar', 'Bar', 2300.00, '2023-08-25'),
    (21, 'Carlos Pimentel', 'Segurança', 'Segurança', 2700.00, '2023-09-30'),
    (22, 'Fernanda Pimentel', 'Recepcionista', 'Recepção', 2600.00, '2023-10-05'),
    (23, 'Rafael Pimentel', 'Camareiro', 'Limpeza', 2100.00, '2023-11-10'),
    (24, 'Juliana Pimentel', 'Cozinheira', 'Restaurante', 2900.00, '2023-12-15'),
    (25, 'Lucas Pimentel', 'Gerente', 'Administração', 3500.00, '2024-01-20'),
    (26, 'Mariana Pimentel', 'Atendente de Bar', 'Bar', 2300.00, '2024-02-25'),
    (27, 'Rodrigo Pimentel', 'Segurança', 'Segurança', 2700.00, '2024-03-30'),
    (28, 'Amanda Pimentel', 'Recepcionista', 'Recepção', 2600.00, '2024-04-05'),
    (29, 'Luiz Pimentel', 'Camareiro', 'Limpeza', 2100.00, '2024-05-10'),
    (30, 'Bruna Santos', 'Cozinheira', 'Restaurante', 2900.00, '2024-06-15');
	GO


	INSERT INTO ServicosAdicionais (ID_Servico, DescricaoServico, PrecoServico)
VALUES 
    (1, 'Café da manhã', 15.00),
    (2, 'Serviço de quarto', 20.00),
    (3, 'Estacionamento', 10.00),
	(4, 'Wi-Fi', 5.00),
    (5, 'Lavanderia', 25.00),
    (6, 'Transporte para o aeroporto', 30.00),
    (7, 'Aluguel de bicicletas', 10.00),
    (8, 'Massagem no quarto', 40.00),
    (9, 'Piscina aquecida', 20.00),
    (10, 'Serviço de babá', 35.00),
    (11, 'Tour guiado pela cidade', 15.00),
    (12, 'Academia', 25.00),
    (13, 'Serviço de concierge', 20.00),
    (14, 'Aluguel de carros', 30.00),
    (15, 'Serviço de despertar', 5.00),
    (16, 'Café da tarde', 10.00),
    (17, 'Pet-sitting', 25.00),
    (18, 'Serviço de manicure/pedicure', 45.00),
    (19, 'Sala de reuniões', 50.00),
    (20, 'Bar na piscina', 15.00),
    (21, 'Aulas de ioga', 20.00),
    (22, 'Serviço de engraxate', 10.00),
    (23, 'Sala de jogos', 30.00),
    (24, 'Assistência médica', 40.00),
    (25, 'Babá eletrônica', 15.00),
    (26, 'Aluguel de equipamentos esportivos', 25.00),
    (27, 'Festas temáticas', 35.00),
    (28, 'Serviço de buffet para eventos', 50.00),
    (29, 'Seguro de viagem', 30.00),
    (30, 'Aluguel de guarda-sol e cadeiras de praia', 20.00);
	GO

	INSERT INTO Consumo (ID_Consumo, ID_Reserva, ID_Servico, Quantidade, DataHoraPedido, ValorTotal)
VALUES 
    (1, 1, 1, 2, '2024-04-01 08:00:00', 30.00),
    (2, 2, 2, 1, '2024-04-02 10:30:00', 20.00),
    (3, 3, 3, 3, '2024-04-03 12:15:00', 40.00),
	(4, 4, 4, 1, '2024-04-04 09:45:00', 15.00),
    (5, 5, 5, 2, '2024-04-05 11:00:00', 50.00),
    (6, 6, 6, 3, '2024-04-06 14:30:00', 60.00),
    (7, 7, 7, 1, '2024-04-07 16:20:00', 20.00),
    (8, 8, 8, 2, '2024-04-08 08:45:00', 80.00),
    (9, 9, 9, 3, '2024-04-09 10:00:00', 30.00),
    (10, 10, 10, 1, '2024-04-10 12:15:00', 35.00),
    (11, 11, 11, 2, '2024-04-11 15:30:00', 40.00),
    (12, 12, 12, 3, '2024-04-12 18:45:00', 45.00),
    (13, 13, 13, 1, '2024-04-13 09:00:00', 20.00),
    (14, 14, 14, 2, '2024-04-14 11:15:00', 25.00),
    (15, 15, 15, 3, '2024-04-15 13:30:00', 30.00),
    (16, 16, 16, 1, '2024-04-16 15:45:00', 35.00),
    (17, 17, 17, 2, '2024-04-17 17:00:00', 40.00),
    (18, 18, 18, 3, '2024-04-18 09:15:00', 45.00),
    (19, 19, 19, 1, '2024-04-19 11:30:00', 50.00),
    (20, 20, 20, 2, '2024-04-20 13:45:00', 55.00),
    (21, 21, 21, 3, '2024-04-21 16:00:00', 60.00),
    (22, 22, 22, 1, '2024-04-22 18:15:00', 25.00),
    (23, 23, 23, 2, '2024-04-23 10:30:00', 30.00),
    (24, 24, 24, 3, '2024-04-24 12:45:00', 35.00),
    (25, 25, 25, 1, '2024-04-25 15:00:00', 40.00),
    (26, 26, 26, 2, '2024-04-26 17:15:00', 45.00),
    (27, 27, 27, 3, '2024-04-27 19:30:00', 50.00),
    (28, 28, 28, 1, '2024-04-28 09:45:00', 55.00),
    (29, 29, 29, 2, '2024-04-29 12:00:00', 60.00),
    (30, 30, 30, 3, '2024-04-30 14:15:00', 65.00);
	GO


SELECT * FROM Clientes
GO

SELECT * FROM Quartos
GO

SELECT * FROM Reservas
GO

SELECT * FROM Funcionarioshotel
GO

SELECT * FROM ServicosAdicionais
GO

SELECT * FROM Consumo
GO

