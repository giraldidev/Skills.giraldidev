# Design tokens & linguagem visual

Defina tokens primeiro, componha componentes a partir deles. Exemplos em CSS
custom properties (adaptável a Tailwind config, JS theme, etc.).

## Cor

Paleta enxuta: neutros (texto/fundo/bordas) + 1 accent + cores semânticas.

```css
:root {
  /* Neutros */
  --bg:        #ffffff;
  --surface:   #f7f8fa;
  --border:    #e3e6ea;
  --text:      #1a1d21;   /* texto principal */
  --text-muted:#5b626b;   /* secundário, ainda AA sobre --bg */

  /* Accent (1 cor de marca) */
  --accent:        #4f46e5;
  --accent-hover:  #4338ca;
  --accent-contrast:#ffffff;

  /* Semânticas */
  --success: #16a34a;
  --warning: #d97706;
  --danger:  #dc2626;
}
```

Regras de cor:
- Contraste texto/fundo ≥ 4.5:1 (AA). Texto grande ≥ 3:1.
- Não comunique nada só por cor (adicione ícone/texto) — daltonismo.
- Dark mode: inverta neutros, **não** apenas escureça; recalibre o accent.

## Tipografia

Escala modular (razão ~1.25). 1–2 famílias. Pesos: 400/500/600/700.

```css
:root {
  --font-sans: ui-sans-serif, system-ui, -apple-system, "Segoe UI", Roboto, sans-serif;
  --text-xs: 0.75rem;   --text-sm: 0.875rem;  --text-base: 1rem;
  --text-lg: 1.25rem;   --text-xl: 1.5rem;    --text-2xl: 2rem;  --text-3xl: 2.5rem;
  --leading-tight: 1.2; --leading-normal: 1.5;
}
```

- Corpo de texto: 16px base, line-height ~1.5, largura de linha 45–75 caracteres.
- Títulos: line-height menor (1.1–1.25). Hierarquia clara entre níveis.

## Espaçamento (escala 4/8px)

```css
:root {
  --space-1: 4px;  --space-2: 8px;  --space-3: 12px; --space-4: 16px;
  --space-6: 24px; --space-8: 32px; --space-12: 48px; --space-16: 64px;
}
```

Use a escala em todo padding/margin/gap. Espaçamento consistente cria ritmo.

## Raio, sombra, elevação

```css
:root {
  --radius-sm: 6px; --radius-md: 10px; --radius-lg: 16px; --radius-full: 9999px;
  --shadow-sm: 0 1px 2px rgba(16,24,40,.06);
  --shadow-md: 0 4px 12px rgba(16,24,40,.08);
  --shadow-lg: 0 12px 32px rgba(16,24,40,.12);
}
```

Sombra suave e difusa > sombra dura. Elevação comunica camadas (modal > card > base).

## Grid & responsividade

- Mobile-first. Breakpoints típicos: 640 / 768 / 1024 / 1280px.
- Container máx. ~1200px para leitura confortável; centralize.
- Use CSS Grid/Flex com `gap`; evite margens manuais entre filhos.

## Exemplo de componente bem-formado (botão)

```css
.btn {
  display: inline-flex; align-items: center; gap: var(--space-2);
  height: 40px; padding: 0 var(--space-4);
  font: 500 var(--text-sm)/1 var(--font-sans);
  border-radius: var(--radius-md); border: 1px solid transparent;
  cursor: pointer; transition: background .15s ease, box-shadow .15s ease;
}
.btn--primary { background: var(--accent); color: var(--accent-contrast); }
.btn--primary:hover { background: var(--accent-hover); }
.btn--primary:focus-visible { outline: 2px solid var(--accent); outline-offset: 2px; }
.btn:disabled { opacity: .5; cursor: not-allowed; }
```

## Mapeando para Tailwind

Configure os tokens em `tailwind.config` (theme.extend.colors/spacing/etc.) e use
as classes utilitárias — nunca valores arbitrários soltos como `mt-[13px]`.
