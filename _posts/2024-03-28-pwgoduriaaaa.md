---
ID: 3737
post_title: pwgoduriaaaa
post_name: pwgoduriaaaa
author: minioctt
post_date: 2024-03-28 13:48:42
layout: post
link: >
  https://octospacc.altervista.org/2024/03/28/pwgoduriaaaa/
published: true
tags:
  - addon
  - browser
  - cache
  - casino
  - codice
  - debugging
  - disperazione
  - estensione
  - estensioni
  - Firefox
  - hack
  - Mozilla
  - offline
  - OfflineCaching
  - pazzia
  - problema
  - programmare
  - PWA
  - ServiceWorker
  - webdev
categories:
  - Senza categoria
title: pwgoduriaaaa
date: 2024-03-28 13:48:42
canonical_url:   https://octospacc.altervista.org/2024/03/28/pwgoduriaaaa/
---
<!-- wp:paragraph -->
<p>Sono praticamente 36 ore che non posto e lo so che siete in astinenza, ma avevo <a href="/microblog-mirror/2024/03/26/pwtorturaaaa/"><em>la questione importantissima inderogabile</em> tra le mani</a> di risolvere quel #problema con le #PWA una volta per tutte. E ora, nonostante un'altra frazione di sanità mentale sottrattami dagli spiritelli del silicio, dolori perché sto seduta per ore alla scrivania e tutta storta, e sonno perché ieri sera ho perso un sacco di tempo a debuggare un errore stupidissimo rimanendo sveglia fino alle 2 per poi arrendermi perché stavo veramente morendo, quantomeno ce l'ho fatta... 🤯️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Cercando con estrema #disperazione ieri mattina, mi accorgo di una cosa documentata alla bene e meglio, trovando prima <a href="https://developer.mozilla.org/en-US/docs/Mozilla/Add-ons/WebExtensions/API/webRequest/filterResponseData#permissions">una menzione su MDN</a> ad un permesso <code>webRequestFilterResponse.serviceWorkerScript</code>, che servirebbe a regola per permettere alle #estensioni di intercettare i caricamenti dei Service Worker, e poi <a href="https://bugzilla.mozilla.org/show_bug.cgi?id=1636629">un thread bugzilla (#1636629)</a> che pare abbia portato proprio all'introduzione di questa separazione di permessi. Ho scaricato il #codice dimostrativo per il bug, l'ho un attimo sistemato per tenere conto di questa misura di sicurezza poi introdotta e, certo abbastanza, il coso riusciva a fare quello che io volevo dall'inizio, senza ricorrere a bruttissime e fragilissime #hack (che a questo punto io nemmeno divulgo visto che non ho dovuto implementarle, per non sporcarmi la reputazione come developer, che già è molto bassa visto che prediligo il #webdev). 🔮️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>A questo punto era quasi solo questione di rifiniture, un po' creare il popup per le impostazioni della mia #estensione (che però mi ha richiesto diverse ore di design e implementazione fatti in contemporanea, perché volevo farle bene, non buttarci dentro bottoni a cazzo per il gusto di), e un po' capire come #programmare il worker che gestisce #cache e richieste di rete #offline. Solo che qui ho sclerato perché... inizialmente <a href="https://developer.chrome.com/docs/workbox/caching-strategies-overview/">con il codice preso da Chrome for Developers</a> non andava, e pensavo fosse un problema mio, ma invece sembra proprio colpa loro, le loro demo non vanno proprio in #Firefox (ma non ho testato nemmeno in Chromium)... quindi ho provato <a href="https://developer.mozilla.org/en-US/docs/Web/Progressive_web_apps/Guides/Caching">quello offerto da MDN</a>, ma anche qui nada, solo che ormai stavo crollando e quindi vado a mimir... stamattina vedo meglio e quest'ultima implementazione in effetti scopro che funziona, ma a me non andava perché, nel modo in cui iniettavo il #ServiceWorker trasformandolo da oggetto a stringa, una variabile che referenziavo non era accessibile nel contesto di esecuzione effettivo dello script, e quindi l'accesso alla cache falliva, ma io non me ne sono accorta subito perché già gli strumenti di #debugging del #browser sono mezzi scassati per questi casi speciali, ma io poi avevo pure un <code>try-catch</code> di mezzo che quindi sopprimeva gli errori alzati dall'interprete... la #pazzia. 😫️ 😩️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>C'è un #casino di mezzo con la pubblicazione di #addon per #Mozilla, quindi praticamente ora il mio è in revisione, ma se tutto va bene dovrebbe prossimamente apparire sulla pagina <a href="https://addons.mozilla.org/en-US/firefox/addon/offline-caching/"><strong>https://addons.mozilla.org/en-US/firefox/addon/offline-caching/</strong></a>; <s>in ogni caso, chi volesse usarlo da subito (come me sul telefono in primis) può <a href="https://matrix-client.matrix.org/_matrix/media/v3/download/matrix.org/hikmssPBxjQAIRCVaJAuRYLi">scaricare da qui</a> il file firmato da installare a mano</s>. Edit: un'oretta dopo, l'estensione è approvata! 💖️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":3739,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="{{site.cdnurl}}/assets/uploads/2024/03/img_20240328_1323201462313101815308817-960x1280.jpg" alt="" class="wp-image-3739"/><figcaption class="wp-element-caption">Btw, mi serviva un'icona per l'add-on, perché tenere quella generica mi da fastidio (così come per quando creo app Android), e quindi ecco qui, letteralmente #OfflineCaching scritto a manina con uno stile un po' buffo. Graphic design is my passion, ma non è roba mia, non son proprio capace. Penso comunque sia meglio di niente, quindi l'ho usata... (quella in basso sul foglio, che è stata la seconda; ho fatto prima quella in alto, ma poi non mi è piaciuta) 😬️</figcaption></figure>
<!-- /wp:image -->