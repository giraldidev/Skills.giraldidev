# Acessibilidade (WCAG prático)

Acessibilidade é requisito, não enfeite. Cobre todos abaixo.

## Estrutura & semântica
- Use HTML semântico: `<button>`, `<a>`, `<nav>`, `<main>`, `<header>`, `<h1..h6>`
  em ordem lógica. Botão que age = `<button>`; navegação = `<a href>`.
- Um `<h1>` por página; não pule níveis de heading.
- Landmarks para leitores de tela; `<label>` associado a cada input (`for`/`id`).

## Teclado
- Tudo operável só pelo teclado (Tab/Shift+Tab/Enter/Espaço/Esc/setas).
- **Foco visível** sempre: nunca `outline: none` sem substituto. Use `:focus-visible`.
- Ordem de foco lógica. Em modais: foco preso (focus trap) e devolvido ao fechar.
- Sem armadilhas de teclado.

## Contraste & cor
- Texto normal ≥ 4.5:1; texto grande (≥24px ou 19px bold) ≥ 3:1.
- Componentes/ícones de UI e estados de foco ≥ 3:1.
- Informação nunca apenas por cor (use ícone, texto, padrão).

## Imagens & mídia
- `alt` descritivo; `alt=""` para imagens decorativas.
- Legendas/transcrição para áudio e vídeo.
- Respeite `prefers-reduced-motion` — reduza/elimine animações.

## Formulários
- Label visível (não só placeholder). Placeholder some ao digitar.
- Erros: identifique o campo, descreva e diga como corrigir; associe via `aria-describedby`.
- Agrupe relacionados com `<fieldset>`/`<legend>`.

## ARIA (só quando o HTML nativo não basta)
- "Nenhum ARIA é melhor que ARIA errado." Prefira elementos nativos.
- Estados dinâmicos: `aria-expanded`, `aria-selected`, `aria-current`, `aria-live`
  para anúncios (toasts, validações assíncronas).
- Ícone-só clicável precisa de `aria-label`.

## Alvos de toque & motion
- Áreas clicáveis ≥ 44×44px no mobile, com espaçamento entre elas.
- Nada pisca > 3x/s (risco de convulsão).

## Verificação rápida
- Navegue a tela inteira só com o teclado.
- Rode um checker de contraste.
- Teste com zoom 200% sem quebrar layout.
- Passe um leitor de tela nos fluxos principais.
