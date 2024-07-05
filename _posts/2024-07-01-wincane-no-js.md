---
ID: 7073
post_title: wincane no-js
post_name: wincane-no-js
author: minioctt
post_date: 2024-07-01 00:19:38
layout: post
link: >
  https://octospacc.altervista.org/2024/07/01/wincane-no-js/
published: true
tags:
  - bot
  - chatbot
  - demo
  - hack
  - HTML
  - HTTP
  - JavaScript
  - no-js
  - POC
  - sans-js
  - web
  - WinDog
categories:
  - Senza categoria
title: wincane no-js
date: 2024-07-01 00:19:38
canonical_url:   https://octospacc.altervista.org/2024/07/01/wincane-no-js/
---
<!-- wp:paragraph -->
<p>Stavo <em>quasi</em> per finire la parte di base del bridging di messaggi oggi in #WinDog, che grazie alla API cross-platform che ho costruito dovrebbe in realtà essere questione di poco conto... perché si tratta di usare funzioni già esistenti per elaborare strutture dati già pronte, ma in modo diverso. Peccato che c'è qualche inconveniente per come i messaggi vengono sdoppiati, oltre al fatto che per le varie piattaforme ho ancora da implementare una marea di metodi (su tutte mancano modifica e cancellazione dei messaggi, pensa te), quindi mi sono scocciata oggi pomeriggio e ho pensato... ma quasi quasi ci vuole un bel proof-of-concept della futura versione #web del #bot, totalmente funzionante senza #JavaScript... 👽️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:video {"id":7074} -->
<figure class="wp-block-video"><video controls loop src="{{site.cdnurl}}/assets/uploads/2024/06/Momento-WinDog-senza-JavaScript.mp4"></video><figcaption class="wp-element-caption">Beh, dopo essermi fatta distrarre da altri esperimenti in realtà ho già fatto e finito qualcosa di molto grezzo, però neanche io credevo di riuscirci a questa maniera... Il punto è che, prendendo ispirazione da <a href="https://github.com/kkuchta/css-only-chat">github.com/kkuchta/css-only-chat</a> (anche se io ho implementato tutto in modo molto diverso, senza la brutta #hack CSS), ho creato una live chat in HTML puro, che si aggiorna di continuo e con latenza bassissima, senza costringere a ricaricamenti della pagina, ma sfruttando il meccanismo pazzoide che ho fatto meglio a illustrare in video. Fatto al volo eh, senza manco il tempo di sistemarlo, tant'è che ci sono dei memory leak sicuri, ma questo sarà un problema dell'Octt del futuro (di domani o chissà quando). 💨️</figcaption></figure>
<!-- /wp:video -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Non so se lo lascerò ancora prima di sistemare estetica e codice, ma nel dubbio, dovrebbe stare su <a href="https://windog.octt.eu.org/">WinDog.octt.eu.org</a>. Il meccanismo per cui la pagina si aggiorna senza script e senza flickering, lo spiego meglio, è fighissimo: con l'header HTTP <code>Content-Encoding: chunked</code>, il browser è forzato a renderizzare l'HTML senza aspettare che la connessione si chiuda; dall'altro lato, il server non termina mai la connessione (infatti c'è un loop infinito che preleva dati da una coda, e wow, quella struttura ritorna dopo appena un giorno...), inviando via via frammenti di #HTML che vengono appesi in fondo alla pagina. Stranamente, questo comportamento si vede funzionare correttamente solo collegandosi con normali browser o client TCP grezzi (<code>netcat</code>)... <code>curl</code> semplicemente si blocca, invece. E, ancora, il <code>Content-Type</code> deve essere esattamente <code>text/html; charset=UTF-8</code>, basta anche solo omettere il charset per rompere tutto! La casella di invio, invece, è banalmente dentro un iframe. Direi allora che questo è abbastanza #HTTP 1.1 per oggi... 🥰️</p>
<!-- /wp:paragraph -->