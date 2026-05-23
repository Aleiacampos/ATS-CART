# Dashboard CAR-T — Deploy em GitHub Pages privado

Este repositório contém apenas o arquivo `index.html` com o dashboard CAR-T protegido por senha.

## Como usar

1. Crie um repositório privado no GitHub.
2. Faça upload do arquivo `index.html` para a raiz do repositório.
3. Ative o GitHub Pages:
   - Vá em `Settings` > `Pages`
   - Em `Source`, selecione `main` (ou `master`) e `/ (root)`
   - Salve
4. Aguarde alguns minutos para o site ficar disponível.

## Senha de acesso

- `*vnh8vdmYxF4`

> Envie a URL e a senha em canais diferentes para maior segurança.

## Observações técnicas

- O conteúdo do dashboard permanece criptografado no HTML.
- A senha é usada para descriptografar tudo no navegador do usuário.
- Mesmo que alguém veja o código-fonte do `index.html`, o dashboard completo só aparece após digitar a senha correta.

## URL do GitHub Pages

A página do GitHub Pages será parecida com:

```
https://<seu-usuario>.github.io/<nome-do-repositorio>/
```

## Caso a sua conta não permita Pages em repositórios privados

- Mantenha o repositório privado e utilize o `index.html` localmente
- Ou crie um repositório público apenas para o Pages, mantendo o dashboard protegido pela senha
