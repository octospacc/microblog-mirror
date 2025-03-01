---
ID: 5675
post_title: volpi infinite.
post_name: volpi-infinite
author: minioctt
post_date: 2024-05-19 17:33:22
layout: post
link: >
  https://octospacc.altervista.org/2024/05/19/volpi-infinite/
published: true
tags:
  - "3"
  - Android
  - AndroidManifest
  - APK
  - apktool
  - app
  - applicazioni
  - clonazione
  - cloning
  - Fennec
  - Firefox
  - LuckyPatcher
  - modding
  - Mozilla
  - packagename
  - patching
categories:
  - Senza categoria
title: volpi infinite.
date: 2024-05-19 17:33:22
canonical_url:   https://octospacc.altervista.org/2024/05/19/volpi-infinite/
---
<!-- wp:paragraph -->
<p>Stamattina tra diverse distrazioni sono finalmente riuscita a creare cloni della app di #Firefox (Fennec, aka v68) per #Android, senza ricompilare da sorgente... cosa che ieri sera stavo per arrendermi a fare, ma ovviamente ho constatato che non funziona nulla, col build system loro e i sorci vecchissimi. Dopo non pochi tentativi con estrattori ed editor di #APK a non finire (mentre che stavo in realtà cercando di crackare un cloner di app molto pay to win, lol) scopro che Lucky Patcher ha una sua funzione di #clonazione. Perché non fare un tentativo allora? 🤥️</p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Sul Rattoppatore apro l'APK, faccio <code>Rebuild</code> &gt; <code>Clone application</code>, e seleziono solo <code>Modify only AndroidManifest.xml</code>, <code>Change sharedUserId</code>, e <code>Change application name</code>, e lo lascio fare. E... l'APK emesso si installa e gira. 🤯️</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:paragraph -->
<p>Era davvero così semplice? Evidentemente si... ma, in primis il nome non è cambiato correttamente, e quindi non appare diverso in alcuni launcher... e poi l'icona rimane uguale, che è un po' un problema quando devi differenziare tra il clone e la app originale. Per sistemare queste rogne servono per forza altri strumenti, quelli che da soli non stavano funzionando, e allora:</p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Uso <code>apktool d -r -s</code> per estrarre il nuovo APK senza decompilare niente (altrimenti poi la ricompilazione fallirà).</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Uso <a href="https://github.com/hzw1199/xml2axml">xml2axml</a> per "deoffuscare" il manifest, fare queste modifiche, e poi "rioffuscarlo" (altrimenti l'APK non sarà valido):<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Cambio l'unica proprietà <code>android:label</code> tra le tante nel file che ancora riporta il nome passato della app.</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li>Cancello tutti gli attributi XML che risultano vuoti (<code>coso=""</code>) (3 nel mio caso), e cancello i nodi a cui appartenevano se non hanno altra roba, altrimenti <a href="https://github.com/hzw1199/xml2axml/issues/3">si incappa nel bug #3</a>.</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list --></li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Modifico a mano l'icona PNG più in alta risoluzione che ho trovato già nell'APK, poi la ricopio sovrascrivendo tutte le vecchie (si, anche quelle a più bassa risoluzione, non da problemi): <code>find -name ic_launcher.png -exec cp icona_nuova.png {} \;</code>.</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Riassemblo con <code>apktool b</code>, poi per firmare e allineare l'APK usando questo <a href="https://github.com/patrickfav/uber-apk-signer">uber-apk-signer</a> (è una manna dal cielo trovata stamattina, funziona e basta evitandomi i tremila cazzi altrimenti necessari).</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:paragraph -->
<p>Onestamente, non capisco perché modificare il nome del pacchetto con le stesse accortezze che per clonare tutte le app semplici vanno bene, in questo caso non basta e porta il browser a crashare... ma ho visto che il Fortunello <a href="/microblog-mirror/paste/5683/?ppt=0adf649e616a0457f7d63e6ca1e1a31f63abe5bc2cbdbee706a78dda6bff545e">cambia giusto qualcosina all'interno del codice Dalvik</a>, shiftando lettere di poche parole scelte in base a non so che criterio, portandole semplicemente una lettera avanti come già fa per il nome del pacchetto. 🧮️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":5684,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="{{site.cdnurl}}/assets/uploads/2024/05/202405191657358619051511019612036523-960x1440.jpg" alt="Close-up del Galaxy con le nuove volpi installate." class="wp-image-5684"/><figcaption class="wp-element-caption">A proposito di questo... si, per creare un clone 2 con questo metodo bisogna partire clonando il primo APK clonato, e così dall'APK 2 per creare un clone 3, ecc... tedioso. I wish che Lucky Patcher facesse semplicemente scegliere il package name desiderato, ma purtroppo questa è la cosa. Con queste condizioni, almeno 5 minuti di lavoro per creare ciascun clone ci vogliono, quindi: per non perderli io, e nel caso servissero a voi, metterò i miei vari APK <a href="https://hlb0it.blogspot.com/?path=/Drive/Misc/Fennec%20F-Droid%20Old%20armeabi-v7a%20Latest%20Collection.7z">qui (Fennec F-Droid Old armeabi-v7a Latest Collection.7z)</a>. ♻️</figcaption></figure>
<!-- /wp:image -->