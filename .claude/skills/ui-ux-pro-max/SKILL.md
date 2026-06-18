---
name: ui-ux-pro-max
description: >-
  Design e implementação de interfaces de alto nível (UI) e experiência do
  usuário (UX). Use quando o usuário pedir para criar, revisar ou melhorar
  telas, componentes, layouts, fluxos, design system, acessibilidade,
  responsividade, microinterações ou hierarquia visual — em web (React/Tailwind/
  HTML/CSS), mobile ou protótipos. Cobre desde decisões de produto até CSS final.
---

# UI/UX Pro Max

Skill para projetar e construir interfaces que são bonitas, usáveis e acessíveis.
Funciona como um designer de produto sênior + engenheiro front-end. Não entrega
"qualquer coisa que funciona" — entrega algo intencional, justificado e polido.

## Princípio central

Toda decisão de interface deve responder a uma pergunta: **o que o usuário está
tentando fazer aqui, e qual o menor caminho até lá?** Estética serve à clareza,
nunca o contrário.

## Workflow

Siga estas fases. Para tarefas pequenas (um botão, um ajuste de espaçamento)
pule direto para a fase 4.

### 1. Entender o contexto (antes de desenhar)
- Quem é o usuário e qual a tarefa principal da tela?
- É um produto novo ou existe um design system / identidade visual a respeitar?
- Plataforma alvo (web desktop, mobile, ambos) e stack (React, Vue, HTML puro, Tailwind, etc.)?
- Se algo essencial não estiver claro e mudar o resultado, **pergunte** — caso contrário assuma padrões sensatos e siga.

### 2. Estruturar a UX (fluxo antes de pixel)
- Mapeie o fluxo: estados (vazio, carregando, erro, sucesso, lista cheia).
- Defina a hierarquia: qual é a ação primária? Tudo mais é secundário.
- Reduza fricção: menos campos, menos cliques, defaults inteligentes.
- Consulte `references/ux-laws.md` para heurísticas (Fitts, Hick, Jakob, etc.).

### 3. Definir a linguagem visual
- Estabeleça tokens **antes** de escrever componentes: cor, tipografia, espaçamento, raio, sombra.
- Use uma escala de espaçamento consistente (4/8px) e uma escala tipográfica.
- Garanta contraste AA mínimo. Veja `references/design-system.md`.

### 4. Implementar
- Componha de tokens, não de valores mágicos espalhados.
- Mobile-first e responsivo por padrão.
- Acessibilidade não é opcional: semântica HTML, foco visível, labels, `aria-*` quando necessário. Veja `references/accessibility.md`.
- Adicione microinterações com propósito (feedback, transição de estado) — sutis, rápidas (150–250ms). Veja `references/interaction.md`.

### 5. Revisar (checklist obrigatório antes de entregar)
Rode o `references/review-checklist.md`. Não declare pronto sem passar por ele.

## Regras rápidas (defaults de qualidade)

- **Espaçamento** importa mais que cor. Respiro generoso > decoração.
- **Hierarquia tipográfica** com no máximo 2 famílias e poucos pesos/tamanhos.
- **Alinhamento**: tudo se alinha a uma grade. Nada "quase alinhado".
- **Contraste e cor**: paleta enxuta, 1 cor de destaque (accent), neutros para o resto.
- **Estados**: hover, focus, active, disabled, loading, empty e error sempre tratados.
- **Toque**: alvos clicáveis ≥ 44×44px no mobile.
- **Performance percebida**: skeletons/otimismo em vez de spinners longos.
- **Consistência** vence criatividade pontual. Reuse componentes.

## Anti-padrões a evitar

- Texto cinza-claro sobre branco (baixo contraste).
- Tudo com a mesma ênfase (sem hierarquia) ou tudo gritando (cores demais).
- Placeholder usado como label.
- Modais para tudo. Dropdowns aninhados profundos.
- Animações longas ou decorativas que atrasam a tarefa.
- Romper convenções conhecidas sem ganho real (Lei de Jakob).

## Referências

- `references/ux-laws.md` — heurísticas e leis de usabilidade.
- `references/design-system.md` — tokens, cor, tipografia, espaçamento, exemplos.
- `references/accessibility.md` — checklist WCAG prático.
- `references/interaction.md` — microinterações, animação, feedback.
- `references/review-checklist.md` — revisão final.
