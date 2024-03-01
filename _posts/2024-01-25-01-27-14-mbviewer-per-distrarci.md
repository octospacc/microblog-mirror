---
ID: 1329
post_title: 'MBViewer per distrarci, col nuovo #Trasformapi'
post_name: mbviewer-per-distrarci
author: minioctt
post_date: 2024-01-25 01:27:14
layout: post
link: >
  https://octospacc.altervista.org/2024/01/25/mbviewer-per-distrarci/
published: true
tags:
  - alternativo
  - API
  - app
  - applicazione
  - bug
  - Chromium
  - codice
  - componendo
  - componenti
  - costruire
  - dati
  - documento
  - feed
  - formati
  - formato
  - funzione
  - funzioni
  - glitch
  - godere
  - idea
  - impazzire
  - JSON
  - lavoro
  - librerie
  - limiti
  - markup
  - Mastodon
  - MBViewer
  - modifica
  - originale
  - pazza
  - piattaforme
  - procedure
  - profili
  - progetto
  - programmazione
  - programmino
  - rogne
  - RSS
  - schema
  - schemi
  - screenshot
  - sistema
  - spaghetti
  - traduzione
  - trasformazione
  - XML
categories:
  - Senza categoria
title: 'MBViewer per distrarci, col nuovo #Trasformapi'
date: 'MBViewer per distrarci, col nuovo #Trasformapi'
canonical_url:   https://octospacc.altervista.org/2024/01/25/mbviewer-per-distrarci/
---
<!-- wp:paragraph -->
<p>[sc name=quote-embed-post]2024/01/16/spaghetti-a-breve-termine/[/sc]</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Non sono passati nemmeno 10 giorni da quando avevo detto "<em>aaa è improbabile che aggiornerò ancora #MBViewer, dovrei provare a far iniziare a funzionare il progetto definitivo #alternativo migliore</em>..." 🥴️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Però poi mi sono resa conto che: magari del #progetto alternativo non è semplice progettare tutta l'interfaccia e il suo funzionamento (cosa che va fatta, essendo una cosa da #costruire da zero), ma certamente non si posso comunque granché se prima non preparo dei #componenti logici che so già che mi dovranno servire... e allora, tanto vale iniziare a lavorare per quelli, integrandoli nella #app che (per quanto #spaghetti) è già esistente e funzionante, e acchiappare un bel 2 in 1 (espandere quel #programmino, e nel mentre accumulare codice che mi servirà per quel molto altro più tardi). 📦️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>La prima cosa un po' intricata che serve è il supporto all'ingestione di dati da #piattaforme diverse, con #schemi diversi. L'idea è di avere un solo #schema di dati che la app usa per lavorare internamente, per evitare di avere spaghetti, ma questo vuol dire che bisogna fare qualche tipo di conversione. Ci sarebbero diversi approcci: 🔪️</p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Il più classico sarebbe quello di scrivere (come degli schiavi indiani) delle #procedure di codice per tradurre ogni tipo di entità #API dai #formati esterni a quello interno, e viceversa... il che non solo è una pazzia, e richiede un botto di #lavoro (va scritto un numero di #funzioni complesse pari alle piattaforme da supportare, moltiplicato per 2), ma finisce per dare #rogne: appena decidiamo che lo schema di API interno va modificato o allargato, ecco che bisogna modificare in ognuna di quelle parti, ed ecco che magari escono nuovi errori e problemi. Ehhh, no, non ci sto dentro. 😩️</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>La mia idea, invece, è di usare un #documento di #trasformazione, almeno per quando le task sono semplicemente selezione e riassegnazione di chiavi di #dati (per operazioni più complesse, il codice è più appropriato del #markup). Era questo che avevo già provato a fare mesi fa (e funzionava eh!), ma, riguardandolo ora, mi stavo rendendo conto che lo strano #formato JSON da me inventato ha dei #limiti abbastanza forti, tra cui penso sia un casino tremendo usare 1 solo documento di #traduzione per fare sia avanti che indietro. Quindi, ho iniziato a ripensarlo da capo, ma ho pensato abbastanza in fretta che, beh... #JSON non va bene per sta roba, lo si vede anche dal come devo mettermi a scrivere chiavi tipo "<code>__robo__</code>"; <em>JSON abuse, doing I am</em>. Però l'idea credo sia bona... 😋️</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:paragraph -->
<p>E allora, fortunatamente sono tornata sana giusto in tempo, prima di #impazzire ancora una volta dopo mesi con Jason; almeno, abbastanza sana per capire che è meglio impazzire con #XML, se proprio proprio, in questo caso. E, boh, ci ho perso 1 giornata e qualcosa (soprattutto l'altra sera in cui, mezza drogata di sonno, mezza cringiata per colpa della situazione, ho iniziato <a href="https://matrix.to/#/!vwmDGYVJvlMFABfAUc:matrix.org/$FTOmS77benTi6XpMkGmOSz2XMg6uplPAhtldWaz_mzo">ad andare un pochino mentale</a>), ma bene o male l'ho fatto funzionare un minimo. C'è stato di tutto in mezzo ovviamente; tra cui, il #godere per aver sistemato un #bug, eccetto scoprire poco dopo che, no, nulla era sistemato... e averci dovuto perdere un'altra mezza giornata. 📆️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":1330,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="{{site.cdnurl}}/assets/uploads/2024/01/image-9-960x451.png" alt="" class="wp-image-1330"/><figcaption class="wp-element-caption">In #screenshot, i documenti di trasformazione: a sinistra, quello XML nuovissimo, credo definitivo; al centro, quello JSON vecchio: a destra, quello JSON nuovo che ho sperimentato per pochi quarti d'ora. 💎️</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Questa è una di quelle cose capaci di stupirmi anche se fatte da me: la sola #idea di poter raggiungere il 90% di quello scopo intricato semplicemente #componendo un documento XML in maniera adeguata, e avere vita facile per ogni #modifica, la trovo #pazza in concetto. Comunque, ho dovuto (iniziare a) scrivere una mega-funzione totalmente #originale per questa cosa perché, come già avevo constatato mesi fa, ma riconfermato appunto ieri, tutte le #librerie in giro per fare trasformazioni di dati così sono troppo generiche, a quel punto usare quelle sarebbe anche peggio che fare tutto in #codice. E credo di aver cercato fin troppo in giro. E, ahimè, prima o poi soffrirò di nuovo, perché dovrò scrivere pure la #funzione di traduzione inversa! 😵‍💫️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Che centra con la #applicazione mezza kangata? In pratica, avendo integrato questo #sistema già da ora, MBViewer può visualizzare (alcuni) #feed #RSS, e (con qualche problema, per ora) #profili #Mastodon, il che non è male. È male, invece, il mio aver scoperto solo ora che su Firefox avviene un problema con il parsing dei feed RSS, che dovrò sistemare... ma su #Chromium funziona tutto. Oh well. <em>Ohhh, it's so well</em>. I #glitch non finiscono mai, la tortura della #programmazione è eterna!!! 😭️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":1331,"sizeSlug":"full","linkDestination":"none"} -->
<figure class="wp-block-image size-full"><img src="{{site.cdnurl}}/assets/uploads/2024/01/image-10.png" alt="" class="wp-image-1331"/><figcaption class="wp-element-caption">Provate idk, <a href="https://hub.octt.eu.org/MBViewer/#/SiteUrl=https://mastodon.uno/@octo.rss|platform=rss">https://hub.octt.eu.org/MBViewer/#/SiteUrl=https://mastodon.uno/@octo.rss|platform=rss</a>. (Da Cromio per ora, come ho detto, 😴️)</figcaption></figure>
<!-- /wp:image -->