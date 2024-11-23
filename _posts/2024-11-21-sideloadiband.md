---
ID: 11581
post_title: sideloadiband..
post_name: sideloadiband
author: minioctt
post_date: 2024-11-21 15:26:43
layout: post
link: >
  https://octospacc.altervista.org/2024/11/21/sideloadiband/
published: true
tags:
  - app
  - band
  - Dev
  - MiBand
  - MiBand9
  - sideloading
  - watchface
  - Xiaomi
categories:
  - Senza categoria
title: sideloadiband..
date: 2024-11-21 15:26:43
canonical_url:   https://octospacc.altervista.org/2024/11/21/sideloadiband/
---
<!-- wp:paragraph -->
<p>Non ci credo che oggi torno qui a parlare di Mi' Band, eppure i poteri forti mi hanno finalmente concesso un pochino di tempo. Evviva quindi, altra pubblicità gratuita per #Xiaomi da parte mia!!! 🥳</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Ma stavolta la pubblicità è negativa, perché la rogna del momento è il #sideloading. Nel senso, la sua relativa impossibilità, visto che la app ufficiale non c'ha un cazzo di tastino "installa da file", l'orologio non ha server FTP né niente, e la situazione con le app terze è mista. 😩</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>La prima cosa buona in realtà è che son riuscita a collegare la #band all'ultima release di Gadgetbridge, a differenza di letteralmente altre 3 app che ho provato, che o non prendevano il token di accoppiamento o per chissà che motivo non andavano. E, Gadgetbridge installa le watchface in .BIN (il che è goduria, ma manca il supporto alle .ZIP). 😳</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Ma, nel frattempo ho trovato un tizio (m0tral), che credo sia capo di una community di modding degli ximilogi, che mantiene una serie di tool e <a href="https://t.me/mi_watch_news/199">una versione moddata di Mi Fitness, che non è male</a>... si collega ad un CDN reimplementato, e quindi fa installare watchface pubblicate dalla sua comunità, nonché pare renda più facile lo sviluppo, perché si collega ad un pannello web. 😈</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>La community ha un gruppo Telegram semi-privato per gli sviluppatori, quindi nel fine settimana entrai, per chiedere un po' di roba e soprattutto farmi dare i permessi sul pannello di gestione delle watchface del CDN... Quindi, dopo aver compilato un'orolofaccia, pare basti caricarla lì sul server nella sezione #DEV, e comparirebbe direttamente nella app per installarla... 😍</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":11586,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="{{site.cdnurl}}/assets/uploads/2024/11/image-7-960x601.png" alt="Schermata tablet split screen Mi Fitness mod e pannello admin" class="wp-image-11586"/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Tuttaviiia, questo già non mi basta ora, perché dalla #app moddata ho scoperto che si possono installare app vere e proprie, che non sono watchface, e quindi hanno solo vantaggi nel caso interessi creare app e giochini normali che non fungano da rilogio. Appaiono semplicemente nel menu principale, figo!! Però cazzarola, in questo caso anche il pannello non aiuta, si possono installare solo una quindicina di app cinesi. 😐</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Qualche #watchface animata e interattiva proverò a farla, se mi viene l'ispirazione artistica... ma la priorità per ora è riuscire a sideloadare le app maledette, perché con quelle il gaming sarà più potente!!! (E ce ne sono di già fatte che vorrei installare, sui vari forum.) Quindi, ora giù di codice, ho due strade e almeno una fungerà. 💀</p>
<!-- /wp:paragraph -->