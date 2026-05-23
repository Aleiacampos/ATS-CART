# Claude Start — Dashboard CAR-T

Este é o ponto de partida para usar Claude com o projeto `ATS-CART`.

## Objetivo

Usar Claude como assistente para:
- atualizar a senha do dashboard protegido
- gerar o HTML criptografado com nova senha
- commitar e enviar as alterações ao GitHub
- verificar o deploy do GitHub Pages
- documentar o fluxo de trabalho

## O que já existe neste repositório

- `dashboard_cart.html` — versão original do dashboard sem proteção
- `dashboard_cart_protegido.html` — login protegido e payload criptografado
- `index.html` — cópia do dashboard protegido usada pelo Pages
- `deploy-pages.sh` — script de configuração de GitHub Pages
- `skills/` — documentação de skills e workflows do projeto
- `README.md` e `GUIA_GitHub_Pages.md` — instruções de deploy

## Fluxo recomendado para Claude

1. Leia o contexto do repositório e entenda que o público final é um dashboard estático protegido por senha.
2. Verifique o estado do Git:
   - `git status --short`
   - `git branch --show-current`
3. Use `dashboard_cart.html` como fonte para recriptografar quando precisar atualizar a senha.
4. Atualize `dashboard_cart_protegido.html` e `index.html` com o mesmo payload criptografado.
5. Commit e push das alterações.
6. Verifique o deploy do Pages via URL pública e, se necessário, via API.

## Como estruturar prompts para Claude

Use um prompt claro, com contexto e resultados esperados:

- "Este repositório publica um dashboard CAR-T no GitHub Pages. O arquivo `index.html` é o ponto de entrada público. A página exige uma senha para descriptografar o conteúdo."
- "Preciso que você verifique o status do git, atualize o arquivo protegido com a senha `#Sula2026Aleia`, commit e faça push, e depois valide o deploy do GitHub Pages."
- "Se a senha funciona localmente, mas não no GitHub Pages, verifique se há cache no navegador ou se a URL Pages está servindo corretamente o `index.html` mais recente."

## Comandos úteis sempre à mão

- `git status --short`
- `git diff -- dashboard_cart_protegido.html index.html`
- `git add dashboard_cart_protegido.html index.html`
- `git commit -m '...'`
- `git push origin main`
- `bash deploy-pages.sh`
- `curl -I -L https://aleiacampos.github.io/ATS-CART/`
- `curl -s https://raw.githubusercontent.com/Aleiacampos/ATS-CART/main/index.html | head`

## Importante

- O GitHub Pages está em um repositório público, então a proteção é feita pelo HTML criptografado, não pelo servidor.
- O prompt de Claude deve mencionar que a senha deve ser aplicada ao payload criptografado e que o arquivo público é `index.html`.
- Se houver problema no GitHub Pages, confirme se não é cache do navegador antes de alterar o conteúdo novamente.

## Beneficiários — Terapia Carvykti

| # | Nome | Tipo Solicitação | Data Liminar | Prestador | Médico | Linha |
|---|------|-----------------|-------------|-----------|--------|-------|
| 1 | Aliomar | LIMINAR | 05/12/2025 | Rede D'or - São Rafael | Dr. Thiago Thalles de Freitas | 3ª |
| 2 | Ana Caroline | LIMINAR | 02/08/2024 | AC Camargo | Dr. Jayr Schmidt Filho | 4ª |
| 3 | Andrea Marroquim | LIMINAR | 24/03/2026 | Hosp. Sírio Libanês | Dr. Erick Menezes | 5ª |
| 4 | Clarice | LIMINAR | 01/03/2026 | Rede D'or - DF Star | Dr. Paulo Henrique Alves Soares | 4ª |
| 5 | Erinalda | LIMINAR | 26/03/2026 | Rede D'or - DF Star | Dr. Fernando Sergio Blumm Ferreira / Dr. Rafael de Sá Vasconcelos | 4ª |
| 6 | Fabricio | LIMINAR | 25/10/2024 | Rede D'or - São Rafael | Dra. Vanessa A Bovolenta / Dra. Liliana B. Passos | 4ª |
| 7 | Jonathan | LIMINAR | 17/07/2025 | Rede D'or - Vila Nova Star | Dr. Rodrigo Villar / Dr. Vanderson Geraldo Rocha | 2ª |
| 8 | Josinete | LIMINAR | 27/02/2026 | AC Camargo | Dra. Maiana Hamdan Coelho / Dr. Vanderson Geraldo Rocha | 3ª |
| 9 | Leonardo | LIMINAR | 19/08/2025 | Rede D'or - Vila Nova Star | Dr. Vanderson Geraldo Rocha / Dra. Julia Curi Amarante | 4ª |
| 10 | Luciana Maria | LIMINAR | 31/03/2026 | — | Dr. Nelson Hamerschlak | 5ª |
| 11 | Marcos | LIMINAR | 15/11/2025 | Rede D'or - Quinta D'Or | Dr. Renato de Castro Araujo | 4ª |
| 12 | Paulo Roberto | LIMINAR | 05/02/2026 | Rede D'or - Quinta D'Or | Dra. Martha Colares Nogueira | 4ª |
| 13 | Renata | LIMINAR | 20/09/2024 | Hosp. Oswaldo Cruz | Dr. Otávio Baiocchi | 4ª |
| 14 | Rosemery | LIMINAR | 19/05/2025 | Oncoclinicas RJ | Dr. Leonardo Gomes | 4ª |
| 15 | Rosiclea | LIMINAR | 03/03/2026 | Hosp. São Camilo | Dr. Roberto Luiz da Silva | 4ª |
| 16 | Severino | LIMINAR | 22/08/2025 | Rede D'or - Vila Nova Star | Dr. Guilherme Duffles / Dr. Vanderson Geraldo Rocha | 4ª |
| 17 | Vera Lucia | LIMINAR | 05/03/2026 | Hosp. Vital - Santo André | Dra. Thais Mazarra | 4ª |
| 18 | Vital | LIBERALIDADE AMBEV | 13/03/2026 | AC Camargo | Dr. Jayr Schmidt Filho / Dr. Humberto V. Chaves | 4ª |
| 19 | Christiana | LIMINAR | 20/02/2026 | Rede D'or - Vila Nova Star | Dr. Vanderson Geraldo Rocha / Dra. Julia Curi Amarante | 3ª |
| 20 | Kleucius | LIMINAR | 29/04/2026 | Rede D'or - São Rafael | Dr. Thiago Thalles de Freitas | 3ª |
| 21 | Bladimir | AGUARDANDO | — | IOP - Inst. Oncologia Paraná | Dr. Eduardo C. Munhoz | 4ª |
| 22 | Elton | AGUARDANDO DIRME | — | Mater Dei - MG | Dra. Isabella de Oliveira Dias | 2ª |

## Comece por aqui

1. Abra `CLAUDE_START.md` e leia este contexto.
2. Veja `skills/04-claude-assistant.skill.md` para o fluxo de uso do Claude.
3. Veja `skills/05-deploy-automation.skill.md` para o deploy padrão.
