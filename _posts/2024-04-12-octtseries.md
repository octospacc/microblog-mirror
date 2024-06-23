---
ID: 4399
post_title: octTSeries
post_name: octtseries
author: minioctt
post_date: 2024-04-12 19:09:49
layout: post
link: >
  https://octospacc.altervista.org/2024/04/12/octtseries/
published: true
tags:
  - articoli
  - plugin
  - post
  - serie
  - sito
  - software
  - tassonomia
  - template
  - WordPress
categories:
  - Appunti
  - Meta
  - Senza categoria
title: octTSeries
date: 2024-04-12 19:09:49
canonical_url:   https://octospacc.altervista.org/2024/04/12/octtseries/
---
<!-- wp:paragraph -->
<p>Non l'ho messo <a href="2024/04/11/tassi-nel-sito-misto/">nel post di ieri</a> perché sarebbe venuto un papirone e comunque interessa solo ai <em>wordpressisti</em>, non anche a chi usa altri sistemi, però.... questo è quello che ho dovuto fare per sistemare le #serie, lo scrivo anche per reference. Mezzo casino, ma in genere coi plugin è sempre così, sono tutti diversi... invece, le categorie sono una funzionalità di #WordPress, quindi tutto si integra in automatico. 👌</p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Quasi 5 minuti spesi a orientarmi tra i menu di <a href="https://wordpress.org/plugins/organize-series/">PublishPress Series</a>... e ancora adesso non riesco a capire non solo perché ci siano due pagine di gestione "Serie" e "Gestione delle serie" sotto il menu Articoli che potevano essere benissimo una (la seconda è virtualmente una copia della prima, eccetto che manca il form per creare una serie), ma poi neanche perché ci sia un menu Serie separato che ospita solo la pagina Impostazioni (e allora c̛̄a̬r̷͜i̲ss̞i͈͝m̜i͚̒, o evitate il menu Articoli e mettete tutto tutto sotto il vostro, o̔̋͆p̠̫͔̆̓p̶̡̛̙̭̑ͬ̄ͮ͌͜ű͇̪̅ͭ̋r͇̙̼̙͇̥ͦͮͯ̍ͬé̛̞ͨͨ̒̍̑ͅ n̹o͇ͅṋ̶͠ m̴̤̭̾̇ͧͅe̹͈͙͌̄t͎̼͉͕̬̔̇ͤt̡̳̐ē̴̝̦̱ͪ̈́̋ͭ͘t̛̙̩̪̤̄͆̍͌e̞̟̲̥ u̸̬̣̘̹ͤ̏ͩͭn̫̼͔̟ͤ̈́̓͊͜͜͞ a͍̜͊̇ͬl̫̤͊t̵ró̶̩͌ m̡̺̩̳͔̰̬͆̉e̦n͎ͣ̀͛ṵ̡̲̻̳͉̾̚͜ͅ e il singolo tasto per le impostazioni lo mettete... beh, sotto la voce Impostazioni del CMS)... 🤧</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Aggiungendo #post ad una serie, in automatico in cima alla pagina di ognuno di loro viene aggiunto un riquadro che indica di quale fa parte ciò che si sta leggendo, con link sia che rimandano alla pagina della serie, sia agli altri articoli, e puntata precedente e successiva in fondo alla pagina.<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>One small issue: gli articoli senza titolo non prendevano spazio nel riquadro, essendo sia invisibili che incliccabili. E, seppur il #plugin abbia una sezione di templating per personalizzare l'HTML generato, non c'è modo di far apparire il collegamento al post preso singolarmente. Per fortuna, me la sono cavata senza modificare il codice, con una hack accettabile: CSS custom per scrivere del <code>content</code> nella parte <code>:after</code> dei link sfigati. 🤯</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list --></li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Il box comunque usciva in troppe (2) pagine dove proprio non dovrebbe, nell'anteprima degli #articoli fuori dalla loro effettiva visualizzazione, rubando spazio a schermo e (credo) causando confusione. Anche qui, in realtà, l'unica opzione non rognosa è il CSS, e per fortuna con tutta la munnizza che viene scritta nel corpo di un'intera pagina dal server è facilissimo costruire dei selettori che agiscano solo nei contesti che mi interessano.</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>La pagina di ogni serie usava di default il template di #tassonomia del sito, che sarebbe ok... se solo mostrasse la descrizione. Quindi ho dovuto attivare il template lista del plugin, che invece lo fa, ma ecco altre rogne con questo... e inizialmente credevo di potermela risolvere senza modificare il #template PHP, ma alla fine ho dovuto. Per fortuna, anche se ci ho messo 3 minuti tosti a capirlo <a href="https://publishpress.com/knowledge-base/series-overview-template/">dalla documentazione fatta malino</a>, mi è bastato creare una copia del file nella <u>cartella root</u> del mio tema, e modificare quella. 🔥️<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Prima, la completa assenza della sidebar del #sito, quindi anche del link per tornare alla home o del menu di navigazione... ho dovuto modificare il sorgente. Chiamando <code>wp_nav_menu()</code> faccio comparire almeno la navigazione, ma il link normale l'ho messo a parte.</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li>Poi, di nuovo il problema dei collegamenti senza titolo, e anche in questo caso il CSS sarebbe stato sufficiente, ma, visto che ormai c'ero già, ne ho approfittato e modificato proprio l'HTML...</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list --></li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>E in tutto questo, la pagina indice delle serie usa in ogni caso il suo template e per ora quindi non c'è neanche un rimando alla home. Forse posso modificare il template senza rompere gli aggiornamenti usando lo stesso metodo dell'altro,  però penso non mi sbatterò nemmeno, perché lì onestamente il link è superfluo.<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Btw, il suo permalink default è <code>/series-toc/</code>, e io l'ho cambiato in <code>/series/</code> perché è più logico considerando che le serie (sempre di default) stanno sotto <code>/series/&lt;la-serie-qualunque>/</code>... ma ora che ci ripenso, ho scartato l'occasione per cambiare il percorso di tutto in <code>/t-series/</code> in memoria di un meme che non fa più ridere... dovrei per caso rimediare solo per il funny, o lasciare così? 🕷</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list --></li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:paragraph -->
<p>Aggiungere gli articoli vecchi alle serie però, e soprattutto alle categorie, come accennavo, è si <em>semplice</em>, ma non <em>facile</em>... è il lavoro cinese di aprire la dashboard con la lista di tutte le centinaia di post, e scorrere, a volte cercando cose che già ho in mente e altre seguendo il flusso, vedendo se qualcosa attira la mia attenzione. A quel punto a volte mi basta guardare l'anteprima, altre però è troppo corta e devo aprire decine di nuove schede per rendermi conto se il contenuto è quello che penso, per capire cosa selezionare. Almeno, unica cosa buona, selezionando gli elementi su questa schermata posso aggiungerli in blocco al gruppo che mi interessa, altrimenti non immagino la sofferenza di andare uno ad uno... 🙏 (questa cosa btw non è inclusa nemmeno in molti #software di note più personali, stavolta Worpres vince)</p>
<!-- /wp:paragraph -->