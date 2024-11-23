---
ID: 8473
post_title: WinCane con il web reale
post_name: wincane-con-il-web-reale
author: minioctt
post_date: 2024-08-12 03:00:57
layout: post
link: >
  https://octospacc.altervista.org/2024/08/12/wincane-con-il-web-reale/
published: true
tags:
  - bot
  - chat
  - hack
  - HTML
  - HTTP
  - magia
  - sans-js
  - web
  - webdev
  - WinDog
categories:
  - Senza categoria
title: WinCane con il web reale
date: 2024-08-12 03:00:57
canonical_url:   https://octospacc.altervista.org/2024/08/12/wincane-con-il-web-reale/
---
<!-- wp:paragraph -->
<p>Damn. Pensavo di postare questo prima, ma mi seccava fare tantissimo rumore per un obiettivo al di sotto del mio ideale inizialmente prefissato, quindi... ho dovuto programmare per qualche ora in più. Beh, dopo <a href="/microblog-mirror/2024/08/10/wincan-do-be-funnying/">altri 2 giorni di lavoro</a> a tempo più che pieno, ma retribuzione monetaria pari allo zero spaccato, la versione #web di #WinDog è già molto più del <a href="/microblog-mirror/2024/07/01/wincane-no-js/">proof-of-concept del mese scorso</a>... 😌</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Ora ha una UI decente (al buono ci arriveremo con calma) e un backend <em>arronzato meno</em>, che permette di aprire stanze di chat col bot anche ad URL personalizzati, e... da diversi client insieme; vale a dire che praticamente ho, senza volerlo, implementato una chat vera a propria, anche tra utenti web diversi. In effetti volevo semplicemente rendere "riciclabili" le stanze, per preparare il server a future migliorie, ma nel farlo è uscita fuori una problematica tale che mi è quindi convenuto fare come ho fatto. Quindi, ogni client riceve un colore a caso, e un username generato dall'hash di alcuni header HTTP, e boh buffo chat anonima kek. 🤪 (Non abusatene...)</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":8477,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="{{site.cdnurl}}/assets/uploads/2024/08/image-960x709.png" alt="Due finestre di Firefox in chat sul sito nella stessa stanza, mostrando i diversi colori degli utenti e uno dei comandi del bot." class="wp-image-8477"/><figcaption class="wp-element-caption">La persistenza dei messaggi la implementerò più avanti, così come utenti non-anonimi, account, o stanze private/riservate... per ora appunto è tutto pubblico, ma generato casualmente; aprendo la root del sito viene creata una nuova stanza con un UUID sicuro, e aprendo qualunque stanza viene istanziato un utente con un altro UUID (che è segreto, non è l'username). Stanza di esempio, magari se la aprite tutti insieme beccate me o qualcun altro, idk: <a href="https://windog.octt.eu.org/fritto-misto-019143d9bf9b7337adca0cbf2fe2efb9">windog.octt.eu.org/fritto-misto-019143d9bf9b7337adca0cbf2fe2efb9</a>. 😈</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Questa è una delle più potenti manifestazioni della mia #magia... Il fatto che la codebase di questo coso sia vecchia di almeno 3 anni, e che ciò che prima era un banale #bot Telegram ora è un multiforme multipiattaforma, ad un livello che altri bot in giro non ne ho visti, è già tanto, ma... questa interfaccia in particolare, che gira nel browser, ancora senza alcuno script client-side (sans-JS), è proprio lo scopo della mia esistenza, la più valorosa e autogratificante espressione dei miei poteri di puella magica!!! (Sono davvero stranamente felice.) A dire il vero, eh, oggi del JS l'ho aggiunto, ma giusto per far comportare meglio la casella di testo, sfruttando la logica del miglioramento progressivo: chi ha JavaScript funzionante nel browser avrà la textbox che si allarga e si restringe in automatico con la scrittura, e potrà inviare il messaggio facendo Ctrl+Enter, ma la #chat funge lo stesso senza. 🕷️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Comunque... che voi siate veri fan di HTML5, o che invece senza JavaScript non riusciste a combinare un accidente (maledetti #webdev moderni), concordete che è assurdo come io abbia potuto usare una #hack basata su una funzione di #HTTP e dei browser risalente al millennio scorso (!!!) per creare una live chat che funziona in #HTML puro, con addirittura meno lag di Telegram o qualsiasi cosa... Però poi bisogna cringiare per una casella di testo multilinea come si deve... E, ancora, non c'è modo di far scrollare in automatico in basso man mano che ci sono nuovi messaggi (per ovviare a quello si nota come ho scelto il male di UX minore, cioè invertire l'ordine della chat, per ora). Almeno, però, commettendo abusi sugli iFrame, due (2) problemi li ho risolti: mostrare un messaggio di errore in caso di caduta della connessione, e non far apparire la finestra come continuamente in caricamento... 🙏</p>
<!-- /wp:paragraph -->