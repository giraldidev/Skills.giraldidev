# SEO técnico para landing pages

Mesmo landing paga precisa de SEO básico: bom no Google e bom ao ser compartilhada.

## Meta tags essenciais
```html
<title>Benefício principal | Marca</title>   <!-- ~50-60 chars, com keyword -->
<meta name="description" content="Resumo persuasivo de 150-160 chars com a UVP e um CTA implícito.">
<link rel="canonical" href="https://exemplo.com/pagina">
<meta name="viewport" content="width=device-width, initial-scale=1">
```

## Open Graph & Twitter (compartilhamento)
Crítico: define como o link aparece no WhatsApp, LinkedIn, X, etc.
```html
<meta property="og:title" content="...">
<meta property="og:description" content="...">
<meta property="og:image" content="https://exemplo.com/og.jpg"> <!-- 1200x630 -->
<meta property="og:url" content="https://exemplo.com/pagina">
<meta property="og:type" content="website">
<meta name="twitter:card" content="summary_large_image">
```
Sempre gere uma **imagem OG** atraente (1200×630). Aumenta muito o CTR de links.

## Semântica & estrutura
- **Um** `<h1>` com a proposta de valor; headings em hierarquia lógica.
- HTML semântico: `<header> <main> <section> <footer>`.
- Texto real (não tudo em imagem) — o Google lê texto.
- `alt` descritivo nas imagens (acessibilidade + SEO de imagem).
- Links internos/externos com texto âncora descritivo.

## Dados estruturados (Schema.org / JSON-LD)
Ajuda rich results. Escolha o tipo certo: `Product`, `Organization`,
`FAQPage`, `SoftwareApplication`, `Review`/`AggregateRating`.
```html
<script type="application/ld+json">
{ "@context":"https://schema.org", "@type":"FAQPage",
  "mainEntity":[{"@type":"Question","name":"...",
    "acceptedAnswer":{"@type":"Answer","text":"..."}}] }
</script>
```

## Indexação
- `robots.txt` e `sitemap.xml` corretos.
- `<meta name="robots" content="index,follow">` (ou `noindex` se for página de campanha que não deve ranquear).
- URL limpa e descritiva: `/produto/landing-x`, não `/p?id=123`.
- HTTPS obrigatório.

## Conteúdo
- Use a keyword principal na title, h1, primeiro parágrafo e description — naturalmente.
- Responda à intenção de busca. FAQ ajuda a capturar long-tail.
- Não duplique conteúdo entre variações de campanha (use canonical/noindex).

## Verificação
- Teste OG no validador (debugger do Facebook/LinkedIn).
- Teste rich results no Google Rich Results Test.
- Confira mobile-friendly e indexação no Search Console.
