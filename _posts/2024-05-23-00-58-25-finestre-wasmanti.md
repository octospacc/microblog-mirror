---
ID: 5819
post_title: finestre wasmanti
post_name: finestre-wasmanti
author: minioctt
post_date: 2024-05-23 00:58:25
layout: post
link: >
  https://octospacc.altervista.org/2024/05/23/finestre-wasmanti/
published: true
tags:
  - browser
  - emulazione
  - gaming
  - JIT
  - MidtownMadness
  - retro
  - SalaMuseoGames
  - v86
  - VM
  - web
  - Windows
  - Windows2000
  - x86
categories:
  - Senza categoria
title: finestre wasmanti
date: 2024-05-23 00:58:25
canonical_url:   https://octospacc.altervista.org/2024/05/23/finestre-wasmanti/
---
<!-- wp:paragraph -->
<p><a href="https://matrix.to/#/!vwmDGYVJvlMFABfAUc:matrix.org/$afE_yDHjxdaVVyTf7_CKCB_PXkYbk6x81L3j2vLgJk8">Ieri sera su spacctorium</a> è stato sollevato un dubbio su se sarebbe possibile o meno emulare eseguibili Windows sulla #SalaMuseoGames. All'inizio ho detto che in teoria si, ma in pratica no, dopo che tutti i miei tentativi risalenti a pochissimo tempo fa sono sempre falliti in partenza... Però poi ci ho voluto pensare un attimo, e mi sono chiesta: davvero se Boxedwine non esegue qualcosa, tutto il resto gira talmente male che ci dobbiamo accontentare di non avere un cazzo? A quanto pare, la risposta è no. 😜</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p><a href="https://www.boxedwine.org/">Boxedwine</a> è praticamente un emulatore x86 che include un sistema Linux striminzito e una runtime Wine vecchissima (per qualche motivo non sono riuscita a far partire versioni più nuove lì dentro), e quindi anche con pesanti mancanze di compatibilità, che può girare nel browser. È abbastanza impressivo, ma dai miei test, quelle pochissime volte che qualcosa riesce a girare, lo fa veramente male, per colpa degli strati. Mi chiedevo quindi se magari ci fosse qualcosa di meglio, e cado quindi su <a href="https://github.com/copy/v86">v86</a>, che già conoscevo da tempo ma non avevo realizzato prima quanto fosse basato: usa una tecnica di codegen WASM per sfruttare il JIT del browser come JIT del motore x86 (che è l'unico modo praticamente, il browser può ricompilare JIT il codice che deve eseguire, ma questo codice non può a sua volta ricompilarne altro). 🪨</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>In sostanza, questa soluzione è molto più veloce di quanto i miei test superficiali (ad esempio, navigando in Windows Explorer) mi portavano a pensare (per quanto Windows di 20 anni fa riesce ad essere sorprendentemente reattivo lì dentro, persino su browser mobile, dove invece Boxedwine si impalla al suo boot), e credo sia lo stato dell'arte. Fino a poco fa ho dovuto risolvere (o aggirare...) dei problemi (tra cui uno veramente stupido per l'audio su Windows 2000, <a href="https://github.com/copy/v86/issues/1049">ho aperto una issue mezza per niente</a> aiuto sono tremenda), ma poi ho finalmente potuto far partire uno dei giochi vecchi che avevo da parte sul PC, e... 🤫️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:video {"id":5818} -->
<figure class="wp-block-video"><video controls src="{{site.cdnurl}}/assets/uploads/2024/05/simplescreenrecorder-2024-05-23_00.17.18.mp4"></video><figcaption class="wp-element-caption">Boh, giudicate voi dal video! Midtown Madness che gira su Windows 2000 dentro questa roba, sul mio PC fisso, ed a dettagli minimi è sorprendentemente giocabile per il contesto. Gira persino meglio di come gira in DOSBox-Pure sui miei dispositivi Android (dove spesso bisogna addirittura rinunciare al JIT perché Windows 9x sennò è instabile). Per quanto non posso promettere che riuscirò effettivamente a mettere giochi Windows sul mio sito (anche se sarebbe un sogno, un ulteriore passo avanti alla concorrenza for-profit), questa roba è decisamente promettente. 🤯️</figcaption></figure>
<!-- /wp:video -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>I margini di miglioramento comunque ci sono. Innanzitutto, magari 9x gira meglio per alcuni giochi, e quindi nel caso si preferisce quello; poi, per quanto i Windows d'epoca non avessero tutto questo bloat, penso che almeno qualche FPS in più uscirebbe fuori togliendo vari servizi inutili (e uccidendo Explorer); se tutto va male poi possiamo tentare (dato che abbiamo i sorgenti illegali) di ricompilare componenti di Windows con ottimizzazioni o robe, e infine potremmo sempre implementare delle hack in v86, anche specifiche per ogni gioco (praticamente HLE). L'hosting soltanto potrebbe essere rognoso, perché le immagini disco vanno preparate in un modo che non vi sto a spiegare ora, ma ci sarà da impazzire (non tanto per il sistema base, ma coi giochi di mezzo si). 😷</p>
<!-- /wp:paragraph -->