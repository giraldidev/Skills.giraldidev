# ui-ux-pro-max

Skill de Claude Code que faz o assistente atuar como **designer de produto
sênior + engenheiro front-end**, entregando interfaces intencionais, acessíveis
e polidas — não apenas "algo que funciona".

## O que ela resolve

Quando você pede uma tela, componente ou ajuste de interface, a skill aplica um
processo de design real em vez de improvisar: entende o contexto e a tarefa do
usuário, estrutura a UX (fluxo e estados), define tokens visuais, implementa de
forma responsiva e acessível, e faz uma revisão final com checklist.

## Quando é ativada

Pedidos para **criar, revisar ou melhorar**: telas, componentes, layouts,
fluxos, design system, acessibilidade, responsividade, microinterações ou
hierarquia visual — em web (React/Tailwind/HTML/CSS), mobile ou protótipos.

Também pode ser chamada manualmente: `/ui-ux-pro-max`.

## Como funciona (workflow)

1. **Entender o contexto** — usuário, tarefa, plataforma, design system existente.
2. **Estruturar a UX** — fluxo, estados (vazio/loading/erro/sucesso), hierarquia.
3. **Definir linguagem visual** — tokens de cor, tipografia, espaçamento, raio, sombra.
4. **Implementar** — mobile-first, acessível, com microinterações com propósito.
5. **Revisar** — checklist obrigatório antes de entregar.

## Conteúdo

| Arquivo | Conteúdo |
|---------|----------|
| `SKILL.md` | Workflow, regras de qualidade e anti-padrões. |
| `references/ux-laws.md` | Leis de usabilidade (Hick, Fitts, Jakob), heurísticas de Nielsen, Gestalt. |
| `references/design-system.md` | Tokens (cor, tipografia, espaçamento, raio, sombra) com exemplos CSS e mapeamento Tailwind. |
| `references/accessibility.md` | Checklist WCAG prático: teclado, contraste, ARIA, formulários. |
| `references/interaction.md` | Microinterações, animação, estados de componente, feedback. |
| `references/review-checklist.md` | Revisão final de qualidade. |

## Princípios centrais

- Estética serve à clareza — toda decisão responde "qual o menor caminho até a tarefa?".
- Espaçamento e hierarquia importam mais que decoração.
- Acessibilidade é requisito, não opcional.
- Consistência (reuso de tokens/componentes) vence criatividade pontual.

## Exemplo de uso

```
"Cria um card de produto para um e-commerce em React + Tailwind"
"Revisa a acessibilidade deste formulário de checkout"
"Melhora a hierarquia visual desta dashboard"
```
