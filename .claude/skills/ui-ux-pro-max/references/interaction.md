# Microinterações, animação e feedback

Movimento tem função: orientar atenção, confirmar ação, suavizar transição de
estado. Nunca decoração que atrasa a tarefa.

## Princípios de animação
- **Rápido e sutil**: 150–250ms para a maioria das transições de UI; 300–400ms
  para elementos maiores (modais, painéis). Acima disso parece lento.
- **Easing natural**: use `ease-out` para entradas, `ease-in` para saídas;
  evite `linear` exceto em loaders. `cubic-bezier(.2,.8,.2,1)` é um bom default.
- Anime `transform` e `opacity` (baratos no GPU); evite animar `width/top/left`.
- Respeite `prefers-reduced-motion: reduce` — desligue ou reduza.

```css
@media (prefers-reduced-motion: reduce) {
  * { animation: none !important; transition: none !important; }
}
```

## Estados de componente (sempre tratar)
- **Hover**: dica de interatividade (desktop).
- **Focus-visible**: anel de foco para teclado.
- **Active/pressed**: feedback tátil imediato.
- **Disabled**: opacidade reduzida + cursor `not-allowed`, sem hover.
- **Loading**: spinner, skeleton ou estado otimista.
- **Empty**: estado vazio com orientação (o que fazer agora) e CTA.
- **Error**: mensagem clara e acionável.

## Feedback
- Toda ação tem reação visível em < 100ms (percepção de instantâneo).
- Operações longas (>1s): indicador de progresso; >10s: progresso determinado + opção de cancelar.
- Sucesso/erro: toast curto (`aria-live`), inline quando ligado a um campo.
- Confirme ações destrutivas; ofereça **desfazer** quando possível (melhor que diálogo de confirmação para ações reversíveis).

## Performance percebida
- **Skeleton screens** > spinners para carregamento de conteúdo.
- **Optimistic UI**: atualize a interface antes da resposta do servidor e reverta em erro.
- Pré-carregue na intenção (hover/foco) quando barato.

## Padrões comuns bem-feitos
- **Modal**: foco preso, fecha no Esc e no clique no backdrop, devolve foco ao gatilho.
- **Toast**: canto, auto-dismiss ~4–6s, pausável no hover, empilhável, `aria-live="polite"`.
- **Tooltip**: aparece em hover/focus, atraso ~300ms, some rápido; não para informação crítica.
- **Dropdown/menu**: navegável por setas, fecha no Esc/clique fora.
