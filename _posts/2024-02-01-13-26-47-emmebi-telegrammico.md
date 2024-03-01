---
ID: 1431
post_title: emmebi telegrammico
post_name: emmebi-telegrammico
author: minioctt
post_date: 2024-02-01 13:26:47
layout: post
link: >
  https://octospacc.altervista.org/2024/02/01/emmebi-telegrammico/
published: true
tags:
  - app
  - browser
  - canale
  - chat
  - conversazioni
  - dati
  - formato
  - HTML
  - JSON
  - MBViewer
  - messaggi
  - pazzia
  - problema
  - programma
  - rogne
  - scocciatura
  - scrivere
  - spacc
  - sperimentali
  - Telegram
  - video
categories:
  - Senza categoria
title: emmebi telegrammico
date: emmebi telegrammico
canonical_url:   https://octospacc.altervista.org/2024/02/01/emmebi-telegrammico/
---
<!-- wp:paragraph -->
<p>Tra i giorni passati fino a ieri, ho fatto delle robine #sperimentali su #MBViewer, era questo che dovevo #scrivere... La prima è stata, più che altro perché mi serviva effettivamente da tempo una piccola #app in grado di fare questa cosa, implementare la lettura del formato di esportazione chat in #JSON di #Telegram. Infatti, le #conversazioni da lì possono essere esportate anche in JSON per usi di manipolazione dati futuri, oltre che HTML per consultazione immediata; però, appunto non c'è ufficialmente un modo per leggere una #chat esportata in quel #formato macchina, e la conversione in HTML statico dopo sarebbe facile ma bruttina: avere un lettore con un'interfaccia a bolle classica so già che può tornarmi utile, perché ho qualche dump non-HTML da parte. 📦️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>A parte la #scocciatura per interpretare la struttura #dati del testo di Telegram e trasporla in #HTML corretto, non è stato complesso... eccetto che c'è un #problema. Il sistema funziona, ma il #programma tende a soffocare male con dump di troppi #messaggi. Dopo poche migliaia, già subentrano #rogne, con l'uso di RAM della scheda del #browser che arriva a più di 1 GB, e il caricamento, se riesce a finire senza che tutto crashi, è veramente lentissimo. Potrei in teoria risolvere la cosa, ma è veramente una #pazzia, dovrei portare ancora di più la codebase all'assurdo per fargli caricare elementi DOM a mano a mano da una struttura che di base è comunque un singolo file tutto in memoria, perché così è il formato... per ora lascio tutto così, purtroppo nessuno mi paga, quindi nessuno godrà al 100%. 😈️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:gallery {"linkTo":"none"} -->
<figure class="wp-block-gallery has-nested-images columns-default is-cropped"><!-- wp:image {"id":1429,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="{{site.cdnurl}}/assets/uploads/2024/02/Screenshot-from-2024-01-24-21-59-14-960x520.png" alt="" class="wp-image-1429"/></figure>
<!-- /wp:image -->

<!-- wp:image {"id":1428,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="{{site.cdnurl}}/assets/uploads/2024/02/Screenshot-from-2024-01-24-23-02-36-960x254.png" alt="" class="wp-image-1428"/></figure>
<!-- /wp:image -->

<!-- wp:image {"id":1427,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="{{site.cdnurl}}/assets/uploads/2024/02/Screenshot-from-2024-01-24-23-04-49-960x524.png" alt="" class="wp-image-1427"/></figure>
<!-- /wp:image --></figure>
<!-- /wp:gallery -->

<!-- wp:video {"id":1430} -->
<figure class="wp-block-video"><video controls muted src="{{site.cdnurl}}/assets/uploads/2024/02/simplescreenrecorder-2024-01-25_00.11.13.mp4"></video><figcaption class="wp-element-caption">Comunque, su Firefox anche con file enormi non muore completamente, ma su Chromium dopo quel limite ho avuto solo #spacc. Qui nel #video scrollo l'export completo del vecchio #canale Telegram nella volpe, e sorprendentemente è abbastanza fluido... ma nel momento riuscivo a sentire in sottofondo il rumore del mio hard disk che swappava memoria. 💽️</figcaption></figure>
<!-- /wp:video -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Giusto se volete provare, ho caricato una versione ridimensionata dell'esportazione del canale, con appena un mese e mezzo di messaggi: <a href="https://hub.octt.eu.org/MBViewer/#/dataUrl=https://hlb0.octt.eu.org/Misc/ChatExport_2023-12-10_OctoVoLTE_UwjPwbToBapltoHa/result_2311.json|platform=telegram.export">https://hub.octt.eu.org/MBViewer/#/dataUrl=https://hlb0.octt.eu.org/Misc/ChatExport_2023-12-10_OctoVoLTE_UwjPwbToBapltoHa/result_2311.json|platform=telegram.export</a>. Se avete un vostro dump su un vostro server <em>CORS-enabled</em>, o alternativamente ospitate una copia della mia app sullo stesso (anche <code>localhost</code>), potete ovviamente usarlo... ma quello che dovrei fare è aggiungere un bottone per caricare un file dall'archiviazione del computer. 🔘️</p>
<!-- /wp:paragraph -->