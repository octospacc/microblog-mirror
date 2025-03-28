---
ID: 14108
post_title: servemoria nel giorno della RAM
post_name: servemoria-nel-giorno-della-ram
author: minioctt
post_date: 2025-01-27 23:13:46
layout: post
link: >
  https://octospacc.altervista.org/2025/01/27/servemoria-nel-giorno-della-ram/
published: true
tags:
  - configurazione
  - memoria
  - server
  - setup
categories:
  - Senza categoria
title: servemoria nel giorno della RAM
date: 2025-01-27 23:13:46
canonical_url:   https://octospacc.altervista.org/2025/01/27/servemoria-nel-giorno-della-ram/
---
<!-- wp:paragraph -->
<p>Oggi è il "<em><strong>Giorno della Memoria</strong></em>"... e, visto che ho la <em>memoria mentale</em> per <em>ricordarmi</em> di ciò, mi sono <em>ricordata</em> che sarebbe il caso di parlare, appunto, proprio di <em>memoria</em>... <strong>#Memoria computazionale</strong>, si intende! La roba de' calcolatori informatici che tanto bene mi fanno NON dormire la notte, perché non funziona mai bene nulla, e allora mai riesco a fare quello che mi serve... 💔</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Vabbè, semplicemente riflettevo su come è particolare che <strong>il mio server casalingo</strong> sia tipo l'unico mio computer che funziona bene, nonostante la <strong>configurazione particolare e discutibile</strong> per quanto riguarda la <em>memoria</em>, a differenza di quasi tutto il resto dei dispositivi — la quale maggior parte mi da noia, ironia della sorte, per motivi di <em>memoria</em>, ma in quel caso <em>memoria di archiviazione</em>; e stasera non voglio parlare di quelli, perché non mi va di incazzarmi ancora di più. 😾</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":14121,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="{{site.cdnurl}}/assets/uploads/2025/01/image-7-960x542.png" alt="Terminale htop, 5.43/7.64 GB RAM, 5.77/6.77 GB swap
Messaggi:
&gt; il mio server è forte, non rallenta mai per richiestine
&gt; nonostante memoria di swap e zram
&gt;&gt; Ma tanto non hai saturato 16GB, no? xd
&gt; è 8 GB RAM il servero
&gt;&gt; Mi ricordavo che avessi SEDICI
&gt; 16 il PC fisso
&gt; con swap e zram si arriva a 15 totale
&gt;&gt; Quasi tutto pieno
&gt; e finora SSD non ha dato rogne per lo swap, ma quando le darà sarà comunque più economico sostituire tutto esso (pure con uno più capiente, magari) che comprare più RAM!" class="wp-image-14121"/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Qualche mese fa, avendo attivato l'hosting di cose nuove, anche se nulla di grosso, la RAM è di punto in bianco iniziata a non bastare più... e stava quasi per partire <em>la memoria</em> del Rasperino Vietnam, iniziando a vedere non solo servizi che venivano killati o rallentavano, ma proprio tutto il sistema che non rispondeva più a niente per intere ore (...o fino a un riavvio hardware), per via della RAM completamente satura. 🗡️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Rimane un mistero come facessi a ospitare tutta la mia roba su 1 GB di memoria, ai tempi <em>immemori</em> del Raspberry (appena 1 anno e mezzo fa), ma le mie magie non vanno avanti a congetture, e quindi comunque una soluzione dovevo trovarla rapidamente... E per fortuna, <em>me lo ricordo</em> perfettamente, la trovai, a costo di distrarmi malissimo dalle lezioni in corso all'università quel pomeriggio... oh peccato. Purtroppo, volevo valutarla qualche giorno prima di condividerla, ma passati i pochi giorni <em>mi scordai</em> (che novità). 👻</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Allora, insomma, la soluzione è banale, quindi la sua scoperta è lasciata ai lettor— STO SCHERZANDO!!! Se mai dovessi fare come i professori di matematica, vi autorizzo ad attentare alla mia vita, Mangione-style, ma non è questo il giorno. La soluzione è banale, sta nella combinazione di:</p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul class="wp-block-list"><!-- wp:list-item -->
<li><strong><em>memoria</em> di swap</strong> (che già avevo), configurata da un lato dal setup automatico di Debian quando configurai inizialmente il computer, e dall'altro semplicemente installando il pacchetto <code>dphys-swapfile</code> (che su altre distro o mancherà, ops) e attivando il servizio omonimo (se non lo fa da solo)... e nel mio caso questo ammonta a <strong>circa 1 + 2 GB di swap</strong> 🧨</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li><strong>z-ram</strong> (<em>memoria</em> Z), configurata installando il pacco <code>systemd-zram-generator</code>... dovrebbe attivarsi da solo il servizio (altrimenti basta riavviare e fanculo), concedendo di default <strong>circa 4 GB di z-ram</strong> ✨</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li>opzione del kernel <strong><code>vm.swappiness</code> alta</strong>, nel mio caso <code>vm.swappiness=160</code> (su massimo 200)... altrimenti swap e z-ram non si riempiono mai abbastanza e abbastanza in fretta da non far scattare il killer out-of-memory 🎇</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:paragraph -->
<p>Su un desktop, questa stessa #configurazione, viste le metriche di utilizzo in figura, renderebbe tutto insopportabilmente lento, e anche solo una cartella sul disco ci metterebbe svariati secondi ad aprirsi, i click non farrebbero alcun effetto, l'audio parrebbe riprodotto da Marte... eppure, <strong>qui sul server, è buonissima</strong>. Cazzarola, qui siamo oltre lo "scaricare più RAM", ho scaricato delle cose per <strong>generare RAM dal nulla!</strong> 🚨</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Questo #setup mi lascia <strong>aperti sempre tutti i processi</strong>; rallentamenti nell'accesso ai miei servizi di rete misti non ne noto letteralmente mai, mentre solo <a href="/microblog-mirror/2024/11/15/er-vncatorio/">i miei desktop virtualizzati</a> sono un po' lenti al collegamento dopo tanto tempo di idle, ma nulla di tragico. E non penso neanche di star bruciando l'SSD, perché le pagine che finiscono in swap con l'uso del #server in genere ci restano buone. <em>Memorabile</em>, insomma. 🧠</p>
<!-- /wp:paragraph -->