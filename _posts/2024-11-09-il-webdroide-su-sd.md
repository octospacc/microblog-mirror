---
ID: 11190
post_title: il webdroide su sd
post_name: il-webdroide-su-sd
author: minioctt
post_date: 2024-11-09 21:43:09
layout: post
link: >
  https://octospacc.altervista.org/2024/11/09/il-webdroide-su-sd/
published: true
tags:
  - Android
  - archiviazione
  - dati
  - SDCard
  - SpaccWebView
  - WebView
categories:
  - Senza categoria
title: il webdroide su sd
date: 2024-11-09 21:43:09
canonical_url:   https://octospacc.altervista.org/2024/11/09/il-webdroide-su-sd/
---
<!-- wp:paragraph -->
<p>Ed ecco un'altra combo di mattina+pomeriggio passata a sclerare con #Android, con le sue API terrificanti. E dato che voglio esplodere, è bene distrarmi… postando la spiegazione di come ho smesso di sclerare una settimana fa!!! 😇️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Ancora una volta <a href="/microblog-mirror/2024/11/01/androwebvista/">per SpaccWebView di SpaccDotWeb</a>, infatti, ci sono degli imbrogli... ma piano piano faccio tutto, ne sono certa, il Java è nelle mie vene visto che a casa abbiamo la moka. E appunto, <a href="/microblog-mirror/2024/11/03/androidiessedi/">l'altra cosa che avevo tecnicamente già detto</a>, poi son riuscita a finirla (e menomale)... 👌️😉️👌️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Ora il mio codice riesce a salvare i dati della #WebView sulla memoria esterna. Evviva!!! Ciò è praticamente fondamentale sui <a href="/microblog-mirror/2024/10/05/memorroid/">dispositivi senza adoptable storage (il mio tablet)</a>, perché servirebbe a ben poco poter spostare una app di 100 KB su #SDcard, se poi questa scrive 10, 20 MB sulla memoria interna... 🤨️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Non ho in realtà sistemato tutti quei TODO dell'archiviazione esterna, ma al momento non freca, visto che il codice per salvare lì i dati funziona comunque as-intended, su Android KitKat o superiori. Su versioni più vecchie funziona comunque, anche se meno intended, perché Android hack rogne API spacc... non fatemi ripetere. 💤️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Il tempo mi serviva per implementare cose accessorie, tipo il fatto che l'applicazione ora all'avvio controlla la posizione di installazione, e, nel caso sia cambiata dall'ultima volta (dalle impostazioni di Android), allora obbliga a spostare i dati verso lo stesso posto. Col dialogo bellino così, tutto automatico, senza ricorrere a configurazioni complicate! 🎉️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Forzare i #dati in sync in questo modo non solo migliora la UX, ma evita rogne strane, perché ci pensa il sistema Android a garantire che (per esempio) la app non possa trovarsi senza i suoi dati perché l'utente è stronzo e rimuove la scheda SD. 🤫️ (Devo però gestire il caso in cui l'utente sposta la app, ma toglie la memoria coi dati prima di trasferirli, che palle...)</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":11186,"sizeSlug":"large"} -->
<figure class="wp-block-image size-large"><img src="{{site.cdnurl}}/assets/uploads/2024/11/screenshot_20241104_1603295409713877359863366.png" alt="" class="wp-image-11186"/><figcaption class="wp-element-caption">In foto qui si vedono entrambi gli scenari: la cartellina coi dati su microSD, e la app che chiede di spostarli dopo esser stata messa su #archiviazione interna. Damn, così elegante, funzionale, incredibile... Android quando funge... 🤤️</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Ovviamente, ho ricompilato la magica app di 2048 che uso come demo con questo miglioramento blessato; l'APK è <a href="https://hlb0.octt.eu.org/Drive/Misc/SpaccWebView-2048.apk">allo stesso posto dell'altra volta, </a><a href="https://hlb0.octt.eu.org/Drive/Misc/SpaccWebView-2048.apk"><strong>qui</strong></a>. E, in questo caso ho omesso gli scleri... dato che sono a tema WebView, ma questo componente di merda non smette di regalare sofferenza. Prima o poi vuoto il sacco... 🙃️🙂️</p>
<!-- /wp:paragraph -->