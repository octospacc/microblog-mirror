---
ID: 7800
post_title: memomento!
post_name: memomento
author: minioctt
post_date: 2024-07-17 13:40:11
layout: post
link: >
  https://octospacc.altervista.org/2024/07/17/memomento/
published: true
tags:
  - app
  - browser
  - frontend
  - istanza
  - JavaScript
  - Memos
  - note
  - PHP
  - script
  - server
  - software
  - usememos
  - webapp
categories:
  - Senza categoria
title: memomento!
date: 2024-07-17 13:40:11
canonical_url:   https://octospacc.altervista.org/2024/07/17/memomento/
---
<!-- wp:paragraph -->
<p>La <a href="/microblog-mirror/2024/06/03/memocto-momentocto/">mia istanza pubblica di Memos</a>... è ancora intrigante, ma l'ho usata più in questi ultimi giorni che nelle tante settimane passate da quando l'ho tirata su, il che è buffo, ma non troppo preoccupante. Probabilmente stavo ancora provando il concept, e non ero sicura di volerci già mettere tutto l'impegno, perché magari "<em>chissà se non mi trovo bene e voglio tornare ad un altro format</em>"... ma, a questo punto, mi sa che il formato di #note piccole a flusso ci sta molto bene, è pratico e veloce da utilizzare, ed il software è abbastanza minimale da non farmi scivolare nella <a href="/microblog-mirror/2024/05/29/la-mia-wiki-nelle-pareti/">trappola dell'organizzazione</a>. Però, il programma ha degli inconvenienti comunque, quindi, circa ieri... ✨️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":7801,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="{{site.cdnurl}}/assets/uploads/2024/07/image-5-960x526.png" alt="Schermata del memo linkato aperto in Firefox con JS attivo, Firefox con JS spento, e lynx nel terminale." class="wp-image-7801"/><figcaption class="wp-element-caption">...Ho creato uno script #PHP giusto per permettere la visualizzazione dei memo senza JavaScript, perché la pagina statica non include nulla, neppure i tag per l'anteprima sulle piattaforme di chat e social (che ancora non ho sistemato, ma farò). È la cosa che io in primis più odio, quella di finire su un link esterno sul web, e constatare che il JS serve per visualizzare qualsiasi cosa in più di una pagina bianca. Link così per provare (con il <code>proxy_pass</code> di nginx ho "sovrapposto" lo script sugli URL normali dei memo): <a href="https://memos.octt.eu.org/m/VhMUopz539YSBYyitCQwzN">memos.octt.eu.org/m/VhMUopz539YSBYyitCQwzN</a> 🎳️</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>L'ho reso ovviamente scaricabile lo script, non è proprietario, ma non penso lo espanderò troppo... non ho alcun incentivo di implementare navigazione o ricreare a tutti gli effetti il frontend di #Memos, così come non implementerò un rendering 1:1 del Markdown com'è sulla #app. Alla fine mi serve solo perché: non voglio quell'effetto odioso del web pure sui miei siti, voglio permettere a browser retrogradi (come in foto) di leggere tutti i contenuti, e ai vari crawler di leggerli e archiviarli, tra cui Archive.org, ma anche giustamente i motori di ricerca. 👑️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>(Cosa molto strana a proposito: in realtà, <a href="https://web.archive.org/web/20240717111008/https://www.google.com/search?q=site%3Amemos.octt.eu.org">Google ha trovato ben 8 pagine della mia istanza</a>, e gli ha assegnato come descrizione degli estratti di testo pertinenti, ma nessun altro motore lista nulla... ma è perché solo loro fanno web scraping avanzato, facendo renderizzare il sito in dei veri browser, quindi per tutti gli altri bisogna avere dell'HTML di valore.)</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Questo comunque porta al discorso di: a chi beneficia la tendenza moderna, sempre più imperante, delle #webapp comunque munite di un server di backend, di fare del tutto a meno di #frontend lato server, in favore di versioni 100% client-side? ...Solo agli sviluppatori pigri, certamente non agli utenti in generale, e nemmeno a chi ospita e gestisce il #software (qualora sia una persona diversa dallo sviluppatore, come per questo e altri software open-source diffusi). Fa rabbia, ma non stupore, come il caricamento dell'effettivo contenuto a schermo è molto più veloce con questo #script PHP, rispetto che aspettare che la app frontend si carichi e faccia il suo lavoro...</p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Meno di 250 millisecondi da quando il #browser fa richiesta a quando il #server restituisce l'HTML di pochi KB, nonostante dietro le quinte faccia ben 3 richieste HTTP a localhost, senza alcuna cache: una per ottenere l'HTML di Memos in cui iniettare i contenuti, una per ottenere i dati JSON sul memo... e in realtà prima una per ottenere l'<code>id</code> numerico con cui richiedere il JSON avendo l'<code>uid</code> alfanumerico, perché solo la API binaria (non-JSON) lo permette, ma ovviamente parsare tutti i dati di quella da un programma esternamente costruito non è cosa, leggo solo la stringhetta che mi serve e so dove sta. 😳️</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Dopo questo (che grazie al mio script ora già mostra i contenuti, mentre prima era una pagina vuota), può passare da... poco meno di un altro secondo, a poco meno di un secondo e mezzo, per avere la pagina che si tira appresso tutte le altre risorse, il #JavaScript che si attiva, scarica i dati che gli servono con millemila richieste, e a quel punto mette a schermo i contenuti. Ok, questo tempo non è rognoso in assoluto, ma comunque è peggio di quanto potrebbe realisticamente essere, ed in ogni caso è misurato a casa sul PC groso... sullo smartphone, con rete cellulare, in giro, vi assicuro, la differenza si sente, e al giorno d'oggi gli utenti (me compresa) scappano a gambe levate dalle pagine che caricano lentamente. 💩️</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->