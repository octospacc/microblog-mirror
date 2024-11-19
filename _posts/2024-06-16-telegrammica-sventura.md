---
ID: 6605
post_title: telegrammica sventura!!
post_name: telegrammica-sventura
author: minioctt
post_date: 2024-06-16 11:21:39
layout: post
link: >
  https://octospacc.altervista.org/2024/06/16/telegrammica-sventura/
published: true
tags:
  - canale
  - privacy
  - protezione
  - stalking
  - Telegram
categories:
  - Senza categoria
title: telegrammica sventura!!
date: 2024-06-16 11:21:39
canonical_url:   https://octospacc.altervista.org/2024/06/16/telegrammica-sventura/
---
<!-- wp:paragraph -->
<p>L'ho circa fatto capire l'altro pomeriggio, solo lì dentro e non qui da Altervista, ma... ci sono di nuovo problemi con il canale Telegram. Non so se è furbissimo dirlo così in pubblico da Altervista appunto, ma vabbé, non vado nel dettaglio e mi limito a dire che è tornato un problema di utenti molesti. Pensavo di cambiare totalmente nome, descrizione, e foto del canale, così da renderlo non più ritrovabile da chi lo cerca diciamo apposta ma non è dentro, ma ugualmente disponibile ad utenti sani nuovi che lo possono trovare in giro... Però poi ci ho riflettuto, e a causa dei messaggi inoltrati questa cosa è inutile: qualcuno potrebbe semplicemente usare quelli per tornare sempre al canale. Quindi, l'unica sarebbe di ricrearlo, cosa che è ovviamente un problema, tutti gli utenti dovrebbero spostarsi a mano lì.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Inoltre, volendo tenere il canale linkato sul profilo utente (per il fatto di renderlo individuabile a nuove persone), avrei dovuto anche applicare la stessa pulizia lì sopra (cambiare solo il nome in realtà, gli altri campi posso rimuoverli o nasconderli), ma dovrei cancellare i miei messaggi da letteralmente <em>tutti</em> i gruppi pubblici, perché ci sono i bot che indicizzano gli utenti... E comunque non basterebbe, perché quei bot possano aggiornare le info base sui profili anche senza avere gruppi in comune, quindi, datogli in pasto l'id del mio utente, se quelli restituiscono il display name... magari non sono direttamente ricercabile se non imposto alcun username, però 'sto proprio a filo. Ma poi ancora: se i bad actors hanno già aperto una volta il mio profilo da un loro account, lo possono sempre riaprire tramite id (in caso contrario no, Telegram in tal caso protegge), e se me lo hanno aggiunto ai contatti allora è tuttto inutile; potrei solo resettare l'account.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Purtroppo si fanno troppi pipponi a Telegram facendolo passare per cosa non è... se senti a chi propaganda, è il servizio più privato in giro, gli utenti sono protetti, problemi non ci sono... poi però appena entri nella realtà, viene tutto a crollare, in modi che sulle altre piattaforme social non succedono! Per fortuna, mentre le funzionalità di sicurezza di Telegram sono molto limitate, in generale <em>le potenzialità del computer sono infinite</em>, quindi questa è proprio l'occasione comandata dal fato per riprendere <a href="/microblog-mirror/2024/01/23/i-robot-si-ribellano-e-i-canali-chiudono/">il mio discorso sulla protezione dei canali</a>. In questi giorni allora (chissà quanti, perché mi sto già distraendo con altre funzioni!) mi metto a implementare il seguente sistema, un po' diverso, direttamente nel mio <a href="https://t.me/WinDogBot">@WinDogBot</a>, e vediamo se avrò pace:</p>
<!-- /wp:paragraph -->

<!-- wp:list {"ordered":true} -->
<ol><!-- wp:list-item -->
<li>Premessa: in questo caso voglio più che altro assicurare il gruppo commenti, perché i post del canale sono già sul clear web e quindi conta poco chi può vederli o no da Telegram, ma i commenti innanzitutto non c'è modo di limitarli a specifiche persone senza costringerle ad entrare nel gruppo, e poi non si può nascondere la vecchia cronologia a cani e porci. 😑</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li>Setup delle chat: si continua ad usare il solito unico canale, ma si stacca il gruppo commenti rendendolo isolato, e si collega quindi un gruppo proprio nuovo. Il canale è ora già non più sensibile, e si può sia reimpostare come pubblico (per ora infatti l'ho messo privato con approvazione admin), sia magari collegare al proprio profilo. Il gruppo storico si rende accessibile solo tramite link ad approvazione. Il sistema non si ferma qui, però, sennò si finisce con due chat divise (pessima UX). 🚷</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li>Magia del cane: il bot, una volta implementate funzioni decenti di bridging chat (cioè, con supporto anche a modifiche dei messaggi e lo status di risposta), si imposta per inoltrare tutti i messaggi dal canale al gruppo isolato, e dal gruppo commenti al gruppo isolato, ma inoltrando dal gruppo isolato a quello commenti solo le risposte ai messaggi provenienti dal primo. Al netto del visualizzare sempre il bot come scrittore dei messaggi (che però non è per forza un malus, dall'altro verso è una protezione per la privacy), e non pochi dubbi su come implementare le reazioni, la UX praticamente non cambia! 🙏</li>
<!-- /wp:list-item --></ol>
<!-- /wp:list -->