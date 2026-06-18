---
name: landing-page-engineer
description: >-
  Projetar e construir landing pages de alta conversão de ponta a ponta:
  estratégia de oferta, copywriting persuasivo, estrutura de seções (hero,
  prova social, features, pricing, FAQ, CTA), performance (Core Web Vitals),
  SEO técnico, captura de leads e analytics/tracking. Use quando o usuário
  pedir para criar, revisar ou otimizar uma landing page, página de vendas,
  página de captura, página de lançamento de produto/SaaS, waitlist ou squeeze
  page — em qualquer stack (Next.js, Astro, React, HTML/Tailwind, etc.).
  Complementa a skill ui-ux-pro-max com foco em conversão.
---

# Landing Page Engineer

Skill para construir landing pages que **convertem**, não só páginas bonitas.
Atua como engenheiro de growth + copywriter + dev front-end de performance.

A pergunta que guia tudo: **"Esta página convence um visitante cético a realizar
UMA ação específica?"** Cada seção existe para mover o usuário em direção a esse
único objetivo (CTA). Se não move, sai.

## Regra de ouro

Uma landing page = **um objetivo, uma ação**. Sem menu de navegação que distrai,
sem links de fuga. Tudo aponta para o CTA.

## Workflow

### 1. Estratégia (antes de uma linha de código)
Defina e confirme com o usuário (pergunte só o que muda o resultado):
- **Objetivo de conversão**: comprar, agendar demo, entrar na waitlist, baixar, assinar newsletter?
- **Público & estágio de consciência** (Schwartz): o visitante conhece o problema? a solução? o produto?
- **Oferta**: o que é, preço, o que torna irresistível, risco/garantia.
- **Proposta de valor única (UVP)**: por que ESTE produto e não a alternativa.
- **Objeções principais** do público (as 3–5 maiores). Cada uma vira conteúdo.
- Stack alvo e onde será hospedada.

### 2. Copy primeiro, design depois
A copy é a espinha. Escreva antes de desenhar. Veja `references/copywriting.md`.
- Headline que comunica o resultado/benefício em < 1 frase (não o recurso).
- Subheadline que esclarece e qualifica.
- Bullets de benefício (resultado), não de feature (mecanismo).
- CTA com verbo de ação e valor ("Começar grátis", não "Enviar").

### 3. Estrutura de seções
Monte na ordem de persuasão. Detalhes em `references/page-structure.md`.
Esqueleto padrão de alta conversão:
1. **Hero** — headline + subhead + CTA primário + visual do produto.
2. **Prova social** — logos, números, "como visto em".
3. **Problema/agitação** — espelhe a dor do visitante.
4. **Solução / como funciona** — 3 passos simples.
5. **Benefícios** — o que o usuário ganha (não specs).
6. **Features** — com prints/demonstração.
7. **Depoimentos / casos** — prova concreta com rosto e número.
8. **Pricing** — claro, com plano recomendado destacado.
9. **FAQ** — derruba objeções restantes.
10. **CTA final** — repete a oferta + reforço de garantia.
11. **Footer** — mínimo, legal/contato.

### 4. Implementação (engenharia)
- **Mobile-first** sempre (maioria do tráfego é mobile).
- **Performance é conversão**: cada 100ms conta. Veja `references/performance.md`.
- **SEO técnico**: meta tags, OG, dados estruturados, semântica. Veja `references/seo.md`.
- **Captura & tracking**: formulário sem fricção + analytics/eventos. Veja `references/conversion-tech.md`.
- Acessibilidade e qualidade visual: reuse a skill **ui-ux-pro-max**.

### 5. Otimização & medição
- Instrumente eventos (view, scroll-depth, clique no CTA, submit).
- Estruture para A/B test (headline, CTA, hero são os de maior alavancagem).
- Veja `references/cro-checklist.md` e rode antes de entregar.

## Princípios de conversão (defaults)

- **Acima da dobra** deve responder: o que é, pra quem, por que importa, o que fazer.
- **Clareza > esperteza**. Visitante decide em segundos; não faça pensar.
- **CTA repetido** ao longo da página (mesmo texto/ação), aparecendo a cada ~1–1.5 telas.
- **Prova social cedo e sempre** — reduz risco percebido.
- **Reduza fricção**: menos campos no form, sem cadastro desnecessário, oferta clara.
- **Crie confiança**: garantia, política, segurança, rostos reais, números reais.
- **Urgência/escassez** só se for verdadeira (vagas, prazo, bônus). Falsa destrói confiança.
- **Foco**: remova navegação e links externos que tirem do CTA.

## Anti-padrões

- Headline sobre a empresa ("Somos líderes...") em vez do benefício do usuário.
- Carrossel no hero (ninguém vê o slide 2; mata performance).
- Pedir mais dados do que o necessário no formulário.
- "Saiba mais" como CTA (vago). Muros de texto sem hierarquia.
- Vídeo pesado em autoplay travando o LCP.
- Múltiplos objetivos competindo na mesma página.

## Referências

- `references/copywriting.md` — fórmulas (AIDA, PAS), headlines, CTAs, voz.
- `references/page-structure.md` — anatomia de cada seção com exemplos.
- `references/performance.md` — Core Web Vitals, otimização de imagem/fontes.
- `references/seo.md` — meta tags, OG, schema, semântica, indexação.
- `references/conversion-tech.md` — forms, validação, analytics, A/B, integrações.
- `references/cro-checklist.md` — checklist final de conversão.
