---
ID: 1544
post_title: pspspsp non gradisce nuovo gcc
post_name: pspspsp-non-gradisce-nuovo-gcc
author: minioctt
post_date: 2024-02-04 23:36:23
layout: post
link: >
  https://octospacc.altervista.org/2024/02/04/pspspsp-non-gradisce-nuovo-gcc/
published: true
tags:
  - build
  - compilatore
  - compiler
  - console
  - core
  - crash
  - crisi
  - cursed
  - differenza
  - emulare
  - emulatore
  - emulazione
  - GCC
  - issue
  - Libretro
  - multiemulatore
  - NES
  - PlayStationPortable
  - PPSSPP
  - problema
  - problemi
  - PSP
  - QuickNES
  - release
  - RetroArch
  - rogna
  - rotto
  - software
  - Sony
  - speranza
  - versione
categories:
  - Senza categoria
date: 2024-02-04 23:36:23
---
<!-- wp:paragraph -->
<p>Altri #problemi di #PlayStationPortable, ma in questo caso non colpa di #Sony: avevo visto (con rabbia e disperazione) che i #core Nestopia-UE e #QuickNES per #RetroArch (e questo punto chissà quanti altri!) facevano piantare per qualche secondo la #console, che poi si spegneva con un <em>pop</em>. A questo punto decido di vedere se anche su #PPSSPP... e si, succede la stessa cosa, quindi non è colpa del mio hardware. 🤯️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Il grazioso #emulatore mi dice però precisamente il motivo del #crash... un jump a NULL, che è una cosa non proprio bella (in alto in foto), e mi dice molto poco. Purtroppo sulla PSP mi serve uno di quei core, perché voglio tenere quanta più possibile della mia #emulazione centralizzata in RetroArch, e a quanto pare FCEUmm (l'unico altro disponibile per #emulare il #NES) ha qualche problema: inizialmente funzionava (come in basso a sinistra in foto), ma poi ha iniziato a rompere il video in modo #cursed (in basso a destra). (No, non ho provato a resettare tutta la configurazione, perché anche se risolvesse ora il #problema non potrei farlo ogni volta che si ripresenta.) 💀️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":1545,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="https://octospacc.altervista.org/wp-content/uploads/2024/02/image-4-960x524.png" alt="" class="wp-image-1545"/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Purtroppo, come ormai sempre più mi capita, non trovo alcuna informazione rilevante al problema cercando sul web. E allora, unica mia possibilità: mi metto con l'animo in pace e provo a ritroso tutte le #build di RetroArch per la piattaforma, fino a trovare il punto di #crisi dove quei 2 core si sono rotti: a quanto pare, tra il 20 gennaio 2022 e il 5 marzo 2022; la #release <code>1.10.0</code> è a posto (stando a PPSSPP, ancora non ho provato sul vero metallo), mentre già la <code>1.10.1</code> presenta la #rogna. E noto una singola e particolare #differenza: il passaggio della #versione del #compilatore #GCC da <code>9.3.0</code> a <code>11.2.0</code>. 🧐️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":1546,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="https://octospacc.altervista.org/wp-content/uploads/2024/02/image-5-960x275.png" alt="" class="wp-image-1546"/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>...A chi devo dare la colpa ora? Saranno stati quelli di GNU ad aver #rotto roba upstream? O piuttosto quelli dell'SDK per #PSP? Perché ho skimmato commit e release della roba di #Libretro, ma non riesco ad individuare il problema lì. Ma in ogni caso, perché certi core hanno smesso di funzionare brutalmente ed altri no? Questi sono i motivi per cui odio il #software. Ora non so nemmeno a chi devo creare la #issue a riguardo. 🗡️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Per ora, la mia unica #speranza è di usare questa versione vecchietta del #multiemulatore, sperando che non ci siano incompatibilità di savestate tra versioni diverse, perché voglio giustamente tenere quelle aggiornate sui dispositivi dove funzionano. Avendo poi più tempo, potrei tentare di compilare una versione recente del pacchetto usando il #compiler vecchio... ma probabilmente non ci riuscirò. 😩️</p>
<!-- /wp:paragraph -->