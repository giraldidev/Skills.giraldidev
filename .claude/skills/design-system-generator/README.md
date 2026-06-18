# design-system-generator

Skill de Claude Code que funciona como um **motor de raciocínio baseado em
regras**: você descreve o produto/indústria e ele gera um **sistema de design
completo e personalizado** em segundos — padrão de página, estilo de UI, paleta
de cores, tipografia, efeitos, anti-padrões e checklist de pré-entrega — tudo no
formato de um card estruturado.

## O que ela resolve

Em vez de escolher estilo e cores por gosto, a skill aplica **regras específicas
por indústria**. O mesmo "bonito" que serve um app de jogos arruína um banco —
então cada setor tem padrões que convertem e anti-padrões que destroem confiança
(ex.: ❌ "gradiente roxo/rosa de IA" em fintech).

## Quando é ativada

Pedidos do tipo:
```
"Monte um design system para meu spa"
"Qual estilo e paleta para um app fintech?"
"Gere a identidade visual da landing do meu SaaS"
```

Também manualmente: `/design-system-generator`.

## Como funciona (pipeline)

```
1. Entrada do usuário      →  "landing page para meu beauty spa"
2. Busca multi-domínio     →  produto · estilo · cor · padrão · tipografia
3. Motor de raciocínio     →  casa produto→regras, prioriza estilo,
                              filtra anti-padrões da indústria
4. Saída: card completo     →  Pattern + Style + Colors + Typography
                              + Effects + Anti-patterns + Checklist
```

## Cobertura

- **161 categorias de produto** em 8 setores (Tech/SaaS, Finanças, Saúde,
  E-commerce, Serviços, Criativo, Lifestyle, Tech emergente).
- **67 estilos de UI** (49 gerais, 8 de landing, 10 de dashboard).
- **Paletas por setor** + princípios de cor e contraste AA.
- **57 pares tipográficos** (Google Fonts) por mood/indústria.
- **24 padrões de landing** + **25 tipos de gráfico** de dashboard.
- **15 stacks** (React, Next.js, Astro, Vue, Svelte, Flutter, SwiftUI, shadcn/ui...).

## Conteúdo

| Arquivo | Conteúdo |
|---------|----------|
| `SKILL.md` | Pipeline, workflow e regras de ouro. |
| `references/reasoning-rules.md` | Regras de design por indústria (161 categorias). |
| `references/styles.md` | 67 estilos de UI com "ideal para". |
| `references/color-palettes.md` | Paletas por setor + regras de cor. |
| `references/typography.md` | 57 pares tipográficos por mood. |
| `references/patterns.md` | Padrões de landing + tipos de gráfico. |
| `references/tech-stacks.md` | 15 stacks e quando usar cada. |
| `references/output-format.md` | Template exato do card + checklist de pré-entrega. |

## Saída (exemplo de formato)

```
+-------------------------------------------------------------+
|  TARGET: Serenity Spa - RECOMMENDED DESIGN SYSTEM          |
+-------------------------------------------------------------+
|  PATTERN: Hero-Centric + Social Proof                      |
|  STYLE: Soft UI Evolution                                  |
|  COLORS: #E8B4B8 / #A8D5BA / #D4AF37 / #FFF5F5 / #2D3436   |
|  TYPOGRAPHY: Cormorant Garamond / Montserrat               |
|  KEY EFFECTS: Soft shadows + Smooth transitions + Hover    |
|  AVOID: Neon + Harsh animations + Dark mode + AI gradients |
|  PRE-DELIVERY CHECKLIST: [7 itens fixos de qualidade]      |
+-------------------------------------------------------------+
```

## Relação com as outras skills

- Gera as **decisões** → `ui-ux-pro-max` **implementa** com qualidade visual.
- Para landing pages → `landing-page-engineer` cuida da **conversão**.

As três formam um fluxo: **decidir → construir → converter**.
