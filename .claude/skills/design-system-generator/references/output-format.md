# Formato de saída — card do Design System

SEMPRE entregue o resultado neste formato. É a assinatura da skill. Preencha
todos os campos com decisões reais e justificadas para a indústria do usuário.

## Template

```
+----------------------------------------------------------------------------------------+
|  TARGET: <Nome do projeto> - RECOMMENDED DESIGN SYSTEM                                 |
+----------------------------------------------------------------------------------------+
|                                                                                        |
|  PATTERN: <Padrão de landing>                                                          |
|     Conversion: <estratégia de conversão>                                              |
|     CTA: <posição/repetição do CTA>                                                    |
|     Sections:                                                                          |
|       1. <seção>                                                                       |
|       2. <seção>                                                                       |
|       3. <seção>                                                                       |
|       ...                                                                              |
|                                                                                        |
|  STYLE: <Estilo de UI principal (1-2)>                                                 |
|     Keywords: <palavras-chave do estilo>                                               |
|     Best For: <para que indústrias serve>                                              |
|     Performance: <Excellent/Good> | Accessibility: WCAG AA                             |
|                                                                                        |
|  COLORS:                                                                               |
|     Primary:    #XXXXXX (<nome>)                                                       |
|     Secondary:  #XXXXXX (<nome>)                                                       |
|     CTA:        #XXXXXX (<nome>)                                                       |
|     Background: #XXXXXX (<nome>)                                                       |
|     Text:       #XXXXXX (<nome>)                                                       |
|     Notes: <intenção da paleta>                                                        |
|                                                                                        |
|  TYPOGRAPHY: <Heading Font> / <Body Font>                                              |
|     Mood: <mood>                                                                       |
|     Best For: <indústrias>                                                             |
|     Google Fonts: https://fonts.google.com/share?selection.family=...                  |
|                                                                                        |
|  KEY EFFECTS:                                                                          |
|     <efeito 1> + <efeito 2> + <efeito 3>                                               |
|                                                                                        |
|  AVOID (Anti-patterns):                                                                |
|     <anti-padrão 1> + <anti-padrão 2> + <anti-padrão 3>                                |
|                                                                                        |
|  PRE-DELIVERY CHECKLIST:                                                               |
|     [ ] No emojis as icons (use SVG: Heroicons/Lucide)                                 |
|     [ ] cursor-pointer on all clickable elements                                       |
|     [ ] Hover states with smooth transitions (150-300ms)                              |
|     [ ] Light mode: text contrast 4.5:1 minimum                                        |
|     [ ] Focus states visible for keyboard nav                                          |
|     [ ] prefers-reduced-motion respected                                               |
|     [ ] Responsive: 375px, 768px, 1024px, 1440px                                       |
|                                                                                        |
+----------------------------------------------------------------------------------------+
```

## Regras de preenchimento

- **TARGET**: nome real do projeto do usuário.
- **PATTERN / STYLE / COLORS / TYPOGRAPHY / EFFECTS**: vêm da regra da indústria
  (`reasoning-rules.md`) + arquivos de referência. Nada genérico.
- **AVOID**: liste os anti-padrões **daquele setor** (ex.: banco → "AI purple/pink
  gradients, neon, harsh animations").
- **Google Fonts**: monte o link real de seleção das duas famílias.
- **PRE-DELIVERY CHECKLIST**: mantenha os 7 itens fixos; são restrições de
  qualidade obrigatórias para qualquer entrega.

## Depois do card

Ofereça os próximos passos:
1. Gerar os **tokens** (CSS/Tailwind/theme) na stack do usuário.
2. **Implementar** a UI (aciona `ui-ux-pro-max`).
3. Se for landing, otimizar **conversão** (aciona `landing-page-engineer`).

## Checklist de pré-entrega (sempre os 7, fixos)

1. Sem emojis como ícones — usar SVG (Heroicons/Lucide).
2. `cursor-pointer` em todos os elementos clicáveis.
3. Estados de hover com transição suave (150–300ms).
4. Light mode: contraste de texto mínimo 4.5:1.
5. Estados de foco visíveis para navegação por teclado.
6. `prefers-reduced-motion` respeitado.
7. Responsivo: 375px, 768px, 1024px, 1440px.
