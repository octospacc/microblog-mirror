---
ID: 12254
post_title: 'l&#8217;hugospaccocto??'
post_name: lhugospaccocto
author: minioctt
post_date: 2024-12-08 19:51:17
layout: post
link: >
  https://octospacc.altervista.org/2024/12/08/lhugospaccocto/
published: true
tags:
  - bug
  - Hugo
  - sito
  - sitoctt
  - spacc
categories:
  - Senza categoria
title: 'l&#8217;hugospaccocto??'
date: 2024-12-08 19:51:17
canonical_url:   https://octospacc.altervista.org/2024/12/08/lhugospaccocto/
---
<!-- wp:paragraph -->
<p>Ogni volta che la vita prosegue mi viene veramente da pensare che il software scritto da terzi (individui non magici) sia, al di là delle apparenze, tutto un unico blob deforme che vive di vita propria per complottare contro di me, tipo... 🤥</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Stavolta <strong>Hugo</strong>, per quanto bellino e tutto, e per quanto <a href="/microblog-mirror/2024/08/22/il-sitocto-senza-sito/">ribadisco che è stata la scelta giusta deprecare il mio staticoso e migrare il sito ad esso</a>, si vede che è tecnicamente ancora in alpha (nonostante esista da bo', secoli, e sia popolarissimo). <strong>M'ha spaccato</strong> il #sitoctt, quando ieri l'ho aggiornato e fatto commit...!!! 🥲</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":12264,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="{{site.cdnurl}}/assets/uploads/2024/12/image-960x424.png" alt="Piastrellamento di 3 screenshot che mostra i problemi descritti: home del sito, schermata ricerca, pagina blog." class="wp-image-12264"/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Non so in quale delle ultime versioni, ma lo avevo già notato compilando da Termux (dove i pacchetti sono bleeding edge, quindi ad un certo punto avevo l'ultima release di Hugo) qualche settimana fa: praticamente ogni sezione del #sito che mostra un estratto dei contenuti (le prime parole di una pagina) appare completamente scombinata rispetto a prima. 💩</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Credo che abbiano cambiato non so che parte del codice che genera gli estratti, e ora, una funzione che prima funzionava in quel modo semplice, genererà invece questa merda inconsistente che a volte consiste di due paragrafi invece di uno, altre volte sminchia le dimensioni del testo, altre ancora spana i margini... vabbè, uno schifo semplicemente, non servono parole articolate. 🥱</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Il problema è che tutto è successo da un momento all'altro, senza preavviso prima dello #spacc, e senza nessun messaggio di errore in versioni successive al danno (che su Hugo invece escono per altre cose). Quindi veramente hanno pisciato fuori dal vaso. Però ora vai a capire se il nuovo comportamento è un #bug, o qualcosa di voluto, e poi vai a segnalare, e aspetta che sistemino... che palle. 😴</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Per fortuna, di aggiornare il generatore, francamente, non mi freca: per il momento #Hugo versione 0.133.1 e subito precedenti fanno tutto quello che mi serve, e penso lo faranno per sempre... Quindi, che sia corretto o no il mio codice di templating attuale: <em>"se funziona non toccare", piuttosto pensa a downgradare!!!</em> 🥰</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>(Sulla CI e sul PC non è un problema, rispettivamente blocco il container Docker ad Alpine Linux 3.20, che ha Hugo v0.125, e su desktop uso il binario ufficiale... ma, se mai mi servisse una versione no-spacc su Termux, dovrei compilarmela, visto che il binario ARM64 che danno usa la glibc linkata dinamicamente, che palle!!!)</p>
<!-- /wp:paragraph -->