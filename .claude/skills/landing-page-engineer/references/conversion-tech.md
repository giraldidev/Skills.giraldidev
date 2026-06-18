# Tecnologia de conversão: forms, analytics, A/B, integrações

A engenharia que transforma visitante em lead/cliente e que te dá dados para otimizar.

## Formulários de captura (menos fricção = mais conversão)
- **Peça o mínimo**: e-mail só, quando possível. Cada campo extra reduz conversão.
- Tipos certos: `type="email"`, `inputmode`, `autocomplete` → teclado e autofill corretos.
- Validação inline, em tempo real, com mensagem clara de como corrigir.
- Botão de submit com estado de loading; desabilite duplo envio.
- Feedback de sucesso explícito (mensagem/tela de obrigado) — confirme a ação.
- Acessível: `<label>` real, foco, erros com `aria-describedby`/`aria-live`.

```html
<form>
  <label for="email">Seu melhor e-mail</label>
  <input id="email" name="email" type="email" autocomplete="email" required
         placeholder="voce@empresa.com" inputmode="email">
  <button type="submit">Quero acesso antecipado</button>
  <p class="hint">Sem spam. Cancele quando quiser.</p>
</form>
```

## Analytics & eventos (meça tudo)
Instrumente o funil para saber onde as pessoas saem:
- **Pageview**, **scroll-depth** (25/50/75/100%), **clique no CTA** (cada um),
  **submit do form**, **conversão concluída**.
- Ferramentas: GA4, Plausible/Umami (privacidade), PostHog (eventos + funil + replay).
- Use `data-` attributes ou um helper para padronizar nomes de eventos.
- **Mapas de calor / session replay** (Clarity grátis, Hotjar) revelam atrito real.

```js
document.querySelectorAll('[data-cta]').forEach(el =>
  el.addEventListener('click', () =>
    window.analytics?.track('cta_click', { id: el.dataset.cta })));
```

## A/B testing
- Teste **um** elemento por vez, alto impacto primeiro: headline > hero > CTA > prova social.
- Precisa de tráfego/tempo suficiente para significância — não decida com 20 visitas.
- Ferramentas: GrowthBook/PostHog (open-source), VWO, Optimizely, ou split via edge.
- Sem tráfego para A/B? Confie em heurísticas de CRO e session replay.

## Integrações comuns
- **E-mail/CRM**: envie o lead para Mailchimp/ConvertKit/HubSpot/Resend via API ou webhook.
- **Pagamento**: Stripe Checkout/Payment Links para vender direto.
- **Anti-spam**: honeypot + rate limit; reCAPTCHA/Turnstile só se necessário (atrito).
- **Edge/serverless function** para receber o form sem expor chaves no cliente.

## Pixels & tags (com cuidado)
- Meta Pixel, Google Ads tag, etc. carregados de forma diferida.
- Configure eventos de conversão (Lead, Purchase) para otimização de campanha.
- Respeite consentimento (LGPD/GDPR): banner de cookies quando aplicável.

## Tela de obrigado (thank-you)
- Confirme a ação, diga o próximo passo, dispare o evento de conversão.
- Boa hora para um upsell leve ou pedir compartilhamento.
