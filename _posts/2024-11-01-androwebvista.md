---
ID: 10887
post_title: androwebvista
post_name: androwebvista
author: minioctt
post_date: 2024-11-01 22:04:11
layout: post
link: >
  https://octospacc.altervista.org/2024/11/01/androwebvista/
published: true
tags:
  - "2048"
  - 4.1.2
  - Android
  - APK
  - demo
  - Gingerbread
  - JellyBean
  - offline
  - PWA
  - web
  - webapp
  - WebView
categories:
  - Senza categoria
title: androwebvista
date: 2024-11-01 22:04:11
canonical_url:   https://octospacc.altervista.org/2024/11/01/androwebvista/
---
<!-- wp:paragraph -->
<p>Oggi, prima che calasse il sole (come se dopo non potessi? non so perché lo sto dicendo così lol), ho fatto un progettino Android Studio da usare come semplice <strong>template per pacchettizzare #webapp in APK</strong>... Che per ora è estremamente banale, e decisamente non finito, ma aver fatto la base con in mente certe cosine è già utile: 🤓️☝️</p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul class="wp-block-list"><!-- wp:list-item -->
<li>Si possono pacchettizzare robe #web in modo da renderle totalmente funzionanti #offline, liberamente distribuibili su vari store, e installabili per sempre contro l'usura del tempo (...eccetto quando Google rompe l'userspace) 🌋️</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:list -->
<ul class="wp-block-list"><!-- wp:list-item -->
<li>È un'ottima soluzione quando un qualcosa che funge da #PWA non può essere usata bene come tale: magari si è su #Android TV, magari si ha da usare Chromium per motivi prestazionali e quindi non si possono usare estensioni per apparare alla mancanza di caching offline di certi siti, o si è su dispositivi di merda dove caricare tutto il browser fa troppo overhead 💣️</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:list -->
<ul class="wp-block-list"><!-- wp:list-item -->
<li>È forse buono per creare in generale app mobile-first dove si vogliono supportare anche dispositivi Android preistorici, lottando contro la ben più sopportabile piattaforma web, anziché gli SDK ufficiali di Android (che, nonostante <a href="/microblog-mirror/2024/10/31/androvecchiaia/">tutto il marcio</a>, ancora fanno targettare API 1), o varie opzioni di terze parti (che rompono proprio le versioni vecchie e non funziona una mazza) 🧱️</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:list -->
<ul class="wp-block-list"><!-- wp:list-item -->
<li>Anche quando una PWA si può usare bene ed offline (che sia perché implementa di suo il caching, o perché si usa <a href="/microblog-mirror/2024/03/28/pwgoduriaaaa/">la mia estensione Firefox apposita</a>), ci possono essere altre complicanze che un pacchetto Android può risolvere (tipo, non occupare memoria interna limitata sui sistemi dove <a href="/microblog-mirror/2024/10/05/memorroid/">gli APK si possono invece installare su scheda SD</a>) 💥️</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:paragraph -->
<p>L'ho già messo <a href="https://gitlab.com/SpaccInc/SpaccDotWeb/-/tree/main/SpaccDotWeb.Android"><strong>sotto l'ombrello di SpaccDotWeb</strong></a>, visto che la monorepo non era già abbastanza grande, però alla fine è una stronzatina per ora. Praticamente quello che già sta in qualunque altro template per app #WebView semplice che si trova in giro, ma il codice è strutturato un po' meglio per permettere la riconfigurazione, <code>AndroidManifest</code> ha già un sacco di proprietà giuste presettate, e così via. 😇️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Come sempre, ho scritto troppo, quindi i dettagli più tecnici li taglio via per un'altra volta, e magari per allora avrò fatto anche qualcosina in più, come pacchettizzare le mie webapp esistenti (che mi richiede di implementare altre cose)... però volevo comunque segnarmi l'idea compiuta qui. Nel frattempo, <strong>goditi popolo la mia piccola #demo!!!</strong> 😳️👌️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:video {"id":10886} -->
<figure class="wp-block-video"><video controls src="{{site.cdnurl}}/assets/uploads/2024/11/VID_20241101_1657310.mp4"></video><figcaption class="wp-element-caption">Per verificare le mia teorie e controllare che il codice fosse halal, ho infatti semplicemente pacchettizzato offline #2048... giochino dell'epoca Android KitKat, ma che come previsto gira su Gingerbread (testato in emulatore) e Jelly Bean (testato sul Lagsung), messo così. Un #APK venuto appena ~250 KB, wow... lo lascio qui: <a href="https://hlb0.octt.eu.org/Drive/Misc/SpaccWebView-2048.apk">https://hlb0.octt.eu.org/Drive/Misc/SpaccWebView-2048.apk</a>! 🤯️</figcaption></figure>
<!-- /wp:video -->