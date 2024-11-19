---
ID: 9227
post_title: framionavigator per le fotonze
post_name: framionavigator-per-le-fotonze
author: minioctt
post_date: 2024-09-14 02:38:06
layout: post
link: >
  https://octospacc.altervista.org/2024/09/14/framionavigator-per-le-fotonze/
published: true
tags:
  - browser
  - Canvas
  - FramesBrowser
  - iFrame
  - JavaScript
  - Mannaggia
  - screenshot
  - web
  - webapp
categories:
  - Senza categoria
title: framionavigator per le fotonze
date: 2024-09-14 02:38:06
canonical_url:   https://octospacc.altervista.org/2024/09/14/framionavigator-per-le-fotonze/
---
<!-- wp:paragraph -->
<p>Qualcuno avrebbe sperato niente post stavolta? E invece no; semplicemente, c'era di mezzo la programmatio. Mi trovo così ancora una volta (altre volte in cui è successo, è successo, ma non ho scritto qui...) ad aggiornare #FramesBrowser, #webapp che manco a farlo apposta tocco precisamente ogni 6 mesi. Lavoro raro!!! 🤫️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Stavolta il problema era: devo catturare screenshot di certe pagine #web, per inviarli a parti (tradotto: <a href="/microblog-mirror/2024/09/11/pixelfoto-io-non-vodo/">i post che pubblico su Pixelfed</a>, per fare lo spam bene, coff coff), ma... Se non le facessi ogni volta precise (voglio la larghezza uguale al letterale pixel) starei male dentro; peccato che, per fare ciò, devo impazzire col ridimensionare la finestra del browser <em>precisimamentissimamente</em>, su desktop. 🙄️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Risolverei facendo direttamente da mobile? Forse si, dato che lo schermo del telefono non si allarga o restringe da un giorno all'altro, però è palloso... e non ci ho comunque pensato prima di scriverlo adesso. Quindi, è molto meglio spendere delle ore per aggiungere al mio programma il ridimensionamento (a occhio e a numero) degli iFrame mostrati, e conseguentemente il tastino per fare #screenshot degli stessi. 😩️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Ovviamente, nella sua estrema saggezza, il Web non offre API per fare schermate di parti del DOM, ma, per fortuna conoscevo una libreria chiamata <a href="https://memos.octt.eu.org/m/FMqK2VcQWoDz9atLL2a2az">html2canvas</a>, che usa della palese magia nera per aggirare questa mancanza. È figa, fa non so come il rendering "a mano" di tutte le cose, e le piazza appunto in un elemento Canvas, che invece i #browser permettono direttamente di trasformare in immagine raster. 🤓️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Nella mia estrema fortuna però, questa libreria non gestisce autonomamente gli #iFrame, quindi via ad implementare codice per iniettarla ed azionaria! Lo farei proprio tutti i giorni!!! 🥰️ (Estremamente divertente soprattutto la parte dove non posso iniettare codice arbitrario dentro la pagina caricata da un dominio, quindi la app si deve a mano scaricare l'HTML per patcharlo e caricarlo come data URL ed è un casino che non funzionerà mai col 100% dei siti mamma mia aiuto.)</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Altre magagne? Avoja! Innanzitutto, o gli faccio in qualche modo caricare tutte le immagini della pagina con CORS (che vuol dire, in qualche modo, forzare l'uso del proxy in un punto di codice non mio), o altrimenti il #Canvas risulta <em>tainted</em>, e non può essere scaricato in automatico con <code>.toDataURL()</code>... ma non è la fine del mondo, perché posso banalmente piazzarlo a schermo, e a quel punto c'è sempre il menu contestuale del browser per salvare un PNG. E... grande cacca: con questa dipendenza da 200KB, non solo tutta la app è più lenta a caricare, ma anche le pagine nei frame (per via di tutta la codifica URL che #mannaggia). 🦧️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":9229,"sizeSlug":"full","linkDestination":"none"} -->
<figure class="wp-block-image size-full"><img src="{{site.cdnurl}}/assets/uploads/2024/09/Screenshot-from-2024-09-14-02-08-29.png" alt="Schermata di un frame che mostra example.com ridimensionato nella app, e l'immagine screenshot scaricata aperta fuori dalla app." class="wp-image-9229"/><figcaption class="wp-element-caption">Bene o male, però, già funziona; posso usufruire! Ne ho approfittato anche per aggiungere un tasto in più, per richiamare il dialogo di stampa del browser (per PDF e carta), che tanto ormai l'inject #JavaScript è fatto... Dai, che se non sapevate io avessi anche questo tra la mia immondizia, sarebbe giunta proprio l'ora di provarlo, con questi aggiornamenti, su su: <a href="https://hub.octt.eu.org/FramesBrowser/">https://hub.octt.eu.org/FramesBrowser/</a>.</figcaption></figure>
<!-- /wp:image -->