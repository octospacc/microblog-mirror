---
ID: 4476
post_title: i casini dietro le liste!!!
post_name: i-casini-dietro-le-liste
author: minioctt
post_date: 2024-04-14 20:33:34
layout: post
link: >
  https://octospacc.altervista.org/2024/04/14/i-casini-dietro-le-liste/
published: true
tags:
  - blogging
  - casino
  - codice
  - hack
  - HTML
  - JavaScript
  - Jekyll
  - problemi
  - programmazione
categories:
  - Senza categoria
title: i casini dietro le liste!!!
date: 2024-04-14 20:33:34
canonical_url:   https://octospacc.altervista.org/2024/04/14/i-casini-dietro-le-liste/
---
<!-- wp:paragraph -->
<p>[sc name=quote-embed-post]2024/04/14/momento-vera-lista-di-liste/[/sc]</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Dovevo finire di scriverlo ieri questo, ma, puntualmente, finito un progettino <em>bisogna subito iniziarne un altro</em> (no spoiler), e non c'è tempo per il #blogging. La pagina rilasciata ieri, nonostante comunque non mi abbia rubato così tanto tempo perché è pur sempre una paginetta, mi ha presa un po' alla sprovvista considerando che l'avevo iniziata addirittura questo lunedì. (6 giorni son passati...) 😳</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Il motivo è buffo e per nulla legato alla difficoltà di #programmazione in sé (ho fatto cose peggiori), ma al fatto che puntualmente le altre cose non funzionano mai come dovrebbero, e quindi bisogna fare delle #hack, e poi dopo altro test si vede che da quelle hack si scassano altre cose, e via quindi di altre hack per sistemare i #problemi... E allora io ad una certa mi seccavo, e dunque "aight then, see you tomorrow ☠️"</p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Per il sitoctt è stato relativamente semplice: mi appoggio <a href="https://sitoctt.octt.eu.org/Search.html">alla pagina di ricerca statica del sito</a>, parsando tutto l'HTML, che per quanto rotta (e per questo evito di far sapere che esiste) racchiude il contenuto di tutte le pagine compilate del sito. Quindi, raccolgo tutti i link ai post da tutte le pagine di categoria. 😺<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Quei link però sono solo-testo, quindi per prendere l'immagine di copertina ho dovuto aggiornare staticoso <em>dopo mesi</em> solo per fargli scrivere gli URL in attributi <code>data</code> dell'HTML. Poi però mettiamoci pure che a volte questi vengono scritti rotti perché la sostituzione delle variabili non funziona in quel punto del #codice (e io non lo sistemerò <em>mai</em>), e anche che quando manca una copertina allora devo per forza prenderla dal contenuto della pagina, ho dovuto comunque complicare di più il #JavaScript... 😡</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list --></li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Per il fritto misto, bel #casino, innanzitutto perché per stabilità e sicurezza volevo evitare di usare i proxy CORS, e poi per efficienza e velocità volevo minimizzare il più possibile le richieste di rete necessarie (paginazione è cacca)... quindi anche qui mi appoggio alla ricerca (in JSON) <a href="https://octospacc.gitlab.io/microblog-mirror">del mirror statico del sito</a>, anziché direttamente a WordPress; nel file ci sono tutti i post con i metadati necessari. 😸<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Ganzo, se non fosse che ho sprecato chissà quanto tempo solo per le immagini; e totalmente invano, perché poi alla fine ho dovuto rassegnarmi a includere nel JSON tutti i dump #HTML dei post (ciò che volevo evitare, perché fatto così si appesantirà molto velocemente, ops) ed estrarre la prima immagine ricorrente in quelli. Non capisco se il problema ha a che fare con #Jekyll, la sua versione fornita da GitHub Pages, o ancora il parser Liquid di Ruby, perché con un altro parser (LiquidJS) ho verificato che il mio codice per estrarre gli URL dal markup è corretto... solo che poi messo lì non funge. Provato anche il plugin "<a href="https://github.com/nhoizey/jekyll-firstimage">jekyll-firstimage</a>" trovato a casissimo, ma ovviamente non è servito, dava addirittura errore ad installarsi nel processo di build. 👹</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list --></li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":4500,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="{{site.cdnurl}}/assets/uploads/2024/04/screenshot-from-2024-04-11-00-30-29-19068796621949443507-960x364.jpg" alt="Una parte del codice con fin troppi livelli logicamente e visivamente indentati." class="wp-image-4500"/><figcaption class="wp-element-caption">Solo parzialmente relato: questo era lo stato di una parte del codice una tarda sera in cui ero drogata di sonno ma, come sempre, di andare a dormire proprio no, meglio scrivere le scalette. 😞 (Poi il giorno dopo l'ho reso meno cacca.)</figcaption></figure>
<!-- /wp:image -->