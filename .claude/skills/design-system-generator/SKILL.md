---
name: design-system-generator
description: >-
  Motor de raciocínio que analisa os requisitos de um projeto e gera um SISTEMA
  DE DESIGN completo e personalizado: padrão de página, estilo de UI, paleta de
  cores, tipografia, efeitos, anti-padrões e checklist de pré-entrega. Use
  quando o usuário descrever um produto/indústria e quiser as DECISÕES de design
  antes de codar — ex.: "monte um design system para meu spa", "qual estilo e
  cores para um fintech", "gere a identidade visual para meu SaaS". Cobre 161
  categorias de produto, 67 estilos de UI, paletas e tipografia por setor.
  Combine com `ui-ux-pro-max` (implementação) e `landing-page-engineer` (conversão).
---

# Design System Generator (v2.0)

Motor de raciocínio baseado em regras que transforma **"o que é o projeto"** em
um **sistema de design completo e justificado**, em segundos — antes de escrever
qualquer linha de código.

A diferença para improvisar: as decisões (estilo, cor, tipografia, efeitos) saem
de **regras específicas por indústria**, não de gosto aleatório. Cada setor tem
padrões que convertem e anti-padrões que destroem confiança (ex.: "gradiente
roxo/rosa de IA" em um banco).

## Como funciona (pipeline de raciocínio)

```
1. ENTRADA DO USUÁRIO        →  "Build a landing page for my beauty spa"
2. BUSCA MULTI-DOMÍNIO (5x)  →  produto · estilo · cor · padrão · tipografia
3. MOTOR DE RACIOCÍNIO       →  casa produto→regras, prioriza estilo, filtra
                                anti-padrões da indústria, aplica regras de decisão
4. SAÍDA: DESIGN SYSTEM      →  Padrão + Estilo + Cores + Tipografia + Efeitos
                                + Anti-padrões + Checklist de pré-entrega
```

## Workflow

### 1. Identificar o produto/indústria
Classifique o pedido em uma das categorias (`references/reasoning-rules.md`):
Tech/SaaS · Finanças · Saúde · E-commerce · Serviços · Criativo · Lifestyle ·
Tech emergente. Se ambíguo e isso muda a saída, **pergunte** o nicho exato.

Capture também: objetivo (landing, dashboard, app), público e tom desejado.

### 2. Rodar a busca multi-domínio (mentalmente, em paralelo)
Para a categoria identificada, selecione:
- **Padrão de página** → `references/patterns.md`
- **Estilo de UI** (1–2 prioritários) → `references/styles.md`
- **Paleta de cores** → `references/color-palettes.md`
- **Par tipográfico** → `references/typography.md`
- **Efeitos/interações** → da própria regra da indústria

### 3. Aplicar as regras de raciocínio
- Casar produto → regras de categoria de UI.
- Priorizar estilos pelo ajuste à indústria (não pela moda).
- **Filtrar anti-padrões** do setor (passo crítico — ver cada regra).
- Garantir acessibilidade (WCAG AA) e performance como restrições fixas.

### 4. Gerar a saída no formato-card
Produza SEMPRE no formato de `references/output-format.md`: o card
`RECOMMENDED DESIGN SYSTEM` com todas as seções + checklist de pré-entrega.

### 5. (Opcional) Implementar
Se o usuário pedir o código, entregue tokens/CSS/Tailwind a partir do sistema
gerado e acione `ui-ux-pro-max` (qualidade visual) e, se for landing,
`landing-page-engineer` (conversão).

## Regras de ouro

- **A indústria manda.** O mesmo "bonito" que serve um app de jogos arruína um
  banco. Sempre filtre pelos anti-padrões do setor.
- **1–2 estilos no máximo.** Coerência > colagem de tendências.
- **Acessibilidade e performance não são negociáveis** — entram como restrições.
- **Justifique cada escolha** em 1 linha (por que esse estilo/cor/fonte para
  ESTA indústria). Decisão sem motivo é chute.
- Saída **sempre** no formato-card, mesmo para pedidos curtos.

## Referências

- `references/reasoning-rules.md` — 161 categorias por setor + o que cada regra define.
- `references/styles.md` — 67 estilos de UI (49 gerais, 8 de landing, 10 de dashboard).
- `references/color-palettes.md` — paletas por setor + princípios de cor.
- `references/typography.md` — pares tipográficos (Google Fonts) por mood/indústria.
- `references/patterns.md` — padrões de landing + tipos de gráfico de dashboard.
- `references/tech-stacks.md` — 15 stacks suportadas e quando usar cada.
- `references/output-format.md` — template exato do card + checklist de pré-entrega.
