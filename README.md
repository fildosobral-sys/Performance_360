# Performance Individual 360

Modulo responsivo para avaliacao individual de colaboradores com cadastro, checklist por ocorrencia, historico auditavel, dashboard, relatorios e geracao de artes para compartilhamento.

## Como abrir

Execute `INICIAR_PLATAFORMA.bat` ou rode o servidor local na pasta do projeto. O endereco principal e:

`http://127.0.0.1:8765/index.html`

No celular, use o endereco de rede mostrado pelo servidor e mantenha computador e celular no mesmo Wi-Fi.

## Arquivos principais

- `index.html`: estrutura da interface e areas do modulo.
- `styles.css`: layout responsivo para celular e computador.
- `app.js`: regras de negocio, armazenamento local, calculo de nota, historico, relatorios e arte em canvas.

## Recursos implementados

- Cadastro completo de colaboradores com foto, cargo, setor, admissao e status ativo/inativo.
- Categorias e criterios totalmente editaveis pelo administrador.
- Checklist em acordeao com desconto automatico na nota inicial.
- Observacoes opcionais por ocorrencia com registro de gestor, data, categoria e criterio.
- Evidencias por foto, video e audio armazenadas junto da ocorrencia.
- Contestacao com manter, alterar ou cancelar desconto e recalcule automatico da nota.
- Linha do tempo por colaborador com avaliacoes, observacoes, justificativas e evolucao.
- Dashboard com rankings, ocorrencias, evolucao e destaques por setor/categoria.
- Relatorios semanal, quinzenal, mensal, comparativo e PDI.
- Arte profissional em canvas com foto, nota, classificacao, pontos positivos, descontos e observacoes.
- Botoes para WhatsApp, e-mail, PNG 4K, PNG 8K e PDF.
- Backup e importacao JSON.

Os dados ficam no `localStorage` do navegador utilizado.
