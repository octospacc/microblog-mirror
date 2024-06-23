---
ID: 4868
post_title: doki doki browser club
post_name: doki-doki-browser-club
author: minioctt
post_date: 2024-04-25 13:32:05
layout: post
link: >
  https://octospacc.altervista.org/2024/04/25/doki-doki-browser-club/
published: true
tags:
  - browser
  - bug
  - DDLC
  - DokiDokiLiteratureClub
  - engine
  - gaming
  - giochi
  - gioco
  - issue
  - problema
  - RenPy
  - rogne
  - SalaMuseoGames
  - sidequest
  - visualnovel
  - web
categories:
  - Senza categoria
title: doki doki browser club
date: 2024-04-25 13:32:05
canonical_url:   https://octospacc.altervista.org/2024/04/25/doki-doki-browser-club/
---
<!-- wp:paragraph -->
<p>La mia #sidequest di scovare e archiviare app e #giochi di valore per il #browser, seguendo la filosofia del binario universale e tutti i mazzi annessi, certe volte mi porta si a complicarmi un po' le giornate, ma non credevo di arrivare persino a scontrarmi con bug breaking di motori di #gioco famosi e utilizzatissimi... È la maledizione per cui in mano a me si rompe sempre tutto, anche se in questo caso no, è tutto già rotto da tempo, solo che nessuno lo sapeva bene. 🤢️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>In pratica, ieri mi è venuta l'idea di caricare alcune VN sulla #SalaMuseoGames, considerando sia che RenPy supporta la creazione di build web da un bel po', e che in genere è molto facile ricompilare e portare giochi fatti con questo #engine. Infatti, ho già provato a portare diversi giochi gratuiti presi da Itch.io, e al netto di #difficoltà inaspettate per alcuni (che magari racconto la prossima volta), in linea di massima non ci sono mai #rogne con i giochi in RenPy 8. 💟️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Però volevo portare una #visualnovel in particolare, ovviamente: #DokiDokiLiteratureClub! ...e ops, questa è dei tempi di RenPy 6 addirittura, e non c'è verso di farla girare sotto le v8 (basata su Python 3 anziché 2.7, era ora). Sulle versioni 7.x.x per fortuna sembra venir eseguita a modino, ma... la compatibilità web lì è in "beta" (cosa che ho scoperto va letta come "totalmente rotta lmao") e quindi sono subentrati problemi immediatamente. O meglio, ho compilato con la più recente v7 (7.7.1), e sembrava tutto funzionare, finché non ho aperto la pagina su Linux o Android per scoprire che crashava tutto al caricamento per via di uno strano errore del video, e solo su Firefox nella mia VM Windows si riusciva a giocare (quindi binario universale un corno). 🚧</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Ho cercato e cercato tra changelog e pagine di aiuto, ma non c'ho capito granché, a parte che hanno cambiato tipo il sistema video ad un certo punto... eppure RenPy 8 funziona senza problemi. Ho verificato che solo fino alla v7.4.11 i giochi (qualsiasi) girano ovunque, invece dalla v7.5 appare la rogna. Alla fine, me ne sono dovuta lavare le mani: mi sono impegnata solo a scrivere bene una #issue sul GitHub, e ora se la vedranno loro a fixare questa immondizia, te saludo!!! <a href="https://github.com/renpy/renpy/issues/5478">https://github.com/renpy/renpy/issues/5478</a> (leggete lì se vi interessa il tecnico). Il problema è che quest'altra versione funziona solo su Firefox, e ha un #bug strano per cui la musica di sottofondo non carica quando cambia la traccia, quindi pensavo di dovermi rassegnare e aspettare ora... 🦧</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":4869,"sizeSlug":"full","linkDestination":"none"} -->
<figure class="wp-block-image size-full"><img src="{{site.cdnurl}}/assets/uploads/2024/04/image-8.png" alt="" class="wp-image-4869"/><figcaption class="wp-element-caption">Però poi, dopo aver ancora letto, ho visto che RenPy &lt; v7.4.7 usa FFmpeg per l'audio, "quindi magari"... e, <em>sicuro abbastanza</em>, con v7.4.6 la musica funge. E, casualità, non c'è manco il bug con i motori WebKit! Però pare ci sia un altro #problema, ossia che le immagini fanno veramente fatica a caricare, a volte impiegano decine di secondi... non è gravissimo, perché alla fine se aspetti si caricano, però magari vedrò se posso sistemarlo comprimendo gli assets per farli stare tutti nel game.zip &lt; 100 MB, anziché farli streammare separatamente. Comunque, forza, potete già fare il #gaming su <a href="https://gamingshitposting.github.io/SalaMuseoGames/2024/04/24/doki-doki-literature-club/">https://gamingshitposting.github.io/SalaMuseoGames/2024/04/24/doki-doki-literature-club/</a> 👽️</figcaption></figure>
<!-- /wp:image -->