---
ID: 5508
post_title: 'roulette sito d&#8217;octt'
post_name: roulette-sito-doctt
author: minioctt
post_date: 2024-05-15 09:38:14
layout: post
link: >
  https://octospacc.altervista.org/2024/05/15/roulette-sito-doctt/
published: true
tags:
  - archivio
  - hack
  - interfaccia
  - libreria
  - MicroBlog
  - post
  - random
  - ricordi
  - sfizio
  - utilità
  - UX
  - WordPress
categories:
  - Senza categoria
title: 'roulette sito d&#8217;octt'
date: 2024-05-15 09:38:14
canonical_url:   https://octospacc.altervista.org/2024/05/15/roulette-sito-doctt/
---
<!-- wp:paragraph -->
<p>Ieri sera ho fatto degli ulteriori aggiustamenti <a href="2024/05/13/dickcock-more-like-tiktoctt/">a TiktOctt</a> per risolvere certi problemi strani di prestazioni, e ho incidentalmente migliorato la #UX, però, finché non riesco a inventarmi qualcosa per riprodurre anche post non-video lì sopra, è chiaro che non può da solo prendere il ruolo di quello che vorrei fare... 👁️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>In pratica comunque l'idea mi è venuta in parte vedendo <a href="https://com-app-useup-room.en.uptodown.com/android">questa app "Room"</a>, che riproduce video dall'archiviazione locale con una UX alla TikTok. E suppongo che il ragionamento sotto sia che è un modo intrigante di rivedere ciò che hai conservato sul dispositivo e non guardi mai? Onestamente non so quanto io me ne possa fare in questa forma, ma l'idea di base mi piace, e non è nuova per me riguardo il #MicroBlog: ho già costruito tante sovrastrutture per rendermi più facile rivedere roba vecchia, sia per #sfizio che utilità (che sono incidentalmente utilissime anche ai dataminer però... pazienza). 🎲</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>L'unica #interfaccia più o meno randomica per fare questa cosa però, fino a poco fa, è stata la sezione di articoli consigliati in fondo ad ogni pagina, fornita dal <a href="https://wordpress.org/plugins/contextual-related-posts/">plugin "Contextual Related Posts"</a>. ...Ed è stato tecnicamente un incidente (tema ricorrente stamattina) in realtà, perché, come suggerisce il nome, questo coso dovrebbe far uscire post in qualche modo correlati, invece più passano i mesi e più mi sembra vada a caso, chissà che algoritmo marcio usa. E i mean, non è comunque male, perciò lo lascio, però non fa proprio un buon effetto casinò perché devi <em>scegliere</em>, e se vuoi scegliere tantovale usare ricerca e tassonomie. 🎰</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>E quindi, intanto ho fatto un'altra cosa semplice, che non so perché non avevo mai fatto prima: con il <a href="https://it.wordpress.org/plugins/redirect-url-to-post/">plugin "Redirect URL to Post"</a>, ho messo un tasto <a href="libreria-post/">in Libreria Post</a> che ne apre uno a caso, così facciamo lo stesso effetto roulette ma anche per i normali post. Cosa capiterà cliccando <em>stavolta</em>? Lammerda o qualcosa di carino? Un messaggio leggero o un tormento esistenziale? <em>Chissà!</em> Premi il bottoncino finché non avrai sprecato dieci minuti magari, che almeno ti diverti. Non è proprio il magico effetto del doomscrolling infinito, ma diciamo che un single-click ci sta bene uguale. 💉</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":5511,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="{{site.cdnurl}}/assets/uploads/2024/05/image_editor_output_image65073213-1715758360567667119993308564070-960x867.jpg" alt="La vista della sidebar con i tasti aggiunti." class="wp-image-5511"/><figcaption class="wp-element-caption">Un piccolo miglioramento che ho fatto è stato anche usare del JavaScript per visualizzare i tasti della Libreria nella sidebar, sotto il menu di navigazione, quando si apre qualcosa partendo da quella pagina. Non li voglio mettere lì permanentemente, altrimenti il clutter è troppo, ma devono stare lì in quella specifica situazione, così si può navigare ad un ritmo incalzante, altrimenti scenderebbero le palle dovendo tornare sempre indietro. ⛓️</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Beh, il modo meno fragile che ho trovato è leggere <code>document.referrer</code> su ogni pagina e, qualora questo sia l'URL della Libreria, far apparire un iframe a quella pagina (con CSS che nasconde le parti inutili) nell'angolo. E lì dentro, sempre con JavaScript, a tutti i link viene aggiunta una funzione <code>onclick</code> che fa <code>top.location = this.href</code> (altrimenti il frame navigherebbe ma non la pagina principale). E perché proprio un iframe? Perché così il referrer viene settato correttamente... si, tutto ciò sembra una #hack, ma fidatevi che altri modi (incluso patchare plugin non miei) sarebbero anche peggio... 🪓</p>
<!-- /wp:paragraph -->