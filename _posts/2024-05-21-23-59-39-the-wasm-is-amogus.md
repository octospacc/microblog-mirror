---
ID: 5763
post_title: the wasm is amogus
post_name: the-wasm-is-amogus
author: minioctt
post_date: 2024-05-21 23:59:39
layout: post
link: >
  https://octospacc.altervista.org/2024/05/21/the-wasm-is-amogus/
published: true
tags:
  - amongus
  - browser
  - codice
  - debugging
  - DRM
  - gaming
  - gioco
  - grattacapo
  - JavaScript
  - remake
  - reversing
  - SalaMuseoGames
  - WASM
  - web
categories:
  - Senza categoria
title: the wasm is amogus
date: 2024-05-21 23:59:39
canonical_url:   https://octospacc.altervista.org/2024/05/21/the-wasm-is-amogus/
---
<!-- wp:paragraph -->
<p>Ormai ho preso il brutto vizio di aggiungere giochi alla #SalaMuseoGames solo quando ho voglia di fare miglioramenti tecnici, perché a quel punto ragiono "vabbé, ho passato tutti questi quarti d'ora a progettare e programmare, già che ci sono lo metto un giochino nuovo"... però quando lo faccio, mi stupisco sempre di cosa riesco a trovare! 🤭️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":5764,"sizeSlug":"full","linkDestination":"none"} -->
<figure class="wp-block-image size-full"><img src="{{site.cdnurl}}/assets/uploads/2024/05/image-3.png" alt="" class="wp-image-5764"/><figcaption class="wp-element-caption">E infatti, un'ultimissima aggiunta è proprio AMOGUS, con una build web trovata su uno dei soliti siti adware. Potete giocarci qui, anche questo è sorprendentemente ben fatto per un clone, e nonostante sia solo offline ha anche tipo la chat con i bot... troppo effort: <a href="https://gamingshitposting.github.io/SalaMuseoGames/2024/05/19/among-us/">https://gamingshitposting.github.io/SalaMuseoGames/2024/05/19/among-us/</a>. È giocabile pure su mobile, anche se la gestione degli input touch è un po' arronzata. 🚀️</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":5765,"sizeSlug":"full","linkDestination":"none"} -->
<figure class="wp-block-image size-full"><img src="{{site.cdnurl}}/assets/uploads/2024/05/image-4.png" alt="" class="wp-image-5765"/><figcaption class="wp-element-caption">All'inizio ho infatti pensato fosse qualche versione demo ufficiale o boh poi ritirata, ma ho scoperto che non è così appena ho provato ad eseguire il gioco dopo averlo caricato sul server, perché faceva stranamente freezare la pagina; e quindi io giustamente apro la console JavaScript per vedere che cazzo succede, ma leggo… "DO NOT STEAL MY GAME!". ...Oooopsie! Non era mia intenzione, giuro, volevo solo creare un mirror per i posteri come al mio solito. Risolvere questo intoppo è stato un bel #grattacapo. 🦧️</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Considerando che su <code>localhost</code> il gioco funziona, oltre al sito da dove l'ho tirato, è evidente che <em>da qualche parte</em> controlla il dominio. E ho verificato che non importa l'URL relativo della pagina, ma appunto solo il dominio. Teoria nel complesso poi confermata dal fatto che lo stesso crash avviene se apro la pagina servita dal mio server locale usando un indirizzo diverso, ossia <code>127.0.0.1</code>, che non sarà whitelistato nel codice. Si, ma nel codice dove? Ah non lo so io! Lo vedete anche voi che lo stacktrace dell'errore in foto non è molto utile (non solo perché molte funzioni sono anonime, ma perché non si riesce a decodificare quelle che provengono dal WASM anziché dal JavaScript). 😔️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Vi risparmio il racconto di tutti i primi tentativi falliti per trovare dove avvenisse il controllo del dominio, per colpa del mio essermi fissata su oggetto <code>location</code> e affini; comunque era chiaro che avviene all'interno del WASM, e non si riescono a trovare stringhe utili da nessuna parte. Mi sono sbloccata in realtà solo quando, vedendo che un altro modo per ottenere l'URL della pagina corrente è leggere <code>document.URL</code>, cercando appunto la parola document nella sezione WASM che lista le funzioni JS importate, ne ho adocchiata una <code>_JS_SystemInfo_GetDocumentURL</code>. Certo abbastanza, la riesco a trovare nel codice colla JS e, al primo tentativo di patcharla per farle restituire sempre <code>http://localhost/</code> anziché il valore vero, ecco che ho aggirato il #DRM minchione. ⛏️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Un'altra vittoria ottenuta grazie alla relativa facilità del reverse engineering sulla piattaforma web! Eppure, questo mi fa pensare... ma possibile che non ci siano debugger migliori di quelli esistenti? Non mi risulta sia neanche possibile inserire breakpoint quando, per esempio, qualcosa sulla pagina semplicemente accede ad una variabile globale. Per non parlare poi dell'oscurità dei binari WASM, che se cercate di mettere le mani lì dentro avete già sbagliato strada ed è meglio se tornate a leggere il glue code... idk, suggerimenti? 🤥️</p>
<!-- /wp:paragraph -->