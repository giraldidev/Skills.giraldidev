# Skills — giraldidev

Coleção de **skills para Claude Code** focadas em desenvolvimento de produto com
IA. Cada skill é um conjunto de instruções + referências que ensina o Claude a
executar uma tarefa especializada com qualidade de profissional sênior.

> Skills são carregadas automaticamente pelo Claude Code quando o pedido do
> usuário casa com a descrição da skill, ou podem ser chamadas manualmente com
> `/<nome-da-skill>`.

## Skills disponíveis

| Skill | O que faz | Quando usar |
|-------|-----------|-------------|
| [`ui-ux-pro-max`](.claude/skills/ui-ux-pro-max) | Design e implementação de interfaces (UI/UX) de alto nível: design system, acessibilidade, responsividade, microinterações, hierarquia visual. | Criar/revisar telas, componentes, layouts, fluxos. |
| [`landing-page-engineer`](.claude/skills/landing-page-engineer) | Construção de landing pages de **alta conversão**: estratégia, copywriting, estrutura persuasiva, performance (Core Web Vitals), SEO e tracking. | Criar/otimizar landing pages, páginas de vendas, captura, waitlist. |

As duas se complementam: a `landing-page-engineer` usa os princípios visuais da
`ui-ux-pro-max` para garantir qualidade estética, enquanto adiciona a camada de
conversão.

## Estrutura

```
.claude/skills/
├── ui-ux-pro-max/
│   ├── SKILL.md           # instruções principais + workflow
│   ├── README.md          # documentação da skill
│   └── references/        # guias carregados sob demanda
└── landing-page-engineer/
    ├── SKILL.md
    ├── README.md
    └── references/
```

## Como instalar

### No projeto (já incluso)
Ao trabalhar dentro deste repositório com o Claude Code, as skills em
`.claude/skills/` ficam disponíveis automaticamente.

### Global (em qualquer projeto da sua máquina)
```bash
mkdir -p ~/.claude/skills
cp -r .claude/skills/ui-ux-pro-max ~/.claude/skills/
cp -r .claude/skills/landing-page-engineer ~/.claude/skills/
```

No Windows (PowerShell):
```powershell
New-Item -ItemType Directory -Force "$env:USERPROFILE\.claude\skills"
Copy-Item -Recurse ".claude\skills\ui-ux-pro-max" "$env:USERPROFILE\.claude\skills\"
Copy-Item -Recurse ".claude\skills\landing-page-engineer" "$env:USERPROFILE\.claude\skills\"
```

## Anatomia de uma skill

- **`SKILL.md`** — frontmatter (`name`, `description`) + instruções e workflow.
  A `description` é o que o Claude usa para decidir quando ativar a skill.
- **`references/`** — documentos de apoio (checklists, exemplos, guias) que o
  Claude lê sob demanda, mantendo o contexto principal enxuto.

## Licença

A definir antes da publicação (sugestão: MIT).

---

Mantido por [giraldidev](https://github.com/giraldidev).
