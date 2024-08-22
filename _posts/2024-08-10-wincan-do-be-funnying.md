---
ID: 8422
post_title: wincan do be funnying
post_name: wincan-do-be-funnying
author: minioctt
post_date: 2024-08-10 02:32:55
layout: post
link: >
  https://octospacc.altervista.org/2024/08/10/wincan-do-be-funnying/
published: true
tags:
  - bot
  - programmazione
  - WinDog
categories:
  - Senza categoria
title: wincan do be funnying
date: 2024-08-10 02:32:55
canonical_url:   https://octospacc.altervista.org/2024/08/10/wincan-do-be-funnying/
---
<!-- wp:paragraph -->
<p>Oggi dico: <strong>caspita</strong>, perché l'attuale è il postaggiobuco più grosso che io abbia mai creato. Almeno, quello che non scrivo qui in italiano lo scrivo nelle mie repo in millemila (3) linguaggi interpretati. A parte uno strumentopolo complicato che ho iniziato ieri, credo finirò domani, e posterò <em>domai</em>, la #programmazione sta andando alla grande per mezzo delle mie manine e fine di #WinDog... 🤗</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":8425,"sizeSlug":"full","linkDestination":"none"} -->
<figure class="wp-block-image size-full"><img src="{{site.cdnurl}}/assets/uploads/2024/08/image-1.png" alt="< .lua a 
&gt; 💣 Errore 500: Errore Interno. LuaSyntaxError: [...] 
< che figo errore 500 co la bomba 
< il sottotesto è infuocato proprio 
--- 
< non so perché ma questa cosa mi fa ridere 
< /decode base64 aAAA 
&gt; h
< h" class="wp-image-8425"/><figcaption class="wp-element-caption">Detto al volo perché devo mimir: <a href="2024/08/07/programmazione-fumosa/">in questi 3 giorni</a> nel #bot ho implementato un'altra funzione inutile (questa per fare [de]codifica di testo), e una utile che me lo fa riavviare (per quando modifico il codice) senza passare dal terminale del server; ho magicamente fixato l'invio di messaggi bridgiati, ho ripulito gran parte del codice togliendo anche delle cose più che deprecate, ho aggiunto funzioni alla API per standardizzare i messaggi di aiuto e quelli di errore, sistemato qualche comando vecchio, e insomma funziona già tutto meglio di prima. 🤑</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>L'unica cosa che richiederà ancora non poco sforzo in realtà è proprio il bridging, perché, seppur ora i messaggi li può mandare avanti e indietro, non può sincronizzare cose come modifiche o cancellazioni, oltre a non poter leggere reazioni o qualunque evento di messaggistica speciale... quindi non è utilizzabile. Oltre a questo, voglio in realtà rendere programmabili i ponti usando la runtime Lua (che già è nel bot!), così da rendere possibile la configurazione più estrema del loro comportamento (filtrare messaggi per testo, farlo andare solo ad una certa ora... le possibilità sono troppe).</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Poi... sia per far andare bene i bridge, che per renderli programmabili a qualunque utente senza obbligo di self-hosting, che per aggiungere ancora altre cose al bot (tra cui minigiochi con uno stato e insomma cose epiche), dovrei anche finire il database, credo... yikes, difficile perché non so mai in anticipo cosa mi serve, quindi devo farlo via via, con tutte le scocciature del caso. Comunque, qualcosa a proposito di quello funzionerebbe già: per ora dopo il mio fix c'è il comando <code>/config</code> che permette almeno di cambiare la lingua del bot (wow). Darò a ciascun utente ben 512 KB di spazio per conservare script Lua... godi popolo per la mia generosità!!!</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>L'ultima cosa, che però ho già finito, appunto ora, è una API più specifica per inviare messaggi di servizio, come errori e aiuto... anziché ogni volta nei moduli richiamare invio di un messaggio generico, uso queste specifiche per avere meno boilerplate e, soprattutto, avere dei comandi che sembrano effettivamente parte dello stesso bot, non un'accozzaglia di funzioni ognuna con estetica di testo diversa. Andatevi a vedere i sorgenti se vi interessa, ma in pratica ho tutte le stringhe (anche per tante lingue) in dei file YAML con una struttura particolare, e insomma il programma fa il suo. Sorprendentemente, YAML è un ottimo formato per conservare piccole stringhe HTML, e HTML è un ottimo formato quando il testo fa così tanti giri che non puoi tenere traccia di come fare escaping di eventuali simboli speciali... (Markdown cacca).</p>
<!-- /wp:paragraph -->