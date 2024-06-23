---
ID: 6498
post_title: softwarepostaggio
post_name: softwarepostaggio
author: minioctt
post_date: 2024-06-13 09:36:29
layout: post
link: >
  https://octospacc.altervista.org/2024/06/13/softwarepostaggio/
published: true
tags:
  - cross-platform
  - development
  - framework
  - gamedev
  - librerie
  - linguaggi
  - programmazione
  - ricerca
  - software
  - stack
categories:
  - Senza categoria
title: softwarepostaggio
date: 2024-06-13 09:36:29
canonical_url:   https://octospacc.altervista.org/2024/06/13/softwarepostaggio/
---
<!-- wp:paragraph -->
<p>Ieri carestia di postaggio. A parte un altro esame e ancora altro gamin', stavo vedendo delle robe riguardo la fabbricazione del gamin', cioè varie tecnologie per fare giochini con un buon livello di cross-platformness e basse rogne (aka no C perché potenzialmente applicazioni complesse)... da un lato la scelta è ampia, ma dall'altro un po' intricata. Considerando che per motivi di costruzione del software che ora non spiego, gli engine veri e propri (Unity, Godot, ecc...) sono scartati a prescindere, le opzioni che ho visto sarebbero... 🙄</p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>JavaScript vanilla, magari con qualce libreria come p5.js: non male, anche perché si possono pacchettizzare in vari modi i programmi basati sulla API Canvas per farli girare come app native su vari sistemi, senza un browser (si veda ad esempio <a href="https://github.com/samizdatco/skia-canvas"><em>Skia Canvas</em></a> per desktop, che usa NodeJS e non Electron... o, addirittura, <a href="https://github.com/SuperIlu/DOjS">DOjS</a> per, you guessed it, MS-DOS). Tuttavia, pure se quest'ultimissima implementazione esotica in particolare non ha <a href="2024/06/07/tela-spaccata/">i problemi di aliasing che ho detto l'altro giorno</a>, il coso Skia invece si, così come qualunque altra implementazione moderna che ho visto, per cui non mi sembra proprio il caso... non favorisco piattaforme dove bug di tale livello sono considerati features. 🤢</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Volevo quasi considerare <a href="https://monogame.net/">MonoGame</a> o robe del genere, ma, nonostante sembrano esserci varie risorse sparse (vedi <a href="https://community.monogame.net/t/monogame-inside-your-web-browser/1091">1</a>, <a href="https://community.monogame.net/t/timeline-for-mono-aot-webassembly-export/12548">2</a>, <a href="https://github.com/MonoGame/MonoGame.WebDemo">3</a>, ...) per compilare giochi fatti con quello verso il web (che è per me un requisito non negoziabile, seppur voglio comunque anche le build native), così come abbiamo visto la cosa venir fatta in pratica, io non sono riuscita a far funzionare un fico secco dopo averci provato (1 pochino). È a dir poco imprudente scegliere uno stack software se non si riesce a provare da subito che i requisiti essenziali sono soddisfatti, per cui, scartato anche questo ed XNA liscio (e abbiamo finito le opzioni C#, lol). 🥴</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Ren'Py, <a href="2024/05/03/renprovine/">come ho già detto altre volte</a>, è figo e lo si può realisticamente usare per creare qualunque app grafica, usando le sue astrazioni per la UI quando comodo e ricadendo sulla API quasi-Pygame quando necessario. Però idk, è un bel po' di baggage se si considera necessario creare molte delle componenti di gioco in ogni caso, e passi per il peso dei file, però è veramente pallosa la quantità di secondi che impiega a partire su Android, e su Web non ne parliamo proprio! Quindi boh, anche se sarebbe comodo perché funziona e basta e il linguaggio è basato. 😭</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>C'è sempre <a href="http://pygame.org/">Pygame</a> liscio, che su desktop da un'esperienza sempre bona, però farlo funzionare su altre piattaforme sembra un po' una scommessa, non essendo direttamente supportate. C'è <a href="https://pygame-web.github.io/">Pygame-web</a>, che non ho testato lato developer, ma le demo sembrano intriganti a dir poco, con buone prestazioni e supporto a tantissime librerie... e poi per Android c'è il vuoto. Tutte le cose per girare lì sembrano mezze hack, tutti consigliano procedure diverse, e non sembra esserci alcuna soluzione ovvia, quindi manco è chiaro cosa provare e cosa no. Chissà perché le app in Python per Android sono rare, e i giochi Python non-RenPy si contano sulle dita di una mano mozzata... 🤬</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Scoperto poi <a href="https://haxe.org/">Haxe</a>, linguaggio fatto apposta per buildare ai target più disparati (e addirittura traspilare a diversi altri linguaggi); in realtà è generico e si potrebbe usare per qualsiasi cosa, ma è favorito per i giochi, perché la sintassi deriva da ActionScript 3. Di per sé non reimplementa anche le varie API di Adobe Flash per le applicazioni interattive, quello lo fanno rispettivamente librerie come <a href="https://www.openfl.org/">OpenFL</a> (per un'esperienza vanilla, mentre altre ricalcano anche framework terzi d'epoca).<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>L'unica opzione buona qui sarebbe OpenFL, perché le altre sono tutte estremiste (o dal lato del basso livello che ti costringe a programmare tutto per ogni minchiata, o da quello del game engine che ti costringe a programmare il gioco come dice lui)... però la community è piccola, ci ho messo non poca fatica a capire anche solo come disegnare direttamente bitmap sullo schermo senza usare le astrazioni degli sprite, lol, non buono. (Forse avrei più fortuna cercando risorse per Flash anziché questo, se tanto la API è copiata...) 🥺</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list --></li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Poi, infine, <a href="https://www.love2d.org/">LÖVE2D</a> mi torna in mente a caso, e... temo sia la scelta migliore? Viene out-of-the-box con solo funzioni di manipolazione visiva, alla Pygame, nessuna delle fancy astrazioni attorno a cui adattare a forza il codice. Ovviamente su desktop funziona a modo, ma poi è ufficialmente supportato su Android, c'è <a href="https://schellingb.github.io/LoveWebBuilder/">un porting Web</a> che è molto più performante di Pygame, e, addirittura, ci sono vari porting per varie console. C'è <a href="https://lovebrew.org/#/">LÖVE Potion</a> per 3DS, WiiU, e Switch, che supportano addirittura le varie cose hardware fighe delle rispettive console! Con le altre soluzioni i metodi di girare su queste console (senza SDK ufficiali) ci sono, ma più in teoria che in pratica, nulla sembra essere plug-and-play, quindi questo è un bonus fighissimo. 😍</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:paragraph -->
<p>Vabbè, in questo caso forse tendo al lovvo bidimensionale, questo post era per condividere le ultime osservazioni, nel caso anche voi qualche volta scegliete anziché scommettere. (Ma perché è così difficile l'offerta? E boh...) Con Lua è un po' amore e odio personalmente, ma comunque mille volte più godurioso usare quello che C, poco ma sicuro. Haxe e il suo ecosistema però non lo butto via, me lo tengo a mente per altre occasioni. (...Haxe traspila verso Lua, quindi in teoria si può scrivere per Love2D usando quello, e <a href="https://www.love2d.org/forums/viewtopic.php?t=91875&p=243071">pare che qualcuno ci sia riuscito</a>, ma provando al volo con me non c'è stato verso... pazienza, vedrò meglio.) 😇</p>
<!-- /wp:paragraph -->