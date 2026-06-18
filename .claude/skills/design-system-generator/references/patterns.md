# Padrões de página & tipos de gráfico

## Padrões de landing (24)

Cada padrão define a sequência de seções e a estratégia de conversão. Escolha
pela indústria (ver `reasoning-rules.md`).

| Padrão | Estratégia | Seções típicas |
|--------|-----------|----------------|
| Hero-Centric + Social Proof | Emoção + confiança | Hero → Services → Testimonials → Booking → Contact |
| Conversion-Optimized | Lead/venda direta | Hero → Benefits → Offer → Form → FAQ → CTA |
| Feature-Rich Showcase | Explicar produto complexo | Hero → Features → Demo → Pricing → FAQ |
| Trust & Authority | B2B/credibilidade | Hero → Logos → Case studies → Stats → Demo CTA |
| Social Proof Focused | Reduzir risco | Hero → Reviews → Benefits → Testimonials → CTA |
| Interactive Product Demo | Mostrar funcionando | Hero → Live demo → Features → Pricing |
| Story-driven | Narrativa de marca | Hero → Story → Values → Product → CTA |
| Minimal & Direct | Produto simples | Hero → 3 benefits → CTA |
| Booking/Appointment | Agendamento | Hero → Services → Availability → Booking → Contact |
| Pricing-led | Preço como gancho | Hero → Pricing → Features → FAQ → CTA |
| Launch/Waitlist | Pré-lançamento | Hero → Teaser → Email capture → Social proof |
| Comparison | vs. concorrente | Hero → Comparison table → Benefits → CTA |

> Variações por nicho expandem a lista; estes são os arquétipos centrais.
> Combine com a skill `landing-page-engineer` para a execução de conversão.

## Tipos de gráfico para dashboards (25)

Recomende o gráfico pela pergunta que ele responde:

| Pergunta | Gráfico |
|----------|---------|
| Como muda no tempo? | Line, Area, Sparkline |
| Comparar categorias? | Bar, Column, Grouped/Stacked bar |
| Parte do todo? | Donut, Stacked bar (evite pie com muitas fatias) |
| Distribuição? | Histogram, Box plot, Violin |
| Correlação? | Scatter, Bubble |
| Geográfico? | Choropleth map, Heatmap |
| Fluxo/conversão? | Funnel, Sankey |
| KPI único? | Big number / Stat card, Gauge |
| Progresso até meta? | Progress bar, Radial gauge |
| Densidade temporal? | Calendar heatmap |
| Hierarquia? | Treemap, Sunburst |
| Multivariado? | Radar, Parallel coordinates |

### Regras de dashboard
- Comece pela **pergunta de negócio**, não pelo gráfico bonito.
- KPIs no topo (big numbers), detalhe abaixo (drill-down).
- Não mais que ~5–7 widgets por tela; agrupe por contexto.
- Cor com significado consistente (verde=bom, vermelho=ruim) + nunca só cor.
- Real-time só onde o usuário age sobre o dado (ops/DevOps).
