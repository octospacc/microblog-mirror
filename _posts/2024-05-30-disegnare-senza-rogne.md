---
ID: 6093
post_title: disegnare senza rogne
post_name: disegnare-senza-rogne
author: minioctt
post_date: 2024-05-30 20:26:54
layout: post
link: >
  https://octospacc.altervista.org/2024/05/30/disegnare-senza-rogne/
published: true
tags:
  - app
  - applicazione
  - art
  - disegnare
  - disegno
  - editing
  - editor
  - excel
  - JavaScript
  - keyboard
  - Keyxel
  - mouse
  - office
  - p5.js
  - pixel
  - PixelArt
  - Processing
  - progetto
  - programmazione
  - programmi
  - sideproject
  - soluzione
  - tastiera
  - webapp
categories:
  - Senza categoria
title: disegnare senza rogne
date: 2024-05-30 20:26:54
canonical_url:   https://octospacc.altervista.org/2024/05/30/disegnare-senza-rogne/
---
<!-- wp:paragraph -->
<p>Dovrei iniziare quantomeno <em>a provare</em> a fare certe pixel art che mi servono, se ho intenzione di fare <a href="2024/05/18/msx-more-like-sex/">i miei giochini</a>, ma ho realizzato che sto un po' rimandando... Ci ho pensato un attimo, e mi rendo conto che succede perché semplicemente non ho le condizioni esterne giuste per mettermi a disegnare quella roba: tutti i programmi (per PC) sono scomodi. 😶️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Più o meno su mobile (tablet o smartphone) qualcosa di agibile si trova, e riesco a disegnare senza incazzarmi affatto, anche se, ovviamente, non è il massimo... con il touch screen, tra le dita che coprono la vista, la generale imprecisione dei tocchi, e il fatto che quando sono a casa vorrei usare il potenzialmente più comodo PC per i disegnini pixellosi, non riesco granché ad accontentarmi. Appunto, su PC non ci sono software comodi, perché per qualche motivo l'ennesima <em>devianza dei tempi moderni</em> è che si debba usare il mouse e solo il mouse per disegnare pixel art — e <em>voi sapete</em> <a href="2024/01/04/niente-touchpad/">come sto io col mouse</a> (mi accorgo ora di non averlo mai spiegato bene però... pazienza, un giorno scoprirete) — nonostante ai tempi antichi il topo non esisteva nemmeno, eppure con la tastiera si disegnava bene uguale. Vi giuro, non ho trovato un editor completo che sia uno che permetta di disegnare muovendo un cursore e piazzando il colore usando solo la tastiera, e questo per me è un problema più grande di quello che suona. 😩️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>A dire il vero, ne ho trovato giusto qualcuno sperimentale, progettini iniziati per sfizio e mai finiti, con troppi compromessi e limitazioni che mi impediscono di prendere ed usarli con felicità; ve li elenco per pietà: <a href="https://github.com/knosmos/cmdpxl">cmdpxl</a>, <a href="https://github.com/douglascdev/pypixelart">pypixelart</a>, <a href="https://github.com/veethree/KDP">KDP</a>, <a href="https://pixel42.itch.io/pixkey">Pixkey</a> e, <a href="https://github.com/c4l1c0/peachel">Peachel</a>. Stavo quasi pensando di usare <em>programmi di fogli di calcolo</em> per disegnare, che di base hanno un buon workflow per la tastiera (e a volte ci ho disegnato sopra...), e permetterebbero di usare le macro per implementare le funzioni di settore mancanti... ma mi sono subito scontrata con la realtà di: niente Excel su Linux (il 2007 va in Wine ma palle), LibreOffice Calc non permette di mappare a tasti il secchiello per colorare le caselle (non è chiaro se sia una funzione mancante <a href="https://bugs.documentfoundation.org/show_bug.cgi?id=133136">oppure un bug</a>), OnlyOffice Spreadsheet ha millemila bug tra cui problemi di ridimensionamento delle celle (non ho voluto nemmeno proseguire oltre quindi lmao), e sia Excel Online che Google Sheets fanno veramente <em>cahare liquido</em>. E allora, pure stavolta, l'ennesimo <em>progetto laterale</em> inizia... 🤬️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":6106,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="{{site.cdnurl}}/assets/uploads/2024/05/image-7-960x481.png" alt="" class="wp-image-6106"/><figcaption class="wp-element-caption">L'ennesimo concretizzarsi del sesto corollario di Murphy (<em>"Non ci si può mettere a far qualcosa senza che qualcos’altro non vada fatto prima"</em>) mi stava facendo avvilire, ma non avevo altra scelta ormai, quindi ho iniziato, e ho deciso anche stavolta di creare un programma mio anziché forkarne uno esistente (sarà meno una rogna per me svilupparlo e mantenerlo). E, devo dire, è buono, perché tra ieri e oggi <em>ci ho preso gusto</em>: ho già la parte di base di disegno a posto, e ora posso implementare gli strumenti più utili e originali, ho un sacco di idee per rendere il disegno più veloce e piacevole che col mouse! Ma prima, sto finalizzando il formato "proprietario" dell'app... si, è <em>quel plaintext lì</em> anziché un banale JSON o un oscuro formato binario; ma voi non siete pronti, avrete altre foto solo tra un po'... 🙃️</figcaption></figure>
<!-- /wp:image -->