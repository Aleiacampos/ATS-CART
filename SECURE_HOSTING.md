# Hospedagem mais segura para o dashboard CAR-T

## O problema
O GitHub Pages exige repositório público para o plano gratuito, então ele não oferece proteção de acesso por si só.

## O que já temos
O arquivo `index.html` está protegido por senha usando criptografia no cliente.
Isso significa que o dashboard não aparece em texto claro sem a senha.

## Limitação dessa abordagem
Se alguém ler o código, ele vê:
- a tela de login
- a função de descriptografia
- o conteúdo cifrado

Mas não vê a senha nem os dados do dashboard em claro.

## Melhor alternativa gratuita
### 1. Cloudflare Pages + Cloudflare Access
- Cloudflare Pages pode publicar sites estáticos gratuitamente.
- Cloudflare Access adiciona autenticação antes da página ser exibida.
- Permite controle real de quem entra.

### 2. Netlify / Vercel com função de proteção
- Deploy estático gratuito.
- É possível usar funções serverless ou regras de acesso para exigir login.

## Se você precisa de segurança real
A melhor solução é usar um serviço com autenticação server-side ou controle de acesso, por exemplo:
- servidor próprio (VPS, DigitalOcean, AWS, Azure)
- Cloudflare Access
- Netlify Identity / Vercel Protect

## Passo mínimo para o GitHub Pages
Se você aceitar a proteção apenas no cliente, mantenha:
- `index.html` com o login criptografado
- repo público no GitHub
- senha forte enviada fora do site

## Script de configuração de Pages
Veja `deploy-pages.sh` para ativar GitHub Pages via API quando tiver `GITHUB_TOKEN`.
