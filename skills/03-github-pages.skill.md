# Skill: Ativar GitHub Pages para o dashboard

## Objetivo
Publicar o dashboard CAR-T no GitHub Pages e documentar os passos necessários.

## Ações suportadas
- verificar se o GitHub CLI (`gh`) está instalado
- verificar se há credenciais/tokens no ambiente
- gerar comandos para ativar Pages via API quando autenticado
- oferecer o fluxo manual pelo GitHub quando não há CLI ou token

## Uso
1. Verificar disponibilidade de `gh`.
2. Verificar variáveis de ambiente de autenticação.
3. Se disponível, executar configuração de Pages.
4. Caso contrário, instruir a ativação via interface do GitHub.

## Observações
- sem `gh` ou token, a ativação precisa ser feita manualmente em `Settings > Pages`
- o branch deve ser `main` e a pasta `/ (root)`
