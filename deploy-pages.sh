#!/bin/sh
set -e

if [ -z "$GITHUB_TOKEN" ]; then
  echo "Erro: defina a variável de ambiente GITHUB_TOKEN com um token GitHub válido."
  echo "Exemplo: export GITHUB_TOKEN=ghp_xxx"
  exit 1
fi

REPO="Aleiacampos/ATS-CART"
API_URL="https://api.github.com/repos/$REPO/pages"

printf 'Configurando GitHub Pages para %s\n' "$REPO"

curl -X PUT "$API_URL" \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $GITHUB_TOKEN" \
  -d '{"source":{"branch":"main","path":"/"}}'

echo "\nSe a resposta acima indicar sucesso, a URL de Pages será algo como:\nhttps://Aleiacampos.github.io/ATS-CART/"
