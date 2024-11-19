---
ID: 5972
post_title: lo scatolvino di distrazione
post_name: lo-scatolvino-di-distrazione
author: minioctt
post_date: 2024-05-27 17:16:33
layout: post
link: >
  https://octospacc.altervista.org/2024/05/27/lo-scatolvino-di-distrazione/
published: true
tags:
  - BoxedWine
  - container
  - Debian
  - emulatore
  - emulazione
  - gaming
  - Linux
  - test
  - VM
  - WASM
  - web
  - webapp
  - Windows
  - Wine
  - x86
categories:
  - Senza categoria
title: lo scatolvino di distrazione
date: 2024-05-27 17:16:33
canonical_url:   https://octospacc.altervista.org/2024/05/27/lo-scatolvino-di-distrazione/
---
<!-- wp:paragraph -->
<p>Per oggi avrei dovuto cacciare la soluzione di emulazione finalizzata per i giochi Windows [esenti da requisiti hardware irrealistici] con v86... ma a quanto pare è un po' impegnativo, devo implementare almeno un'altra hack per soddisfare i requisti essenziali. Però, nel frattempo Boxedwine è rimasto un pensiero fisso, soprattutto dopo avaver constatato che la versione nativa su Windows e Linux funziona e basta: è praticamente plug-and-play con tutti i giochi che sono risaputi funzionare, al contrario del Wine "essenziale" proveniente da upstream o da una distro qualsiasi. 📦</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Touhou 6 su Boxedwine per Windows mi è partito, e con una versione (la 5.0 almeno) gira pure bene, ci ho potuto giocare (anche se le ventole del portatile sono volate nel processo). Non credo che adesso magicamente riuscirò a farlo andare sulla versione web, perché c'è un inghippo: il giochino partiva con l'impostazione della grafica nativa, ma non se impostata su quella emulata (che credo sia l'unica utilizzabile nel browser), ma già è qualcosa: il vino inscatolato potrebbe tornarci utile quantomeno per creare repack di giochi che, con un singolo file che parte sia su Windows che su Linux, si giocano e basta senza alcun imprevisto dei soliti del gaming PC... 🦜</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Però allora ho pensato: se quello che cambia tra build nativa e web di Boxedwine è solo il codice macchina dell'emulatore (e le sue chiamate all'API host), che però esegue sempre le stesse robe precise al suo interno, com'è che escono fuori quegli strani problemi di compatibilità, tipo il fatto che <a href="/microblog-mirror/2024/05/24/cant-have-x-in-direct/">Wine 5.0 non parte sul browser</a>? La risposta è: il 5.0 che ho provato io non è lo stesso che scarica la versione desktop. Questo è saltato fuori dopo che ho provato a far partire quello da web, e in effetti non crasha come l'altro giorno! E, addirittura, ci gira il 6.0, che nemmeno credevo fosse supportato! Detto in modo diverso: questo progetto è mantenuto un po' a culo da quello che vedo, ci sono diversi download nominalmente equivalenti sulle diverse pagine ufficiali, sia di questi filesystem Wine che dell'emulatore in sé (ma per quello non c'è dubbio che la versione migliore sia quella dal Jenkins). 🧬</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":5974,"sizeSlug":"large"} -->
<figure class="wp-block-image size-large"><img src="{{site.cdnurl}}/assets/uploads/2024/05/Screenshot_20240527-160241_Firefox-Beta.png" alt="" class="wp-image-5974"/><figcaption class="wp-element-caption">Per fare tutte le prove possibili voglio ora avere sotto mano tutte le versioni dei rootfs che trovo, varie impostazioni di emulazione, e il caricamento immediato di applicazioni diverse, quindi ho iniziato a tirare su questo wrapper per la versione HTML; modificare file di configurazione o parametri URL ogni minuto era diventato doloroso, e la UX del launcher PC è scomodissima. Per ora è sul server casalingo, perché così posso applicare al volo modifiche ai file, ma se dovessi mettere troppe app e finire lo spazio allora creerò una repo Git. Boxedwine desktop offriva per il download anche queste tante altre versioni, quindi le ho messe... ma alcune sembrano ugualmente rognose (tra cui le 1.x, ironicamente), quindi indagherò meglio. Per il lago d'uria: <a href="https://hlb0.octt.eu.org/Misc/BoxedWine/">https://hlb0.octt.eu.org/Misc/BoxedWine/</a> 💦</figcaption></figure>
<!-- /wp:image -->