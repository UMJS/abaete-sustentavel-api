# 🌿 Abaeté Sustentável API
**Projeto de Impacto Social | AAPBA & Programa Aldir Blanc Bahia**

Esta API foi desenvolvida para digitalizar as diretrizes do manual de preservação da Lagoa do Abaeté, transformando informações de educação ambiental em dados consumíveis por automações e assistentes virtuais.

## 🚀 Tecnologias e Conceitos Aplicados
- **Java 17 & Spring Boot:** Arquitetura de microserviços e endpoints REST.
- **SQL:** Modelagem de dados relacionais e queries de filtragem por impacto ambiental.
- **n8n (NoCode/LowCode):** Integração de Webhooks para recebimento de interações da comunidade em tempo real.
- **Impacto Social:** Solução tecnológica real aplicada à Associação de Atletas Paralímpicos da Bahia.

## 🛠️ Endpoints Principais
- `GET /api/materiais`: Retorna a lista completa de materiais e tempos de decomposição.
- `GET /api/materiais/impacto/{nivel}`: Filtra materiais por risco ambiental (Baixo, Médio, Alto).
- `POST /api/materiais/duvida`: Recebe dados do Chatbot (via n8n) e persiste no banco de dados.

## 📊 Estratégia de Automação
O fluxo no **n8n** atua como uma ponte: o usuário envia uma dúvida via WhatsApp/Telegram, o n8n consulta esta API e registra a interação no banco SQL para posterior análise da diretoria da AAPBA.
