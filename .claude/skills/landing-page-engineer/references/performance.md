# Performance = conversão

Velocidade afeta diretamente conversão e ranking. Meta: carregar útil em < 2.5s
no mobile 4G. Otimize os Core Web Vitals.

## Core Web Vitals (metas "bom")
- **LCP** (Largest Contentful Paint) < 2.5s — geralmente a imagem do hero ou headline.
- **INP** (Interaction to Next Paint) < 200ms — responsividade a cliques.
- **CLS** (Cumulative Layout Shift) < 0.1 — nada "pula" durante o carregamento.

## Imagens (maior alavanca)
- Formatos modernos: **AVIF/WebP** com fallback.
- `srcset` + `sizes` para servir o tamanho certo por dispositivo.
- `width`/`height` ou `aspect-ratio` definidos → evita CLS.
- Hero: `loading="eager"` + `fetchpriority="high"`. Resto: `loading="lazy"`.
- Comprima; não sirva 3000px onde cabem 800. Use CDN de imagem se possível.

```html
<img src="hero.avif" width="1200" height="800"
     fetchpriority="high" loading="eager" alt="Produto em ação">
```

## Fontes
- `font-display: swap` para não bloquear render.
- Pré-carregue a fonte do hero: `<link rel="preload" as="font" crossorigin>`.
- Limite pesos/famílias; prefira fontes do sistema quando possível (zero custo).
- Subset (apenas glifos usados) reduz bytes.

## JS & CSS
- Landing deve ser majoritariamente HTML/CSS. **Minimize JS.**
- Evite frameworks pesados se HTML estático resolve (Astro/HTML > SPA aqui).
- Code-splitting, defer/async em scripts não-críticos.
- CSS crítico inline; resto assíncrono. Remova CSS/JS não usado.
- Tags de terceiros (analytics, chat, pixels) são as maiores vilãs: carregue
  de forma assíncrona/diferida e só o essencial.

## Entrega
- Hospede em CDN/edge (Vercel, Netlify, Cloudflare). HTTP/2+ , compressão (Brotli).
- Cache agressivo de assets estáticos (hash no nome do arquivo).
- Pré-renderize/estático (SSG) sempre que der — landing raramente precisa de SSR.

## Vídeo (se houver)
- Nunca autoplay com áudio. Use poster image; carregue o vídeo sob demanda.
- Prefira `<video>` otimizado ou GIF→vídeo (muito menor) a GIF pesado.

## Verificação
- Rode Lighthouse / PageSpeed Insights (mobile). Mire score ≥ 90.
- Teste em 4G simulado e em dispositivo real.
