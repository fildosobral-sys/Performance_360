# Performance Individual 360

Sistema mobile-first para avaliacao individual de colaboradores, com checklist por ocorrencia, historico auditavel, dashboard, relatorios executivos, PDI e geracao de arte profissional para compartilhamento.

## Acesso

Abra pelo navegador:

`http://127.0.0.1:8765/index.html`

Para uso no celular, publique no GitHub Pages ou acesse pelo endereco de rede do servidor local, mantendo computador e celular no mesmo Wi-Fi.

## Instalar como aplicativo

A plataforma esta preparada como PWA:

- `manifest.json`: nome, icones, tema e modo standalone.
- `service-worker.js`: cache basico para abertura mais rapida e suporte offline inicial.
- `icons/`: icones do app.
- `assets/`: logos usadas nos relatorios e artes.

No celular, abra o site no Chrome e use:

`Menu > Adicionar a tela inicial`

Quando o navegador permitir, o proprio sistema tambem pode exibir o botao `Instalar app`.

## Arquivos para publicar no GitHub Pages

Suba estes arquivos e pastas na raiz do repositorio:

- `index.html`
- `styles.css`
- `app.js`
- `manifest.json`
- `service-worker.js`
- `assets/`
- `icons/`

O arquivo `PERFORMANCE_360_AVALIACAO_ATUALIZADO.html` e uma versao avulsa para teste/local, mas para site publicado o ideal e usar os arquivos separados acima.

## Recursos principais

- Cadastro de colaboradores com foto, cargo, setor e status ativo/inativo.
- Categorias e criterios editaveis pelo administrador.
- Pontuacao automatica redistribuida entre criterios ativos.
- Checklist em acordeao com desconto automatico na nota.
- Observacao, quantidade encontrada, gravidade e evidencias por ocorrencia.
- Upload de foto, video e audio.
- Contestacao, status da ocorrencia e acao corretiva.
- Linha do tempo por colaborador.
- Dashboard com rankings, evolucao, ocorrencias e indicadores por setor/categoria.
- Relatorios parcial semanal, quinzenal, fechamento mensal, comparativo e PDI.
- Arte profissional com foto, nota, classificacao, pontos fortes e ocorrencias.
- Download da imagem, download em PDF e envio via WhatsApp.
- Backup e importacao JSON.
- Interface mobile com barra inferior fixa estilo aplicativo.

## Armazenamento

Os dados ficam no `localStorage` do navegador utilizado.

Para trocar de aparelho ou preservar os registros, use o botao `Backup JSON` e depois `Importar backup`.

## Observacao

Por usar `localStorage`, os dados nao ficam em servidor central. Se o navegador limpar dados do site, os registros podem ser perdidos sem backup.
