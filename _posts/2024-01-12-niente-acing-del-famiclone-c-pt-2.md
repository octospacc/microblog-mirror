---
ID: 1010
post_title: Niente acing del famiclone :c (pt. 2)
post_name: niente-acing-del-famiclone-c-pt-2
author: minioctt
post_date: 2024-01-12 00:27:52
layout: post
link: >
  https://octospacc.altervista.org/2024/01/12/niente-acing-del-famiclone-c-pt-2/
published: true
tags:
  - adattatore
  - chip
  - collegamenti
  - console
  - cover
  - debugging
  - EEVBlog
  - famiclone
  - famicloni
  - fili
  - flash
  - GPIO
  - informazioni
  - memoria
  - piedini
  - pinout
  - quirky
  - saldare
  - schede
  - SD
  - SDCard
  - smartphone
  - smontato
  - sofferenza
  - SPI
  - Sup
  - teardown
  - telefono
  - trivia
  - Winbond
categories:
  - Senza categoria
title: Niente acing del famiclone :c (pt. 2)
date: 2024-01-12 00:27:52
canonical_url:   https://octospacc.altervista.org/2024/01/12/niente-acing-del-famiclone-c-pt-2/
---
<!-- wp:paragraph -->
<p>[sc name="quote-embed-post"]2024/01/11/acerare-il-famiclone-pt-1[/sc]</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Giusto per #trivia, il mio #famiclone è questo, comunque: <a href="https://it.aliexpress.com/item/1005005829526748.html">https://it.aliexpress.com/item/1005005829526748.html</a>... in pratica una cover per #smartphone, #quirky ikr? Lo comprai quando usavo ancora il Huawei come #telefono giornaliero, dopo aver bene scommesso che il modello della #cover per iPhone 7 sarebbe calzato decentemente. L'#hardware che ha dentro sembra essere tutto sommato più vicino a quello di altre #console tipo <a href="/microblog-mirror/2024/01/07/arcade-mini-152/">quel mini arcade dell'altro giorno</a>, che a robe come il #Sup (c'è in comune la memoria più piccola, la mancanza di AV out e del tasto Select, e il fatto che il volume sia regolabile a schifo con soli 3 livelli anziché con una rotellina). Non mi sembra di aver trovato altri #teardown di #famicloni così (devo cercare meglio anche per modelli simili), ma il mini arcade come quello #smontato da #EEVBlog ha una #memoria #Winbond: <a href="https://www.eevblog.com/2019/06/28/mini-arcade-game-console-repair-oopsie/">https://www.eevblog.com/2019/06/28/mini-arcade-game-console-repair-oopsie/</a>. 🧭️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":1013,"sizeSlug":"full","linkDestination":"none"} -->
<figure class="wp-block-image size-full"><img src="{{site.cdnurl}}/assets/uploads/2024/01/image-5.png" alt="La cover che viene mostrata spaccare una superficie bianca generica, in qualche modo assurdo." class="wp-image-1013"/><figcaption class="wp-element-caption">Certe immagini sulle inserzioni cinesi fanno morire...</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Stamattina, con un po' di #sofferenza, ho provato a #saldare dei fili sugli 8 #piedini del mio piccolissimo chip #flash, e ce l'ho addirittura fatta (contro le mie aspettative). Fatto questo, non avendo #informazioni precise, ho quindi varie strade da poter percorrere, e per adesso ho provato quella dell'interfaccia #SDcard (anche perché <a href="/microblog-mirror/2024/01/10/1003/">il fatto dell'ESP di ieri</a> mi rallenterebbe sulle altre vie), ossia: se, puta caso, sto coso dovesse funzionare come altre memorie #flash #SPI, allora dovrebbe poter essere riconosciuto da lettori di #schede. Allora, non senza difficoltà, sacrifico un #adattatore SD-microSD per attaccare dei #fili pure a quello, in modo da poterlo collegare da un lato al PC e dall'altro al #chip. 🕷️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":1015,"sizeSlug":"large"} -->
<figure class="wp-block-image size-large"><img src="{{site.cdnurl}}/assets/uploads/2024/01/img_2024-01-11-18-48-45-2722850256951560362496-960x1280.jpg" alt="" class="wp-image-1015"/><figcaption class="wp-element-caption">Se non si capisce nulla, è normale.</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Ed è proprio qui che per ora temo di dovermi fermare... purtroppo, questa strategia non è sembrata funzionare. Ho controllato varie volte che i #collegamenti funzionassero elettricamente, e che io stessi collegando tutto per bene secondo il #pinout dello standard #SD e le mie supposizioni sul possibile pinout del chip innominato, ma, quando il collegamento del lettore via USB rimaneva stabile, comunque Linux non riusciva ad accedere all'unità, facendo tirare sia a cat che dd un errore "medium not found" (praticamente come quando si collega il lettore senza niente dentro). Quindi non so. A questo punto potrebbe essere possibilmente proficuo fare #debugging tramite #GPIO per vedere cosa si riesce a cavare da questa storia... se mi verrà voglia lo farò, non so quando. 😴️</p>
<!-- /wp:paragraph -->