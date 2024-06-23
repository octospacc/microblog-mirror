---
ID: 5924
post_title: gensokyo momento
post_name: gensokyo-momento
author: minioctt
post_date: 2024-05-26 12:44:33
layout: post
link: >
  https://octospacc.altervista.org/2024/05/26/gensokyo-momento/
published: true
tags:
  - build
  - DirectX
  - emulazione
  - gaming
  - gioco
  - porting
  - SalaMuseoGames
  - test
  - TH01
  - Th06
  - Touhou
  - Touhou1
  - Touhou6
  - WASM
  - web
  - Windows
  - ZUN
  - ZUNcode
categories:
  - Senza categoria
title: gensokyo momento
date: 2024-05-26 12:44:33
canonical_url:   https://octospacc.altervista.org/2024/05/26/gensokyo-momento/
---
<!-- wp:image {"id":5925,"sizeSlug":"full","linkDestination":"none"} -->
<figure class="wp-block-image size-full"><img src="{{site.cdnurl}}/assets/uploads/2024/05/image-6.png" alt="" class="wp-image-5925"/><figcaption class="wp-element-caption"><em>Odio di rompere esso a te</em>, ma devo dirlo sia per annotare le ultime scoperte, sia evitare di portare troppo a lungo <a href="2024/05/24/cant-have-x-in-direct/">le false speranze</a>. Di Touhou per Windows sulla #SalaMuseoGames, per ora, non se ne parla. Ho fatto varie prove con librerie strambe, e alla fine l'unica combinazione che ha fatto tecnicamente funzionare il gioco è stata: Windows 2000 su v86, con DirectX 9, e <a href="https://fdossena.com/?p=wined3d/index.frag">le DLL di WineD3D</a> (e ho già dimenticato se nel mix ci fosse anche <a href="https://github.com/crosire/d3d8to9">d3d8to9.dll</a>!), con cui alla fine dei conti il gioco viene renderizzato da OpenGL. Peccato che questo rendering è sempre via software, ma con talmente tanti livelli di astrazione che tutto gira a pochi frame al minuto, ops. Ci ha messo una decina di minuti a fare fade-in alla schermata del titolo e poi mi si è impallato. 💀️</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Bisognerebbe implementare l'emulazione di una GPU d'epoca in v86 per far girare correttamente questo e altri giochi. Comunque Touhou 6 da rogne anche su Windows 10+ e qualcosa su Wine, purtroppo quindi è anche tutto molto colpa del ZUNcode. Però beh, ho detto che ora mi ero fissata e non mi sarei potuta arrendere finché non avrei fatto girare Touhou nel browser... ma, non ho detto il 6 nello specifico, quindi... non tutto è perduto? 🙃️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:video {"id":5923} -->
<figure class="wp-block-video"><video controls src="{{site.cdnurl}}/assets/uploads/2024/05/simplescreenrecorder-2024-05-26_11.52.19.mp4"></video><figcaption class="wp-element-caption">Ho trovato <a href="https://yksoft1.github.io/">questo sito GitHub</a>, dove ci sono build WASM già funzionanti di Neko Project II e il fork Kai, nonché sorprendentemente una <a href="https://www.windows93.net/d/programs/dosbox/">build WASM di DOSBox-X</a> (un fork con supporto PC-98) sul sito di Windows93. Ho per ora usato il primo per pubblicare Touhou 1, l'emulazione sembra un po' meglio, mentre dovrò vedere meglio certe cose (forse dovrò compilare da source) per caricare anche 2, 3, 4, e 5. Ancora niente comandi touch su mobile, ma lì è lento, quindi poco importa, non ci giochereste. Two small issues: i progressi non si salvano, e io sono 1 po' niubba e non altamente responsiva a preghiere, quindi piuttosto giocateci voi: <a href="https://gamingshitposting.github.io/SalaMuseoGames/2024/05/26/touhou-highly-responsive-to-prayers/">gamingshitposting.github.io/SalaMuseoGames/2024/05/26/touhou-highly-responsive-to-prayers/</a> 🤗</figcaption></figure>
<!-- /wp:video -->