---
ID: 1138
post_title: >
  Overlay WebView su Android, a scopi
  ricreativi
post_name: >
  overlay-webview-su-android-a-scopi-ricreativi
author: minioctt
post_date: 2024-01-17 22:25:48
layout: post
link: >
  https://octospacc.altervista.org/2024/01/17/overlay-webview-su-android-a-scopi-ricreativi/
published: true
tags:
  - aggiustamento
  - Android
  - AndroidStudio
  - animazioni
  - app
  - applicazione
  - applicazioni
  - browser
  - build
  - casino
  - codice
  - compilare
  - demo
  - display
  - dispositivo
  - file
  - finestra
  - funziona
  - Goduria
  - HTML
  - Huawei
  - incubo
  - input
  - Internet
  - KDEConnect
  - LCD
  - magicamente
  - mouse
  - OpenSource
  - particolare
  - pazienza
  - piattaforma
  - popup
  - programma
  - riadattare
  - schermo
  - schifezza
  - smartphone
  - sorgenti
  - superfluo
  - telefono
  - tocchi
  - tocco
  - touchpad
  - UseCase
  - video
  - web
  - WebView
categories:
  - Senza categoria
title: >
date: 2024-01-17 22:25:48
canonical_url:   https://octospacc.altervista.org/2024/01/17/overlay-webview-su-android-a-scopi-ricreativi/
---
<!-- wp:paragraph -->
<p>#Android è letteralmente un #incubo appena tenti di fare qualcosa di un attimo #particolare 😭️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Ricordate la mia <a href="/microblog-mirror/2024/01/04/niente-touchpad">idea di riciclare il vecchio #Huawei come #touchpad</a>? Alla fine, #KDEConnect in questo modo funziona molto bene, ma mi secca che sia totalmente vuoto se c'è un #display #LCD da sfruttare, e vorrei approfittare per usare questo #smartphone per mostrare #animazioni carine, magari un orologio, ecc... E, per maggiore #flessibilità, vorrei semplicemente avere una pagina #web sullo #schermo. Però, ovviamente, nel frattempo l'area di #tocco del #mouse deve poter ricevere i miei input. E quindi? 😶️</p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Ho provato in una decina di modi ad aggiungere un <code>WebView</code> al layout dell'app, con caratteristiche e mezzi diversi, ma non c'è verso di far si che questo sia visibile a tutto schermo, ma allo stesso tempo non si prenda lui tutti gli input... ho provato non so quanti consigli dai forum, tempo buttato. 🙄️</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li>Ho tentato facendo ereditare il componente <code>KeyListenerView</code> dalla classe <code>WebView</code> anziché <code>View</code>, ma questo ne rompe il funzionamento e gli #input se li prende tutti la pagina web aperta. 🥲️</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li>Ho cercato su Neo Store (F-Droid + repo terze) e Google Play #applicazioni che facessero da #browser web fluttuante, ma nessuna di quelle che ho provato permetteva di rendere il #popup "trasparente" ai #tocchi. 😮‍💨️</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li>Ho cercato su #Internet per esempi di #codice di app fluttuanti, ma tutti sono un #casino da implementare ora così in una app nuova da zero (o meglio, non ci sono tutorial buonissimi), e ho buttato tempo e speranze appresso a un sacco di app esempio già pronte — o applicazioni #OpenSource con altri scopi che potessi #riadattare — che non ne vogliono sapere di compilarsi. 😤️</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:paragraph -->
<p>Ovviamente, se gli strumenti funzionassero davvero, e fosse solo la #piattaforma in sé ad essere antipatica, non avrei perso tutto questo tempo. Invece no, appresso ad #AndroidStudio, Gradle, Java, le dipendenze di #build troppo vecchie perché la app è abbandonata, e se provi a sistemare fai solo danni, e quando la #app finalmente si compila devi aspettare un minuto buono ogni volta che fai un cambiamento e vuoi inviarlo al #dispositivo o emulatore... è una #schifezza. 😩️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>...Tuttavia, la #pazienza è la #virtù di chi sa bramare il #superfluo in modo realistico, e dunque, alla fine, ho trovato una #demo che riuscissi a #compilare (<a href="https://github.com/mjlong123123/TestFloaWindow">https://github.com/mjlong123123/TestFloaWindow</a>), infilarci dentro una #WebView, e vedere il tutto #magicamente funzionare come volevo. Che assoluta #goduria, guardate il #video sotto. Ora farò giusto qualche #aggiustamento minimo necessario al mio #UseCase, e poi avrò finito. Non farò una vera e propria #applicazione, non ho voglia, ma comunque caricherò i miei #sorgenti modificati (e l'APK pronto che legge un file #HTML da archiviazione locale) qui: <a href="https://gitlab.com/octtspacc/OcttBitsOfFun/-/tree/main/AndroidFloatingWebView">https://gitlab.com/octtspacc/OcttBitsOfFun/-/tree/main/AndroidFloatingWebView</a> (i #file appariranno quando avrò fatto). 💣️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:video {"id":1141} -->
<figure class="wp-block-video"><video controls muted src="{{site.cdnurl}}/assets/uploads/2024/01/VID_2024-01-17-21-54-35-100.mp4"></video><figcaption class="wp-element-caption">Il #programma ora visualizza la pagina di errore di Android, perché il file che dovrà caricare non esiste ancora, e le dimensioni della #finestra dovranno essere sistemate. Quello che è importante è che in sé #funziona. 😁️</figcaption></figure>
<!-- /wp:video -->