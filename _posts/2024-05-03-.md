---
ID: 5091
post_title: renprovine
post_name: renprovine
author: minioctt
post_date: 2024-05-03 00:59:00
layout: post
link: >
  https://octospacc.altervista.org/2024/05/03/renprovine/
published: true
tags:
  - engine
  - esperimento
  - feature
  - interessante
  - progetto
  - programma
  - provare
  - Python
  - RenPy
  - test
  - testare
  - testing
categories:
  - Senza categoria
title: renprovine
date: 2024-05-03 00:59:00
canonical_url:   https://octospacc.altervista.org/2024/05/03/renprovine/
---
<!-- wp:paragraph -->
<p>Oggi ho un altro po' sperimentato con #RenPy, e la questione si fa sempre più #interessante... è evidente che questo #engine è così potente e flessibile da essere utilizzabile anche per ben più di semplici visual novel. È quasi un Pygame ma estremamente cross-platform già fuori dalla scatola, con tantissime cose di base già implementate, ed astrazioni comode (tra cui il suo dialetto di #Python) che anche da sole tappano sotto certi aspetti il buco tra stato del programma ed interazioni con gli utenti... devo assolutamente provare a realizzarci qualche esperienza interattiva anche di tipo diverso. 😳️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>A parte essere una scusa per provare le varie cose del caso a livello di programmazione, ho fatto un progetto di testing per... testare, appunto. L'ho messo <a href="2024/04/30/renpiscatola/">nella scatolina dell'altro giorno</a> come promesso assieme a tutto il resto, ma ecco anche il link diretto alla versione web: ...<a href="https://html-classic.itch.zone/html/10330339/renpy/MiscellaneaTesting/index.html"><strong>Miscellanea Testing</strong></a>. Il nome è tutto un programma, si, ma mai quanto la musica di sottofondo che parte appena si entra nel menu interno dell'applicazione (aka quando si fa partire la visual novel, che in questo caso non è tale però lol)... per <em>ovvi motivi</em> è la versione strumentale, ma vi sfido a indovinarla solo ascoltando, la conoscete <em>sicuramente</em>. Potete notare già una delle robe che il motore rende estremamente facile, nel modo in cui la canzone viene loopata, se fate attenzione. 💥️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":5097,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="{{site.cdnurl}}/assets/uploads/2024/05/image-960x528.png" alt="" class="wp-image-5097"/><figcaption class="wp-element-caption">Comunque a parte l'atmosfera che ho realizzato in giro per le schermate (che suppongo sia una #feature), per ora l'unica cosa che c'è è questo stress #test. Mi serviva un qualche minimo strumento per valutare meglio le prestazioni di Ren'Py in diversi ambienti di esecuzione, e online non ho trovato nulla, quindi ho arrangiato io qualcosa con un po' di codice condiviso da altri utenti, un po' scritto da me (quello che disegna il grafico bianco, che indica il tempo passato da un frame al precedente), e tante tante cose inutili che si muovono a schermo solo per spremere CPU e GPU. E, tra l'altro, proprio per via del setup che avviene dietro le quinte per tutti quei fiocchi di neve (ancora non ho capito però perché e come risolvere), tutto il #programma impiega una significativa quantità di tempo anche solo a partire, specialmente su browser mobile... dovrò sistemare per non sclerare, uff. 💀️</figcaption></figure>
<!-- /wp:image -->