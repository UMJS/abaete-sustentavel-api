CREATE TABLE materiais_oferendas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_material VARCHAR(100) NOT NULL,
    tempo_decomposicao VARCHAR(100) NOT NULL,
    impacto_ambiental VARCHAR(50) NOT NULL, -- Baixo, Médio, Alto
    recomendacao TEXT
);

CREATE TABLE interacoes_comunidade (
    id INT AUTO_INCREMENT PRIMARY KEY,
    data_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    pergunta_usuario TEXT NOT NULL,
    status_resposta VARCHAR(20) DEFAULT 'Pendente'
);

-- Dados extraídos do Manual (Projeto Aldir Blanc Bahia)
INSERT INTO materiais_oferendas (nome_material, tempo_decomposicao, impacto_ambiental, recomendacao) VALUES
('Plástico', '500 anos', 'Alto', 'Substituir por cabaças, cuias de coco ou bambu.'),
('Barro curado', '10 anos', 'Médio', 'Triturar para usar como terra ou transformar em vasos.'),
('Papelão', '2 a 4 meses', 'Baixo', 'Decomposição rápida, mas evitar excessos.');
