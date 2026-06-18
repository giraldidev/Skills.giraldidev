# Checklist de revisão final

Passe por tudo antes de declarar uma interface pronta. Marque cada item.

## Hierarquia & layout
- [ ] Existe uma única ação primária clara por tela.
- [ ] Tudo alinhado a uma grade; sem elementos "quase alinhados".
- [ ] Espaçamento da escala (4/8px), consistente; agrupamento por proximidade.
- [ ] Hierarquia tipográfica legível (tamanho/peso comunicam importância).
- [ ] Largura de linha de texto entre 45–75 caracteres.

## Cor & contraste
- [ ] Contraste AA em todo texto e componentes (≥4.5:1 / ≥3:1 grande).
- [ ] Paleta enxuta; 1 accent; nenhum significado só por cor.
- [ ] Dark mode (se aplicável) recalibrado, não só escurecido.

## Estados
- [ ] Hover, focus-visible, active, disabled tratados.
- [ ] Loading (skeleton/otimista), empty (com orientação) e error (acionável).

## Acessibilidade
- [ ] HTML semântico; headings em ordem; labels em todos os inputs.
- [ ] Navegável 100% por teclado; foco visível; foco preso em modais.
- [ ] Alvos de toque ≥ 44×44px.
- [ ] `prefers-reduced-motion` respeitado; alt em imagens.

## Responsividade
- [ ] Mobile-first; funciona de ~360px até desktop.
- [ ] Sem scroll horizontal indevido; sem corte/overflow de conteúdo.
- [ ] Zoom 200% sem quebrar.

## Interação & feedback
- [ ] Feedback < 100ms em toda ação; transições 150–250ms com easing natural.
- [ ] Ações destrutivas confirmadas ou com desfazer.
- [ ] Mensagens de erro dizem o que houve e como resolver.

## Consistência & código
- [ ] Componentes/tokens reutilizados; sem valores mágicos espalhados.
- [ ] Nomenclatura e padrões coerentes com o resto do produto.
- [ ] Convenções conhecidas respeitadas (Lei de Jakob).

## Teste final
- [ ] Percorri o fluxo principal como usuário real.
- [ ] Verifiquei o pior caso (texto longo, lista vazia, conexão lenta, erro).
