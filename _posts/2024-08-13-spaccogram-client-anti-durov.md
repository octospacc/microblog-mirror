---
ID: 8501
post_title: Spaccogram client anti-durov
post_name: spaccogram-client-anti-durov
author: minioctt
post_date: 2024-08-13 11:34:38
layout: post
link: >
  https://octospacc.altervista.org/2024/08/13/spaccogram-client-anti-durov/
published: true
tags:
  - client
  - fork
  - mod
  - Premium
  - stealth
  - Telegram
  - TelegramWeb
  - web
  - webapp
  - WebK
categories:
  - Senza categoria
title: Spaccogram client anti-durov
date: 2024-08-13 11:34:38
canonical_url:   https://octospacc.altervista.org/2024/08/13/spaccogram-client-anti-durov/
---
<!-- wp:paragraph -->
<p>Due settimane fa o boh ho pensato che servirebbe un fork di Telegram Web che sistema alcuni problemi... il piccolo problema è appunto che non esiste (almeno, niente di mantenuto). Boh, ieri pomeriggio mi è risalito così un astio verso Durov, perché Telegram WebK continuava a resettarmi le impostazioni grafiche, e allora ho preso il codice e ho iniziato a manomettere... ecco a voi <strong><a href="https://tweb.octt.eu.org">Spaccogram</a></strong>, insomma!!! ❤️‍🔥</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Ho preso comunque il source di #WebK, perché WebA nonostante abbia più feature ha un problema decisamente grave, cioè che la sincronizzazione dei messaggi non solo è più lenta, ma a volte su mobile decide di non funzionare più... aspetti anche 5 minuti, e non ha finito di sincronizzare, ahi. Ho anche l'impressione che il JavaScript compilato sia più pesante in WebA, ma almeno per quanto mi ricordo il codice è più pulito... mentre in WebK è un marasma di parti morte commentate via, e singoli file che arrivano a centinaia di KB; non siamo ai livelli di #Telegram per Android, ma va comunque malissimo. Almeno, sotto una cosa fanno schifo entrambi: conservano il codice compilato nel branch di sviluppo di Git (e a leggere questo già tutti gli altri sviluppatori avranno storto lo sguardo). 🤭</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Possibile che con tutti i soldi che si fottono col premium e le pubblicità, quelli di Telegram non possono pagare degli sviluppatori competenti per mantenere un #client #Web fatto bene? Perché al momento i due ufficiali sono tenuti malissimo, uno peggio dell'altro, da due scappati di casa che non hanno manco alcuna colpa, perché lo fanno nel loro tempo libero (e per questo non voglio smerdare loro, ma se il codice fa oggettivamente schifo va detto). E quindi, insomma, anche per questo, dopo aver cambiato alcuni default della app nel source, la mia attenzione è passata subito al forzare il client di credere che Telegram #Premium sia attivo. 😈</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:gallery {"linkTo":"none"} -->
<figure class="wp-block-gallery has-nested-images columns-default is-cropped"><!-- wp:image {"id":8512,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="{{site.cdnurl}}/assets/uploads/2024/08/screenshot_2024-08-13-00-53-52-528_org584415660367351027-665x1440.jpg" alt="Schermata che dice che l'utente ha il premium." class="wp-image-8512"/></figure>
<!-- /wp:image -->

<!-- wp:image {"id":8513,"linkDestination":"none"} -->
<figure class="wp-block-image"><img src="{{site.cdnurl}}/assets/uploads/2024/08/screenshot_2024-08-13-00-53-40-843_org6489344547520392870-665x1440.jpg" alt="Schermata del menu laterale con nuove opzioni come la Stealth Mode e il link al canale Spaccogram News &amp; Info." class="wp-image-8513"/></figure>
<!-- /wp:image --><figcaption class="blocks-gallery-caption wp-element-caption">Avrei desiderato che magicamente sarebbero state sbloccate tutte le funzioni a pagamento, ma ovviamente sapevo già che il server fa i suoi controlli... PERÒOO... la traduzione dei messaggi in particolare funziona (bene così, perché un tempo era gratis, a dire il vero, come testimonia <a href="https://core.telegram.org/api/translation">questa pagina di documentazione mal-tenuta</a>), e persino quella live di tutti i messaggi (che non è mai stata gratis)! Nel fare questo ho anche rimosso la restrizione di navigazione nelle chat bandite per violazione di copyright, perché ho scoperto che il server leakka i messaggi bloccati usando la traduzione, quindi... funny, sono leggibili! 🥳</figcaption></figure>
<!-- /wp:gallery -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Ci sono poi alcune cose in più, come... copia e download da gruppi e canali impostati come protetti (che no, non è una violazione della privacy, dato che sia da Web che da Desktop si può comunque fare screenshot di tutto)... e una modalità #stealth sperimentale, che permette di scorrere le chat senza mandare lo stato di lettura, persino se si scrivono messaggi. Userei con attenzione quest'ultima cosa eh, il ban è dietro l'angolo, anche se in teoria questo #fork è anti-ban (usa API id+secret ufficiali, che giustamente stavano belli dentro i sorgenti, quindi Telegram non può sapere che state usando un client umma umma), Telegram può comunque vedere se scrivete di continuo messaggi senza leggere i precedenti, e comunque non nasconde (ancora) lo stato online... quindi spegnetela quando dovete scrivere. 😳</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Il client come vedete è già utilizzabile da <a href="https://tweb.octt.eu.org"><strong>tweb.octt.eu.org</strong></a>, ma ancora non ho aggiornato il 100% di stringhe e icone, ma sarà fatto... il nome della PWA installata è cambiato, quindi almeno non si confonde del tutto con quella ufficiale. Per non attirare troppo l'attenzione, per ora non ho una repo pubblica per il codice modificato (anche perché penso nessuno mi aiuterà a tenerlo al passo con gli aggiornamenti dell'upstream, dovrò fare tutto io...), ma secondo GPLv3 (che io rispetto, a differenza di certi altri modder...) potete scaricare una tarball, e le mie modifiche sono segnate con commenti <code>// octt:</code> nel codice: <a href="https://tweb.octt.eu.org/webk.tar.xz">.../webk.tar.xz</a>. E... guardatevi anche il canale che ho creato per il fork, lì scriverò consigli e parlerò dei prossimi aggiornamenti, idk: <a href="https://t.me/+ujaob63Vy705Mzgx">t.me/+ujaob63Vy705Mzgx</a>.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>PS, fatto buffo: ieri sera, a un certo punto, nessuno più riusciva a scrivere nei miei gruppi... qualcuno ha avanzato teorie del complotto sul fatto che mi stessero per ri-bannare, perché stavo facendo cose cattive col client... per fortuna è stato solo un problema server temporaneo; <a href="https://old.reddit.com/r/Telegram/comments/1eqgvh2/cant_send_messages_to_channels">ce ne sono apparentemente tanti in questi giorni</a>. 😰</p>
<!-- /wp:paragraph -->