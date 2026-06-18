<div align="center">

# 🎨 Skills — giraldidev

**Skills de [Claude Code](https://claude.com/claude-code) para desenvolvimento de produto com IA**

Transforme o Claude em um especialista sênior de UI/UX e landing pages de alta conversão.

[![Skills](https://img.shields.io/badge/skills-2-blueviolet)](#-skills-disponíveis)
[![Claude Code](https://img.shields.io/badge/Claude_Code-ready-7C3AED)](https://claude.com/claude-code)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen)](#-contribuindo)

</div>

---

## 📖 O que é isto?

**Skills** são pacotes de instruções + referências que ensinam o Claude Code a
executar uma tarefa especializada com qualidade de profissional sênior. Em vez
de improvisar, o Claude segue um processo real (workflow, checklists, exemplos)
definido na skill.

Este repositório reúne skills focadas em **construção de produto**:

> 💡 As skills são carregadas **automaticamente** quando seu pedido casa com a
> descrição da skill — ou você pode chamá-las **manualmente** com `/<nome>`.

---

## 🧩 Skills disponíveis

### 🎨 [`ui-ux-pro-max`](.claude/skills/ui-ux-pro-max)

Faz o Claude atuar como **designer de produto sênior + engenheiro front-end**,
entregando interfaces intencionais, acessíveis e polidas.

- **Usa quando:** criar/revisar telas, componentes, layouts, fluxos, design
  system, acessibilidade, responsividade, microinterações ou hierarquia visual.
- **Cobre:** leis de UX (Hick, Fitts, Jakob, Nielsen, Gestalt) · design tokens
  (cor, tipografia, espaçamento) · acessibilidade WCAG · microinterações ·
  checklist de revisão.

### 🚀 [`landing-page-engineer`](.claude/skills/landing-page-engineer)

Faz o Claude atuar como **engenheiro de growth + copywriter + dev de
performance**, construindo landing pages que **convertem**.

- **Usa quando:** criar/otimizar landing pages, páginas de vendas, captura,
  lançamento de SaaS, waitlist ou squeeze pages.
- **Cobre:** estratégia de oferta · copywriting (AIDA, PAS, Schwartz) ·
  estrutura persuasiva · performance (Core Web Vitals) · SEO técnico ·
  formulários, analytics e A/B testing.

> As duas se complementam: a `landing-page-engineer` usa os princípios visuais
> da `ui-ux-pro-max` para a camada estética, somando a camada de conversão.

| Skill | Foco | Stack |
|-------|------|-------|
| `ui-ux-pro-max` | Interface, usabilidade, acessibilidade | React · Tailwind · HTML/CSS · mobile |
| `landing-page-engineer` | Conversão, copy, performance, SEO | Next.js · Astro · React · HTML/Tailwind |

---

## ⚡ Instalação

Escolha **uma** das opções abaixo.

### Opção A — Global (recomendada) · disponível em todos os seus projetos

Instale uma vez e use em qualquer pasta da sua máquina.

**Mac / Linux:**
```bash
# 1. Clone este repositório
git clone https://github.com/giraldidev/skills.giraldidev.git
cd skills.giraldidev

# 2. Copie as skills para a pasta global do Claude
mkdir -p ~/.claude/skills
cp -r .claude/skills/ui-ux-pro-max        ~/.claude/skills/
cp -r .claude/skills/landing-page-engineer ~/.claude/skills/
```

**Windows (PowerShell):**
```powershell
git clone https://github.com/giraldidev/skills.giraldidev.git
cd skills.giraldidev

New-Item -ItemType Directory -Force "$env:USERPROFILE\.claude\skills"
Copy-Item -Recurse ".claude\skills\ui-ux-pro-max"         "$env:USERPROFILE\.claude\skills\"
Copy-Item -Recurse ".claude\skills\landing-page-engineer" "$env:USERPROFILE\.claude\skills\"
```

✅ Pronto — as skills valem para sempre, em qualquer projeto.

### Opção B — Por projeto · versionada junto com o código

Use quando quiser que a skill viaje **junto de um projeto específico** e fique
disponível para todo o time que clonar o repositório.

```bash
# Dentro do projeto onde quer usar a skill
mkdir -p .claude/skills
cp -r /caminho/para/skills.giraldidev/.claude/skills/landing-page-engineer .claude/skills/

git add .claude/skills
git commit -m "Add landing-page-engineer skill"
```

Qualquer pessoa que abrir esse projeto com o Claude Code já terá a skill.

---

## 🛠️ Como usar

Depois de instalada, há duas formas de acionar uma skill:

**1. Automático** — basta pedir naturalmente. O Claude reconhece e ativa a skill certa:
```
"Cria uma landing de waitlist pro meu SaaS de finanças em Next.js + Tailwind"
"Revisa a acessibilidade deste formulário de checkout"
"Melhora a hierarquia visual desta dashboard"
```

**2. Manual** — chame pelo nome com `/`:
```
/ui-ux-pro-max
/landing-page-engineer
```

> Para confirmar que estão carregadas, digite `/` no Claude Code e veja se
> aparecem na lista de skills.

---

## 📂 Estrutura do repositório

```
skills.giraldidev/
├── README.md                          ← você está aqui
└── .claude/
    └── skills/
        ├── ui-ux-pro-max/
        │   ├── SKILL.md               # instruções principais + workflow
        │   ├── README.md              # documentação da skill
        │   └── references/            # guias carregados sob demanda
        │       ├── ux-laws.md
        │       ├── design-system.md
        │       ├── accessibility.md
        │       ├── interaction.md
        │       └── review-checklist.md
        └── landing-page-engineer/
            ├── SKILL.md
            ├── README.md
            └── references/
                ├── copywriting.md
                ├── page-structure.md
                ├── performance.md
                ├── seo.md
                ├── conversion-tech.md
                └── cro-checklist.md
```

---

## 🧬 Anatomia de uma skill

| Arquivo | Papel |
|---------|-------|
| **`SKILL.md`** | Frontmatter (`name`, `description`) + workflow e regras. A `description` é o que o Claude usa para decidir **quando** ativar a skill. |
| **`references/`** | Documentos de apoio (checklists, exemplos, guias). O Claude lê **sob demanda**, mantendo o contexto principal enxuto. |
| **`README.md`** | Documentação humana da skill (este repo). |

Quer criar a sua? Copie a estrutura de uma skill existente, ajuste o
frontmatter e os arquivos de `references/`.

---

## 🤝 Contribuindo

1. Crie uma branch a partir da principal.
2. Adicione/edite a skill em `.claude/skills/<nome>/` com seu `SKILL.md`,
   `README.md` e `references/`.
3. Atualize este README (tabela de skills).
4. Abra um Pull Request.

---

## 📜 Licença

A definir antes da publicação — sugestão: **MIT**.

---

<div align="center">

Mantido por [**giraldidev**](https://github.com/giraldidev) · feito com Claude Code

</div>
