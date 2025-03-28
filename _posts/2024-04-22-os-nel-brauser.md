---
ID: 4767
post_title: os nel brauser
post_name: os-nel-brauser
author: minioctt
post_date: 2024-04-22 00:28:05
layout: post
link: >
  https://octospacc.altervista.org/2024/04/22/os-nel-brauser/
published: true
tags:
  - browser
  - desktop
  - JS
  - kernel
  - OS
  - pazzia
  - programmare
  - sistema
  - sistemaoperativo
  - web
categories:
  - Senza categoria
title: os nel brauser
date: 2024-04-22 00:28:05
canonical_url:   https://octospacc.altervista.org/2024/04/22/os-nel-brauser/
---
<!-- wp:paragraph -->
<p>Lo dico chiaro e tondo ora, perché a quanto pare <a href="/microblog-mirror/2024/04/21/vortice-js/">il mio pitch veloce di ieri</a> non è entrato bene in testa a molti: si, il #sistemaoperativo che voglio creare è scritto con tecnologie web vanilla (HTML5, CSS, e #JS) e gira interamente nel #browser. Si, è un po' una #pazzia per la grandezza del mio scopo, ma per favore non stupitevi e non rabbrividite, perché non sono la prima a pensare qualcosa del genere, e anzi, <a href="https://kb.octt.eu.org/#Pseudo-OS">diverse cose sono già state belle che realizzate</a>... 🦷️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Non so in realtà se qualcuno di quegli pseudo-OS #web si avvicina più ad un normale #OS nel modo in cui vorrei fare io, magari dovrei prendermi del tempo per sfogliare (ma mai leggere, non abbiamo così tanto tempo!!!) meglio il loro codice... perché da un lato già sentimenti contrastanti su questa cosa. Potrei forse semplicemente forkare uno di quei robi open-source, e avrei così forse da fare un po' meno lavoro con un costo minimo di possibilità perse dal punto di vista dell'utilizzo pratico (che poi spiegherò meglio)... però, avrebbe anche un minor valore come lavoro del mio portfolio rispetto a qualcosa di costruito tutto da zero, e fino ad ora in realtà sembra starsi rivelando un grattacapo gradevole, come non avevo granché fatto prima d'ora. 👽️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>In realtà finora non c'è nulla di difficile da #programmare, la vera difficoltà sta nel costruire una buona progettazione senza avere nemmeno un briciolo di conoscenza formale sulla teoria dei sistemi operativi, ma solo andando un po' a sentimento e con le conoscenze collaterali che, da power user di Linux, Windows, Android e tutto quanto da anni, comunque ho indubbiamente accumulato. Perché appunto, non voglio fare uno di quei simulatori che direttamente funzionano con logica di alto livello, ma vorrei tentare di partire da più in basso per... well, creare tutte le astrazioni in modo più ordinato e funzionale, per poter quindi implementare caratteristiche anche più avanzate che altrimenti sarebbero possibili solo con delle hack (ad esempio, come permetti a delle app di mostrare overlay a schermo intero se tutta la tua logica dei processi ruota attorno al dogma che un processo è la sua finestrella nel DOM con il suo tastino in taskbar?). 🧨️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":4768,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="{{site.cdnurl}}/assets/uploads/2024/04/image-6-960x503.png" alt="" class="wp-image-4768"/><figcaption class="wp-element-caption">Questo è ciò che ho fatto da stamattina ad ora... ho implementato per iniziare giusto un pizzico di logica di eventi, processi, file system, e poi i primissimi passi per il gestore di finestre, in quello che potrebbe tecnicamente essere considerato un #kernel... si, l'ambiente #desktop è praticamente nel kernel al momento (yikes!), ma dovrò pur andare un passo alla volta. Almeno, sto cercando di strutturare il codice in modo modulare, come strati non direttamente dipendenti tra loro, quindi prima o poi dovrebbe essere facile scambiare componenti core del #sistema come pezzettini! Ganzo comunque avere già qualcosa che a video gira, nonostante la strada per la vera funzionalità è ancora lunga. 🙃️</figcaption></figure>
<!-- /wp:image -->