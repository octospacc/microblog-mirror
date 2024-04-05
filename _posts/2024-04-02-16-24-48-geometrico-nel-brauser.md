---
ID: 3882
post_title: geometrico nel brauser
post_name: geometrico-nel-brauser
author: minioctt
post_date: 2024-04-02 16:24:48
layout: post
link: >
  https://octospacc.altervista.org/2024/04/02/geometrico-nel-brauser/
published: true
tags:
  - casual
  - GeometryDash
  - pezzotte
  - porting
  - ricreazione
  - SalaMuseoGames
  - Unity
  - videogiochi
  - web
  - webapp
categories:
  - Senza categoria
title: geometrico nel brauser
date: 2024-04-02 16:24:48
canonical_url:   https://octospacc.altervista.org/2024/04/02/geometrico-nel-brauser/
---
<!-- wp:paragraph -->
<p>Ci sono alcuni #videogiochi mobile (quelli un po' più ricercati, anche se comunque #casual) che è sempre parso non avessero una versione #webapp... uno di questi sarebbe #GeometryDash. Mi ricordo come ai tempi delle medie e persino le elementari lo cercavo per giocarci nel laboratorio di informatica, senza mai trovare nulla, se non qualche #ricreazione in Scratch (in realtà alcune sorprendentemente ben fatte, ma comunque #pezzotte). 😕</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>L'altro giorno, dopo aver visto sempre quel #gioco in Scratch su alcuni siti, ho pensato "possibile che ancora non c'è il legit?", e ho cercato sul web, e, con mia sorpresa, ho trovato diverse cose. Per evitare di allungare il brodo, in particolare una che ha causato l'esplosione del mio cervello l'ho già messa sulla #SalaMuseoGames: è un #porting quasi perfetto di Geometry Dash Lite, con tutti e 15 i livelli, e ce l'aveva solo questo sito <a href="https://geometrylite.io">geometrylite.io</a>. Com'è possibile, da dove l'hanno preso? 😳</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Ho detto che è quasi perfetto perché ci sono alcuni dettagli un po' diversi o meno rifiniti, però comunque tutta roba che inizialmente avrei pensato di attribuire a differenze di versione e magari ottimizzazioni del motore di gioco per il #web, finché non ho provato a giocarci per bene... e rimango dell'idea che sia una trasposizione eccellente, ma ora ho il presentimento che non sia ufficiale; è un gioco #Unity riprogrammato da zero, eccetto per tutti gli assets, che sono evidentemente stati prelevati dalle build ufficiali desktop o mobile. Praticamente lo stesso spirito di <a href="https://bbs.spacc.eu.org/viewtopic.php?t=105">quei porting Android non ufficiali di giochi desktop o console</a>. 👽</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:video {"id":3890} -->
<figure class="wp-block-video"><video controls src="{{site.cdnurl}}/assets/uploads/2024/04/wp-1712067241422.mp4"></video><figcaption class="wp-element-caption">Ho temporaneamente installato la versione #mobile ufficiale per compararla a questa, per assicurarmi di non star impazzendo, e ho avuto così la conferma davanti ai miei occhi che la fisica è un po' programmata peggio. In Stereo Madness, in un punto in cui normalmente si può saltellare senza morire (in video), qui si verifica una collisione. Poi in generale, la navicella-supposta (subito dopo nello stesso livello) subisce la gravità più del normale, una minore accelerazione verso l'alto, e si piega un po' stranamente quando va per atterrare. E ancora, cliccare per saltare manualmente nel momento preciso in cui si sta su una piastrella di lancio fa si che... avvenga il salto basso normale, che prende precedenza su quello potenziato, cosa anormale... e ancora chissà quante altre #minuzie che non ho visto. 🦜</figcaption></figure>
<!-- /wp:video -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:gallery {"linkTo":"none"} -->
<figure class="wp-block-gallery has-nested-images columns-default is-cropped"><!-- wp:image {"id":3887,"linkDestination":"none"} -->
<figure class="wp-block-image"><img src="{{site.cdnurl}}/assets/uploads/2024/04/image_editor_output_image1975455009-17120655591267239432613722838250-960x554.jpg" alt="" class="wp-image-3887"/></figure>
<!-- /wp:image -->

<!-- wp:image {"id":3888,"sizeSlug":"large"} -->
<figure class="wp-block-image size-large"><img src="{{site.cdnurl}}/assets/uploads/2024/04/image_editor_output_image1865556010-1712065603495675988369348489582-960x1141.jpg" alt="" class="wp-image-3888"/></figure>
<!-- /wp:image --><figcaption class="blocks-gallery-caption wp-element-caption">Poi ci sono questi altri microscopici #problemi, tipo che la barra di progresso dei livelli per la modalità pratica è verde anziché azzurra, o che la scia delle navicelle-freccia che si muovono sullo sfondo del menu principale si deforma al cambio di angolo (mentre dovrebbe invece essere un perfetto 90°)... roba da niente di per sé, però da subito a far capire la natura di questa build da ancor prima di impegnarsi a giocare. 🪲</figcaption></figure>
<!-- /wp:gallery -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Ad ogni modo, è tutto così ganzo... Il gioco #HTML5 non gira malaccio, neanche sui miei dispositivi mobili (ma su Chromium gira un po' meglio e frega meno risorse al sistema rispetto a Firefox), e l'ho aggiunto come PWA senza pensarci due volte, considerando che è solo un'icona e non aggiunge monnezza al sistema Android. Purtroppo ad occhio mi sembra bloccato a 30 FPS, ma se mi gira vedrò come hackerarlo per portarlo a 60 (dovrei esserne capace, parliamo di WASM). Se volete giocarci: <a href="https://gamingshitposting.github.io/SalaMuseoGames/2024/04/01/geometry-dash-lite/">https://gamingshitposting.github.io/SalaMuseoGames/2024/04/01/geometry-dash-lite/</a> ⚡</p>
<!-- /wp:paragraph -->