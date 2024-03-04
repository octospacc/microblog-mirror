---
ID: 2740
post_title: wpricerca?
post_name: wpricerca
author: minioctt
post_date: 2024-03-04 01:24:41
layout: post
link: >
  https://octospacc.altervista.org/2024/03/04/wpricerca/
published: true
tags:
  - arrangiare
  - dati
  - delusione
  - filtraggio
  - filtrare
  - filtri
  - mancanze
  - messaggi
  - parole
  - piattaforma
  - plugin
  - post
  - problema
  - query
  - ricerca
  - richieste
  - risultati
  - rosik
  - schifo
  - WordPress
categories:
  - Senza categoria
title: wpricerca?
date: 2024-03-04 01:24:41
canonical_url:   https://octospacc.altervista.org/2024/03/04/wpricerca/
---
<!-- wp:paragraph -->
<p>Un po' di #rosik e #delusione ora che mi rendo conto che la #ricerca di #WordPress non è poi così tanto epica e funzionale come speravo, credevo, e dicevo... rimane comunque mooolto meglio di quella di Telegram, su questo punto ci rimango perché lo avevo detto con cognizione di causa, e perché su quella #piattaforma la ricerca di #messaggi specifici (che ricordiamo, non ha operazioni avanzate) fa spesso così incredibilmente cilecca; però ecco, migliore non vuol dire perfetto. Ci sono due #mancanze principali: il fatto che la ricerca non sia veramente agile, e non aggiorni i risultati immediatamente durante l'input, ma bisogna sempre ricevere la pagina nuova dal server, e poi il fatto che sia limitata in termini di #filtraggio dei #dati. 🦍</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Il primo #problema direi che almeno un pochino l'ho risolto installando semplicemente il plugin <a href="https://it.wordpress.org/plugins/relevanssi-live-ajax-search/">Relevanssi Live Ajax Search</a>; ho anche modificato il codice in <code>relevanssi-live-ajax-search/templates/search_results.php</code>, modificando l'HTML sotto il blocco <code>the_post()</code>; per far apparire anche un estratto del contenuto di ogni risultato, aggiungendo <code>&lt;?php the_excerpt(); ?></code>, che avere solo il titolo non è cosa buona (alcuni miei post neanche lo hanno il titolo). ☢️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Quello che mi fa impazzire è il secondo! Ho cercato e provato tanti #plugin, ma nessuno fa cosa mi serve, cioè #filtrare i #risultati con #query complesse includendo ed escludendo certi termini, specificando magari anche il tempo, e così via. Insomma, vorrei avere una ricerca simile a quella che Twitter ha da un secolo, o che, addirittura, ormai anche Mastodon ha (seppur con alcune sue limitazioni arbitrarie di design, che personalmente meh, però sul livello tecnico è ottima)! Su Twitter ricordo che si potessero usare operatori logici AND e OR per formare #richieste molto complesse, mentre su Mastodon vedo sicuramente che si possono usare i simboli più (+) e meno (-) per forzare l'inclusione o l'esclusione di alcune #parole, oltre ad esserci #filtri specifici per il prima o dopo una data, ed altre robe. 👑</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Il vantaggio di un normale sito web è che almeno posso #arrangiare con motori di ricerca generali quando quello integrato sul mio non mi basta (ammesso che il sito non sia bistrattato dagli algoritmi e dai crawler, fortunatamente questo su dominio Altervista è indicizzato), ma fa #schifo: non è detto che esca davvero tutto in ordine cronologico come a me serve, e non escono nuovi #post se non dopo ore o giorni. 🐌</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Dovrò vedere come giostrarmela, perché al momento per quanto io personalmente riesco a ritrovare singoli post vecchi per qualunque scopo, mi è impossibile condividerne molti insieme con la semplicità che vorrei: 1 solo link verso una pagina di ricerca con una comanda appositamente costruita. 🦴</p>
<!-- /wp:paragraph -->