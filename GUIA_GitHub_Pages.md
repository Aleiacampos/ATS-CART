# 🚀 Como publicar o Dashboard CAR-T no GitHub Pages

## Senha de acesso ao dashboard
```
*vnh8vdmYxF4
```
⚠️ Guarde esta senha em local seguro. Ela não pode ser recuperada.

---

## Passo a Passo

### 1. Criar conta no GitHub (se não tiver)
- Acesse https://github.com e clique em **Sign up**
- Escolha um nome de usuário (ex: `aleia-ats`)

---

### 2. Criar o repositório

1. Acesse https://github.com/new
2. Preencha:
   - **Repository name:** `cart-dashboard` (ou qualquer nome)
   - **Visibility:** ✅ **Public** (obrigatório para GitHub Pages gratuito)
   - Marque: **Add a README file**
3. Clique em **Create repository**

---

### 3. Fazer upload do arquivo

1. Dentro do repositório criado, clique em **Add file → Upload files**
2. Arraste o arquivo `dashboard_cart_protegido.html`
3. **Importante:** renomeie-o para `index.html` antes de subir
   - Ou faça o upload e depois renomeie clicando no arquivo → ✏️ editar → salvar como `index.html`
4. Clique em **Commit changes**

---

### 4. Ativar GitHub Pages

1. No repositório, vá em **Settings** (ícone de engrenagem)
2. No menu lateral, clique em **Pages**
3. Em **Source**, selecione:
   - Branch: **main**
   - Pasta: **/ (root)**
4. Clique em **Save**
5. Aguarde ~2 minutos

---

### 5. Acessar o dashboard

Sua URL será:
```
https://SEU-USUARIO.github.io/cart-dashboard/
```

Exemplo: `https://aleia-ats.github.io/cart-dashboard/`

---

## Compartilhar com a equipe

Envie a URL e a senha separadamente por canais diferentes:
- URL → pode enviar por e-mail / Teams / WhatsApp
- Senha → envie por canal diferente (ex: telefone ou mensagem separada)

---

## Segurança

| Proteção | Método |
|----------|--------|
| Criptografia | AES-256-GCM |
| Derivação de chave | PBKDF2 · SHA-256 · 100.000 iterações |
| Descriptografia | 100% client-side (navegador) |
| Armazenamento da senha | Nunca armazenada no servidor |

O conteúdo do dashboard **não pode ser lido** por ninguém sem a senha,
mesmo que acesse o código-fonte HTML da página.

