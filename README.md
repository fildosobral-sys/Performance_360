# Performance Individual 360

Sistema responsivo para avaliação individual de colaboradores, ocorrências, feedback, histórico, dashboard, relatórios e geração de artes para compartilhamento.

## Arquivos principais

- `index.html` — estrutura principal do sistema.
- `styles.css` — layout desktop, tablet e celular.
- `app.js` — regras de negócio, localStorage, relatórios, canvas e backup.
- `manifest.json` — instalação como aplicativo/PWA.
- `service-worker.js` — cache e funcionamento offline.
- `icons/` — ícones do aplicativo.

## Publicação no GitHub Pages

Envie todos os arquivos deste pacote para a raiz do repositório e mantenha o GitHub Pages em:

- Source: Deploy from a branch
- Branch: principal
- Folder: / (root)

Depois acesse o link do GitHub Pages no celular e escolha **Adicionar à tela inicial** ou **Instalar aplicativo**.

## Dados

Os dados ficam salvos no `localStorage` do navegador. Use o botão **Backup JSON** para guardar uma cópia antes de trocar de celular, limpar cache ou atualizar a plataforma.


## Versão PRO PWA

Esta versão inclui ajustes de experiência mobile em estilo aplicativo, PWA instalável, service worker, tela em modo standalone, cards executivos, dashboard com KPIs destacados, avaliação com acordeão inteligente, nota fixa durante avaliação e melhorias visuais para Android/iOS.
