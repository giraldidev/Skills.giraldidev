# Stacks suportadas (15)

Ao gerar tokens/código a partir do design system, adapte à stack do usuário.
Se não informada, sugira a mais adequada ao tipo de projeto.

| Stack | Quando usar |
|-------|-------------|
| **HTML + Tailwind** | Landing pages estáticas, protótipos rápidos, máxima performance. |
| **React** | SPAs, apps interativos, ecossistema amplo. |
| **Next.js** | SaaS, sites com SEO + SSR/SSG, landing + app no mesmo projeto. |
| **Astro** | Sites de conteúdo/landing com performance máxima (ilhas, pouco JS). |
| **Vue** | SPAs, curva suave, apps de média complexidade. |
| **Nuxt.js** | Vue com SSR/SEO, full-stack. |
| **Nuxt UI** | Componentes prontos sobre Nuxt/Tailwind. |
| **Svelte** | UI leve e reativa, bundles pequenos. |
| **shadcn/ui** | React/Next com componentes acessíveis e customizáveis (Radix + Tailwind). |
| **SwiftUI** | Apps nativos Apple (iOS/macOS). |
| **React Native** | Apps móveis multiplataforma com base React. |
| **Flutter** | Apps móveis multiplataforma, UI rica e consistente. |
| **Jetpack Compose** | Apps nativos Android. |
| **Angular** | Apps empresariais grandes, opinativo. |
| **Laravel** | Full-stack PHP, Blade + Tailwind para web apps com backend. |

## Como mapear o design system para a stack
- **Tokens** → CSS custom properties, `tailwind.config`, theme JS, ou design
  tokens nativos (SwiftUI `Color`, Flutter `ThemeData`).
- **Componentes** → reaproveite libs da stack (shadcn/ui, Nuxt UI) quando houver.
- **Fontes** → Google Fonts via `<link>`/`@import` (web) ou bundle (mobile).
- Mantenha 1 fonte de verdade dos tokens; não espalhe valores mágicos.
