---
ID: 17094
post_title: >
  pihpi quando javascritto le stringhe
  fanno ciao!
post_name: >
  pihpi-quando-javascritto-le-stringhe-fanno-ciao
author: minioctt
post_date: 2025-02-17 22:30:25
layout: post
link: >
  https://octospacc.altervista.org/2025/02/17/pihpi-quando-javascritto-le-stringhe-fanno-ciao/
published: true
tags:
  - hack
  - HTML
  - PHP
  - programmazione
  - templating
categories:
  - Senza categoria
title: >
date: 2025-02-17 22:30:25
canonical_url:   https://octospacc.altervista.org/2025/02/17/pihpi-quando-javascritto-le-stringhe-fanno-ciao/
---
<!-- wp:paragraph -->
<p>Questa sera sono un po' a caso impegnata in della <strong>magica programmazione</strong>, che ripulisce la mente e forse purifica l'animo, avendo come effetto collaterale anche quello di far avere al mondo nuovi programmini e progettini... Ed ho appena cacciato fuori <strong>un'idea assurda, talmente esoterica ma allo stesso tempo semplice che potrebbe essere forse illegale</strong> (ma io la userò comunque, in barba alla lobby del codice pulito). 🐒</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Per motivi che ancora non so se andranno a segno, voglio poter fare <strong>templating HTML con la stessa sintassi sia da JavaScript che PHP</strong>, su stringhe che alla fine sono <strong>relativamente semplici</strong>, e quindi non ho voglia di aumentare la complessità di entrambi i programmi con librerie di templating particolari per una simile scemenza — e, volendo veramente mantenere la semplicità, voglio che siano in ogni caso normali funzioni del linguaggio a fare le formattazioni, e con la loro sintassi di interpolazione di stringhe, altrimenti l'editor poi non mi da i colori belli e mi viene mal di testa... 🤯</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Aggiungiamoci anche il fatto che, per motivi che non mi metto a spiegare, l'unica opzione che davvero posso usare in un caso del genere per JavaScript lato client (HTML5) è uno <code>&lt;script></code> con dentro funzioni che fanno tipo <code>function coso (id, dentro) { return `&lt;div data-coso="${id}">${dentro}&lt;/div>` }</code>... Ed ecco che la soluzione logica su cosa fare in PHP è tanto invisibile quanto precisamente sotto i miei occhi, <strong>tanto inappropriata quando calzante a pennello</strong>:</p>
<!-- /wp:paragraph -->

<!-- wp:code -->
<pre class="wp-block-code"><code>function js2php ( $zorp ) { // 😈
  $zorp = str_replace( '`', '\'', $zorp );
  $zorp = str_replace( '}&lt;', '.\'&lt;', $zorp );
  $zorp = str_replace( '}"', '.\'"', $zorp );
  $zorp = str_replace( '>${', '>\'.', $zorp );
  $zorp = str_replace( '"${', '"\'.', $zorp );
  return $zorp; // 💥
}</code></pre>
<!-- /wp:code -->

<!-- wp:paragraph -->
<p>E quindi, tipo, io <code>eval(js2php(file_get_contents('templating.js')));</code>, e poi da PHP chiamo le funzioni di templating <strong>esattamente come farei da JavaScript</strong>, quindi in questo caso <code>coso(42, '&lt;img src="cacca.jpg">');</code>!!! <strong>Funziona talmente bene</strong> che davvero non comprendo come mai la mia qui definita funzione <code>js2php</code> non faccia parte della libreria standard di PHP; anche se, doverosa precisazione, per funzionare così (e rimanere compatibile con JavaScript) la mia funzione <code>coso</code> dovrebbe essere riscritta così: <code>function coso ($id, $dentro) { return `&lt;div data-coso="${$id}">${$dentro}&lt;/div>`; }</code>. 😳</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Quello che la mia <strong>funzione molto grezza</strong> fa è <strong>modificare giusto quel poco della sintassi JavaScript</strong> che non è in comune con PHP, per farla diventare tale, e quindi poter essere poi valutata dall'interprete; il <code>coso</code> di esempio, passandoci dentro, diventa infatti così: <code>function coso ($id, $dentro) { return '&lt;div data-coso="'.$id.'">'.$dentro.'&lt;/div>'; }</code>. (L'esercizio sfizioso di commentare sotto questo post che questa soluzione non deve mai essere usata per gestire input non sicuro, visto che usa <code>eval</code>, è lasciato ai lettori; il mio caso d'uso è sicuro.) 💉</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p><strong>Bonus:</strong> per evitare di avere funzioni vaganti come proiettili nello scope di esecuzione, si possono ovviamente dichiarare le funzioni dentro una hashmap... la sintassi di creazione è diversa tra PHP e JavaScript, ma basta creare una funzione con lo stesso nome che su PHP fa <code>return [];</code> e su JS <code>return {}</code>, poi l'assegnazione è uguale su tutti e due i linguaggi: <code>map['coso'] = function(...){...};</code>. Insomma, <strong>chiamatemi pure imperatrice del riciclo</strong>, come scrivo codice monnezza pur di ottimizzare la scrittura dello stesso!!! 💩</p>
<!-- /wp:paragraph -->