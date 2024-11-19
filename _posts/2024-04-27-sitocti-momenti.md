---
ID: 4925
post_title: sitocti momenti
post_name: sitocti-momenti
author: minioctt
post_date: 2024-04-27 22:54:27
layout: post
link: >
  https://octospacc.altervista.org/2024/04/27/sitocti-momenti/
published: true
tags:
  - Internet
  - OctoSpaccHub
  - SalaMuseoGames
  - sito
  - webapp
categories:
  - Senza categoria
title: sitocti momenti
date: 2024-04-27 22:54:27
canonical_url:   https://octospacc.altervista.org/2024/04/27/sitocti-momenti/
---
<!-- wp:paragraph -->
<p>Un po' meh il fatto che <em>anche</em> ieri non ho postato, sta andando tutto <em>alla deriva</em>, ma è che fino ad oggi pomeriggio non ero a casa, e quindi, non solo tra una cosa e l'altra il tempo è passato, ma poi non è successo niente di condivisibile. Però, visto che non avevo granché modo e/o voglia per i miei soliti passatempi pesanti, avendo con me solo il tablet come oggetto in più del solito, ho approfittato dei vari momenti morti per risolvere alcune di quelle più noiose e scoccianti piccole faccende per il mio sitarello #OctoSpaccHub:</p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Mi sono presa sorprendentemente un po' di tempo (più di 2 ore...) per <em>tentare</em> di disegnare delle icone per 3 (non ancora tutte) delle mie #webapp che sono lì messe a disposizione... fatte partendo da altre icone e non da zero stavolta, e per quanto <a href="https://gitlab.com/octospacc/octospacc.gitlab.io/-/commit/c433bc663543eeddf374bed21bce7006c43cd115">non sono comunque per nulla dei capolavori</a>, forse sono almeno un po' meglio di cosa esce <a href="/microblog-mirror/2024/03/28/pwgoduriaaaa/">quando provo a disegnare io qualcosa partendo da zero</a> assoluto. 🥲️</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Ho implementato anche finalmente lo script Service Worker per il #sito, in modo da permettere alle pagine di andare in cache offline, facendo quindi funzionare le app anche senza #Internet, che è un requisito senza il quale non potrei in tutta onestà considerarle veramente complete e meglio delle native... ma ora oh si, avoja. 🗡️<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Cosa in parte correlata e in parte no, che in realtà però <a href="https://gitlab.com/octospacc/octospacc.gitlab.io/-/commit/87757fbcee643ad3f37bce851e0fc25822964183#59bd975b6a8f87e95826adc4fbedf63faa45ad19">ho fatto una settimana fa</a> (lol): il Worker viene registrato solo per il dominio principale (<code>hub.octt.eu.org</code>), mentre non per tutti gli altri (sono vari) da cui lo stesso sito è accessibile. Su quelli (<a href="https://octospacc.gitlab.io">esempio, qui</a>) appare un avviso in cima ad ogni pagina che ricorda di spostarsi, e c'è un link, ma nessun redirect automatico, perché così gli altri domini possono fungere da costante backup, <em>non si sa mai</em>.</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list --></li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Ho aggiunto un (1) nuovo link alla barra scorribile in basso (quello della mia pagina Itch.io, perché <em>forse</em> ho in programma qualcosa di utile, ma questa sarà un'altra storia), che quindi è diventata talmente larga da scrollare anche sul mio desktop e sul tablet in orizzontale, e quindi ho potuto notare quanto è fastidioso il fatto che faccia di continuo avanti e indietro ogni mezzo secondo senza neanche un frame di pausa... per cui l'ho migliorata, facendo ad ogni cambio di direzione scattare un delay (che era già programmato, ma veniva prima usato solo come pausa al passaggio di mouse o dito). Ne ho anche approfittato e allargato il padding, perché su dispositivi touch era un po' difficile trascinare per scorrere a mano. 💈️</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Infine, non meno importante: non so perché, qualche neurone sarà scattato a caso per colpa dei raggi cosmici, ma ieri sera senza motivo mi è tornata in mente una delle musichette che fanno da sottofondo al menu di selezione di alcuni famicloni... e le voci mi hanno detto che ci starebbe benissimo su una pagina web che è praticamente un menu di selezione per le mie cose. Quindi, detto fatto, <a href="https://hub.octt.eu.org/">"Slum" di Mighty Final Fight è stata messa</a>... (Ovviamente, di default è mutata, non ci sono saltispaventi.) ❤️‍🔥️</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:paragraph -->
<p>E qualcosa ho fatto anche per la #SalaMuseoGames, actually: oltre ad aver finalmente risolto <a href="/microblog-mirror/2024/04/26/doki-doki-pazzia-club/"><em>tutti i problemi riguardo DDLC</em></a> (mancava poco e sarebbe diventata una saga), e aver aggiunto altri giochi, ho implementato un tasto per allargare gli embed senza andare a schermo intero, nascondendo la sidebar che si vede sui display larghi. Ma ci sono ancora tante e tante cose da sistemare lì sopra (soprattutto in termini di PWA), voi non avete proprio idea... ☠️</p>
<!-- /wp:paragraph -->