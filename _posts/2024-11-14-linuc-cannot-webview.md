---
ID: 11309
post_title: linuc cannot webview!!!
post_name: linuc-cannot-webview
author: minioctt
post_date: 2024-11-14 23:00:41
layout: post
link: >
  https://octospacc.altervista.org/2024/11/14/linuc-cannot-webview/
published: true
tags:
  - desktop
  - librerie
  - Linux
  - web
  - WebKit2GTK
  - WebView
categories:
  - Senza categoria
title: linuc cannot webview!!!
date: 2024-11-14 23:00:41
canonical_url:   https://octospacc.altervista.org/2024/11/14/linuc-cannot-webview/
---
<!-- wp:paragraph -->
<p>Mi servirebbe una specie di wrapper per alcune app e servizi #web che già ci sono (maggior parte che hosto io), ma ai quali voglio accesso più organizzato (e magari più ottimizzato per l'uso a tastiera) delle tremila schede fissate su Firefox desktop, che ormai sono talmente tante da coprire tutta la barra... 😱️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Purtroppo, ho scoperto di essere così tanto al mio limite di star rivalutando pure Android!!! Lì, nonostante le rogne, è tanto facile fare una app nativa che mostra una banale #webview e funziona e basta... Ma su Linux #desktop....AIUTO!!!!! È da <strong>letteralmente 3 o 4 giorni</strong> che sto girando mia testa attorno a 'sta storia, ma nulla! 😖️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Il problema è che voglio un eseguibile 100% statico e autocontenuto, di cui ho la certezza possa fungere su <em>qualunque</em> sistema abbia il kernel #Linux e un server X11/Wayland, senza pensare ad altro; come un EXE su Windows, o qualunque cavolo di APK su Android... voglio che la app funzioni ovunque e per sempre senza ricompilare, e senza dipendere dalla distro. 🙄️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Ho provato quasi tutte le opzioni webview consigliate su <a href="https://github.com/sudhakar3697/awesome-electron-alternatives">https://github.com/sudhakar3697/<em>awesome-electron-alternatives</em></a>, ed è così tragico... una buona manciata sono esplicitamente abbandonate, altre non sono mantenute e quindi comunque non installano/compilano, ma comunque tutte si basano solo su: CEF (Chromium Embedded), QtWebView (che è CEF), Electron (che è CEF), e WebKit2GTK. 👯️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Questa roba dell'eseguibile autocontenuto (con libc statica) l'avevo fatta <a href="/microblog-mirror/tag/framenx/">per una app PyGame (FrameNX)</a>, ma pare sia letteralmente impossibile far funzionare qualsiasi di questi motori web in questo modo qua. Il problema è che hanno così tante dipendenze, così fragili, che è un attimo che fai questa pacchettizzazione forzata statica strana, e subito non girano più. 🚱️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Ho provato sia <a href="https://github.com/cztomczak/cefpython">cefpython3</a>, (che comunque è abbandonato alla versione 66 di Chromium, preistoria), che <a href="https://github.com/r0x0r/pywebview">pywebview</a> (che si appoggia a Qt o GTK), ma PyInstaller li spacca; manco il tempo del passaggio con <code>staticx</code>. Ho provato poi a compilare un programma C++ per QtWebView, ma staticx non gestisce un sacco di file di runtime di Qt che non sono librerie native. E usando direttamente la roba CEF, senza Qt di mezzo, fa comunque errori irrisolvibili. <strong>È la fin</strong>. 😩️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Credevo quasi di aver fatto grazie a WebKit2GTK (ad esempio tramite "<a href="https://github.com/webview/webview"><em>webview</em></a>"), con una procedura hackerina (copiando <code>libwebkit2gtk-4.0.so.37</code> nella cartella di lavoro da <code>/lib/x86_64-linux-gnu/</code>, e con un hex editor sostituendo poi le occorrenze di questo percorso con <code>./</code> al suo interno, poi copiando dalla stessa cartella i file <code>WebKitNetworkProcess</code> e <code>WebKitWebProcess</code>, e applicando <code>staticx</code> sia a questi due che al mio programma C dopo aver settato <code>LD_LIBRARY_PATH=.</code>)... però il programma, su un altro sistema, apre solo una finestra bianca e dice "<code>Could not create default EGL display: EGL_BAD_PARAMETER. Aborting…</code>" 😭️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p><strong>Un disastro!!!</strong> Forse si può buildare #WebKit2GTK da sorgente per disattivare proprio tutta la roba di OpenGL che da errore, visto che non freca, ma mancano un sacco di dipendenze, non compila un cazzo... Mi sa che faccio la cringiata, e pacchettizzo un intero file system + binario chroot/proot in un solo eseguibile, alla faccia delle #librerie... ☠️</p>
<!-- /wp:paragraph -->