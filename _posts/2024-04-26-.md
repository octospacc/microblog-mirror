---
ID: 4890
post_title: doki doki pazzia club
post_name: doki-doki-pazzia-club
author: minioctt
post_date: 2024-04-26 00:02:11
layout: post
link: >
  https://octospacc.altervista.org/2024/04/26/doki-doki-pazzia-club/
published: true
tags:
  - hack
  - issue
  - problemi
  - RenPy
categories:
  - Senza categoria
title: doki doki pazzia club
date: 2024-04-26 00:02:11
canonical_url:   https://octospacc.altervista.org/2024/04/26/doki-doki-pazzia-club/
---
<!-- wp:paragraph -->
<p>[sc name=quote-embed-post]2024/04/25/doki-doki-browser-club/[/sc]</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Bene, come dire, oggi con questa storia di #RenPy ho a dir poco <strong><code><em>esagerato</em></code></strong>... perché in realtà, dopo aver detto che me ne sarei lavata le mani, ho comunque cercato di vedere della roba, perché avevo scoperto altri #problemi non proprio ignorabili. È servito? Sni. ☠️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>La prima cosa è che su mobile la tastiera su schermo non funziona, perché è implementata in modo strano, prima che cambiassero e la facessero effettivamente bene. Quindi, sul mio porting di DDLC non si riuscirebbe neanche ad iniziare il gioco, perché non si può inserire il proprio nome nel momento in cui il programma lo chiede, a meno di collegare una tastiera fisica, che è pazzia. Con <a href="https://www.freecodecamp.org/news/javascript-keycode-list-keypress-event-key-codes/">un po' di ingegno e tanta sperimentazione</a>, però, ho effettivamente risolto il problema: premendo un tasto dedicato nel menu contestuale, faccio apparire un <code>&lt;input></code> a schermo, dove l'utente può digitare con la propria tastiera virtuale normalmente, e il codice che ci sta dietro legge gli eventi per ricostruirli e inviarli al <code>&lt;canvas></code> che esegue il gioco. È un po' una #hack ma sostanzialmente funziona bene. 🕳️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>E poi... ho scoperto che in realtà no, le immagini che impiegano una vita a caricare si rifiutano proprio di farlo finché non avviene (oltre al passaggio di abbastanza scene di dialogo, ma va un po' a caso) un evento di re-rendering totale, che ho individuato succedere in due casi: quando si preme il tasto destro per far scomparire l'HUD, oppure quando la finestra viene ridimensionata. Ora, chiamatemi scema, ma ho provato a mettere mano nella parte del codice che triggera un resize, perché quella del render è proprio dentro il codice WASM e quindi non c'è umanamente verso, ma... non sono arrivata a granché, dopo un po' di prove. Ho tentato una strategia diversa, cioè simulare un doppio click col mouse ad ogni click dell'utente, ma farlo troppo veloce non fa ri-renderizzare nulla, e farlo troppo lentamente spacca le interazioni degli utenti... E quindi ho anche provato a sfruttare un iframe di servizio per poter fare ridimensionamenti della finestra ad ogni click (no, non basta lo styling), ma ci sono le stesse problematiche riguardo la velocità (eccetto che qui l'eccesso causa flash dello schermo, aiuto!). 🐞️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>E in tutto questo, nonostante abbiano dimostrato di fare release totalmente rotte una dopo l'altra, i <em>RenPyisti</em> si sono rivelati anche abbastanza efficienti: la mia #issue di prima ha non solo avuto delle risposte, ma qualche ora fa è già stata creata <a href="https://github.com/renpy/renpyweb/pull/39">una pull request</a> per sistemare il problema, incredibilmente. (Ma io ancora mi chiedo, come è possibile che sono stata io a individuarlo?) Però, loro non hanno una CI normale per creare le build, e io a compilare da sorgente sul mio PC non ci sono riuscita (ed ecco perché volevo a tutti i costi ficcare i miei workaround nel codice già compilato anziché provare a fare un fix per bene prima), quindi dovrò per forza aspettare che creino loro la prossima nightly... domani, probabilmente?! Vabbè, per ora tenetevi il giochino sistemato <em>in parte</em>, è già meglio di nulla; ho anche aggiunto un ulteriore tasto al menu contestuale per fare refresh visivo su mobile, dove il right click non si può fare. 🤥️</p>
<!-- /wp:paragraph -->