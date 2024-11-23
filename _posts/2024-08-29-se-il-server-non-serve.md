---
ID: 8855
post_title: se il server non serve
post_name: se-il-server-non-serve
author: minioctt
post_date: 2024-08-29 09:52:23
layout: post
link: >
  https://octospacc.altervista.org/2024/08/29/se-il-server-non-serve/
published: true
tags:
  - downtime
  - fstab
  - homeserver
  - Linux
  - server
categories:
  - Senza categoria
title: se il server non serve
date: 2024-08-29 09:52:23
canonical_url:   https://octospacc.altervista.org/2024/08/29/se-il-server-non-serve/
---
<!-- wp:paragraph -->
<p>Linuc ha colpito ancora una volta. O forse è invece colpa di systemd? O, addirittura, la colpa è della mentalità UNIX implementata tecnicamente alla lettera? Boh, io certamente colpisco ancora una volta scrivendo questo il giorno dopo... ma questo è oltre il punto. 🤥</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Praticamente, l'altro ieri sera (mentre non ero a casa) il mio server ha smesso di rispondere a qualsiasi richiesta... e palle, ma ho pensato "non fa nulla, sarà caduta la linea Internet di casa, odio Vodafone, si sistemerà domani mattina". Ovviamente... non si è sistemato, ops. Il pomeriggio sono tornata, e ho subito resettato l'alimentazione del server per riavviarlo, e... non si è sistemato neanche così, mentre però la linea Internet non aveva alcun malfunzionamento. Wtf? 😭</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Ci penso un attimo, e mi viene in mente che io avevo staccato temporaneamente un disco USB giorni fa, perché devo sistemare delle cose noiose... e giustamente non l'ho tolto dall'<code>fstab</code>, perché chi minchia ci pensa... e, mi torna in mente che all'avvio del sistema, di default, una partizione messa così (che è il modo "corretto" per montarla a livello di sistema) fa fallire tutto il boot se fallisce anche solo il suo mount. Ci sarà stato un calo di tensione e il sistema si sarà riavviato. ...Linuc. Per il futuro: <a href="https://unix.stackexchange.com/questions/326791/cannot-boot-because-missing-external-disk">per gestire i dischi nel modo corretto (l'ho dovuto cercare)</a> dicono che si deve impostare la flag <code>nofail</code> all'<code>fstab</code>: <code>UUID=[...] /bla/bla/bla ext4 defaults,</code><code><strong>nofail</strong></code><code> 0 0</code>. 😖</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Quelli di UNIX son dei pazzoidi. Per qualche motivo, se qualcosa va storto nell'avvio del sistema, e un disco aggiuntivo (non di boot eh) salta, allora bisogna fermare tutto, eccetto quando diversamente specificato... Ma poi, allo stesso tempo, quando nella shell UNIX (questo si applica a <code>sh</code>, <code>bash</code>, e credo tutto il resto) un comando in uno script fallisce, allora (di default) l'esecuzione continua in uno stato pericoloso e inconsistente (quando invece, in qualsiasi linguaggio di scripting vero, se capita un errore non gestito, di default si ferma tutto). 😴</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Ad ogni modo, da quando ho il #server nuovo, appena un anno, onestamente downtime brutti così non ne ho mai avuti... a differenza del Raspino, che si era mezzo fuso, l'hardware di questo è bono. Resta l'inevitabile problema annuale che si verifica quando è il software a fare il cagaton, ed è in quel momento che si percepisce il danno della centralizzazione!!! C'è tipo una quindicina buona di servizi che uso lì sopra, di cui una buona parte usano anche altri, quindi se crolla qualcosa ci attacchiamo. Meno male che invece il sitoctt è statico, quindi me lo hostano GitLab e GitHub, e il Frittocto Misto è WordPress, quindi su Altervista sta...</p>
<!-- /wp:paragraph -->