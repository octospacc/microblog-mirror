---
ID: 1605
post_title: insetti utf nel mio codice!!!
post_name: insetti-utf-nel-mio-codice
author: minioctt
post_date: 2024-02-09 12:12:37
layout: post
link: >
  https://octospacc.altervista.org/2024/02/09/insetti-utf-nel-mio-codice/
published: true
tags:
  - API
  - bug
  - caratteri
  - codice
  - codifica
  - computer
  - condanna
  - dati
  - dormire
  - errore
  - file
  - fix
  - glitch
  - HTTP
  - incidenti
  - incoerenze
  - mattina
  - minuzie
  - NodeJS
  - pazzia
  - pensare
  - problema
  - programma
  - rogna
  - server
  - software
  - sonno
  - stupido
  - tardi
  - WordPress
categories:
  - Devlogs
  - Rant
  - Senza categoria
title: insetti utf nel mio codice!!!
date: 2024-02-09 12:12:37
canonical_url:   https://octospacc.altervista.org/2024/02/09/insetti-utf-nel-mio-codice/
---
<!-- wp:paragraph -->
<p>La dualità del fixare #bug (o, in generale, far funzionare il #software?):</p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Perdi almeno 1 ora buona appresso ad un #glitch oscurissimo (spoiler: la codifica del testo centra sempre in tutti questi bug, in realtà estremamente stupidi), facendo svariati test e tentando varie opzioni prima sensate, e poi senza senso perché altrimenti non sai nemmeno come continuare. 🤥️</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li>Nel frattempo si è fatto #tardi in culo, ti prepari per andare a #dormire e nel frattempo pensi, ma niente... a metà spegni ormai il PC, finisci di prepararti, e continui a #pensare, e solo a quel punto un'idea ovvia viene in testa. Troppo tardi ormai. 💀️</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:paragraph -->
<p>E poi ancora, perché le #incoerenze non sono mai abbastanza:</p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Giustamente nel letto ti irrequieti e non prendi #sonno, perché il cervello non prende pace senza vedere il #problema finalmente risolto dopo tutta la #pazzia passata, anche scommettendo che l'#idea appena venuta è giusta al 100%. 🥴</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li>Però prima o poi il sonno lo prendi, e dopo ore arriva la #mattina dopo, in cui la sveglia suona e... pensi "zzzzzzz voglio stare nel lettino ancora, tanto la #rogna in mente l'ho risolta, chi me lo fa fare di ammazzarmi a prima mattina [prima mattina: le 9:30, ndr.]". 🥹</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:paragraph -->
<p>Insomma, è una #condanna. Non se ne esce. Comunque si, il mio #errore era #stupido: stavo cercando di caricare #file nella galleria cloud di #WordPress tramite la #API REST, ma ricevevo sempre un <code>rest_upload_sideload_error</code>... controllo gli header, tutti giusti; cerco in giro, poca roba che non mi aiuta; provo #minuzie come mettere gli header lowercase, ancora niente; tento di settare a mano content-type parziali o estensioni file arbitrarie, e ovviamente non risolvo. 🤯️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Però, noto che un caricamento da <code>curl</code>, anziché dal mio #codice JS, va a buon fine. Allora, provo a caricare verso un server <code>netcat</code> in entrambi i modi, così da poter vedere al volo i dati della trasmissione #HTTP, e noto una differenza stronzetta: il corpo generato dal mio #server è molto più grosso del peso normale del file... quindi qualcosa lo sta corrompendo E qui, però, mi sono ribloccata. 🤔️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Solo poi, quando ormai avevo chiuso tutto come ho detto, ci ho pensato: ma io, nella parte del #programma che legge i #dati trasmessi dal client, vado a castare tutto ad una stringa; sarà questa la causa? ...E, ricordandomi di altri #incidenti simili capitati in #NodeJS, capisco subito che è così. Detto in breve: la #codifica del testo centra sempre e rovina ogni cosa. Se esistesse solo l'ASCII, ecco che castare dati binari a stringhe non causerebbe alcun danno. E invece abbiamo deciso che i #computer devono supportare nella loro codifica migliaia di #caratteri discutibili, come tutti quelli emoji. E io, dopo aver apportato questo #fix, devo ora continuare a programmare. Non. Se. Ne. Esce. 😭️</p>
<!-- /wp:paragraph -->