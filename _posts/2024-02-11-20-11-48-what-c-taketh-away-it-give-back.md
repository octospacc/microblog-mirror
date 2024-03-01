---
ID: 1645
post_title: What C taketh away, it give back?!?!
post_name: what-c-taketh-away-it-give-back
author: minioctt
post_date: 2024-02-11 20:11:48
layout: post
link: >
  https://octospacc.altervista.org/2024/02/11/what-c-taketh-away-it-give-back/
published: true
tags:
  - applicazione
  - automatico
  - bug
  - codice
  - console
  - conversione
  - foto
  - homebrew
  - HorizonOS
  - HTTP
  - HTTPS
  - immagini
  - JPEG
  - media
  - monnezza
  - Nintendo3DS
  - pazienza
  - problema
  - problemi
  - programma
  - rete
  - screenshot
  - server
  - ServerSide
categories:
  - Senza categoria
title: What C taketh away, it give back?!?!
date: 2024-02-11 20:11:48
canonical_url:   https://octospacc.altervista.org/2024/02/11/what-c-taketh-away-it-give-back/
---
<!-- wp:paragraph -->
<p>[sc name=quote-embed-post]2024/02/10/cazate-per-il-c/[/sc]</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Dopo aver perso altre incalcolabili quantità di tempo oggi, alla fine, finalmente ho finito quel #programma malefico... circa, perché ha un #problema di cui ora non ho proprio manco la voglia di venire a capo: quando prova a convertire #foto che (a quanto pare) sono corrotte, manda in crash tutto il sistema. #Pazienza, questo ed altri brutti dettagli li lascio ai posteri. 😇️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>La scelta un po' bizantina di usare un #server per l'effettiva #conversione delle #immagini si è rivelata vincente (anche perché davvero ero a corto di soluzioni...), e sorprendentemente non è nemmeno troppo lento, impiega in media 1 secondo per file (nonostante il WiFi sulla #console faccia pena, ma al netto dell'avere il server in LAN). Creare lo script PHP è stato facilissimo, ovviamente, non è mica quello che mi ha fatto perdere il pomeriggio sano... è stato il fatto che c'è un #bug, da qualche parte in quella #monnezza di <code>httpc</code> (il servizio per le cose #HTTP) dentro <code>libctru</code> (la libreria per gli #homebrew del 3DS), se non direttamente nello stack di #rete di #HorizonOS, che faceva fallire il trasferimento di dati via #HTTPS verso o da il mio server, nonostante la connessione in sé avvenisse, e con altri server non ci fossero #problemi di alcun tipo. Io ovviamente ho provato tremila cose, e solo alla fine ho tentato di collegarmi senza cifratura, e ho visto tutto funzionare. 😤️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Ora quindi posso catturare #screenshot in qualunque gioco usando il menù Rosalina, poi avviare la mia #applicazione per avere tutto quanto convertito in #JPEG e messo nell'album di sistema in #automatico (non devo premere nulla), quindi tutto visibile dal selettore #media del browser web... e a quel punto posso pubblicare qui sopra direttamente da lì, per qualsiasi titolo. Forse però dovrei espandere il codice #ServerSide, facendogli scrivere le date delle foto nei parametri EXIF, altrimenti il #Nintendo3DS vede tutto come datato 01/01/1900... nulla di grave eh, ma un po' scomodo per navigare nella galleria. 💀️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":1643,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="{{site.cdnurl}}/assets/uploads/2024/02/img_2024-02-11-19-14-55-3595357306191629723491-960x720.jpg" alt="Il 3DS che esegue il programma, con lo schermo inferiore che lista i file convertiti." class="wp-image-1643"/><figcaption class="wp-element-caption">Tutto il #codice, e il binario 3DSX compilato, è su <a href="https://gitlab.com/octtspacc/OcttBitsOfFun/-/tree/main/LumaBmp2NinJpg">https://gitlab.com/octtspacc/OcttBitsOfFun/-/tree/main/LumaBmp2NinJpg</a>.</figcaption></figure>
<!-- /wp:image -->