---
ID: 16918
post_title: 92 javascripti arricchiti in base uranio
post_name: 92-javascripti-arricchiti-in-base-uranio
author: minioctt
post_date: 2025-02-12 22:22:26
layout: post
link: >
  https://octospacc.altervista.org/2025/02/12/92-javascripti-arricchiti-in-base-uranio/
published: true
tags: [ ]
categories:
  - Senza categoria
title: 92 javascripti arricchiti in base uranio
date: 2025-02-12 22:22:26
canonical_url:   https://octospacc.altervista.org/2025/02/12/92-javascripti-arricchiti-in-base-uranio/
---
<!-- wp:paragraph -->
<p>Stavo cercando <strong>qualche alternativa viabile a Base64</strong> per codificare dati binari in testo — perché altrimenti mi verrà qualche malattia ad avere il 33% di puro overhead quando ho file che di base pesano già decine di MB — e beh... Era <strong>forse meglio starmene con le mani ferme e gli occhi chiusi</strong>, perché <strong>quello che ho trovato è assurdo: Base92</strong>. Oh, la tecnologia ci sta bene, non è manco troppo esoterica, e l'<strong>implementazione in JavaScript in particolare</strong> che ho trovato sembra fare il suo lavoro... e però... fa allo stesso tempo <strong>molta paura</strong> — e detto da me, viste le cose che faccio io, è tutto dire.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Mi trovo una repo GitHub che ha solo due commit, di due anni fa, "<em>Add files via upload</em>" e un README che è chiaramente <strong>frutto di uno stato mentale distorto</strong>, per come inizia (non capisco se per via di droghe o schizofrenia). Poi trovo la pagina npm, che non è linkata sul GitHub ma è menzionata, e che è leggermente più aggiornata del GitHub (grande qualità). Poi vedo che la licenza è indicata come MIT su npm, ma nel README è ancora un mini-<strong>rantolo bizzarrissimo</strong>, che, aiuto...</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":16921,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="{{site.cdnurl}}/assets/uploads/2025/02/image-43-960x542.png" alt="Base92+64 JavaScript Encoder and Decoder

    GREAT = Base92, GOOD = Base64;

SMART AS MORE OVER 92:64

    Probably THE ONLY PURE-JS BASE92 (2023) encoding/decoding system in javascript, most notably also faster than half of the st*pid base64 encoding/decoding library (it re-use the memory system and is written in low-level javascript in order to make the engine work based on lighter dataset and operations)

    While Gzip (used in most web servers nowadays) is well suited for Base64, it doesn't lose any key (compression) performance based on Base92, but the greatest of &quot;it all&quot; is that, IT SHOULD ALWAYS HAVE BEEN BASE92 IN JSON AND SUCH BECAUSE IT CAN BE EASILY (The lazy situp-wordu of many companies are just operator not architect)

    GREAT IS THE ENEMY OF GOOD" class="wp-image-16921"/><figcaption class="wp-element-caption"><a href="https://memos.octt.eu.org/m/jKxrUyyTFvZpEzcNXhymNj">https://memos.octt.eu.org/m/jKxrUyyTFvZpEzcNXhymNj</a></figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Comunque, la scarico <em>sperando non sia malware</em>, perché sono troppo confusa per semplicemente leggere il codice ed averne la certezza... e su NodeJS <strong>non funziona</strong>. Nel browser si, ma in NodeJS seguendo le istruzioni no... e maremma maiala. Appena commentando via una linea almeno riesco a importare la libreria tramite <code>eval()</code> (e va bene così, non mi metterò io a sistemare per bene questo codice pazzoide)... e funziona!!! Ok dai.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Poi, dello stesso autore trovo <strong>un altro progetto</strong>, che non solo è veramente <strong>rotto e cagato ancora meno</strong> dell'altro (pochi download e niente issue), ma <strong>ancora più strano</strong>... Con un inglese pur'esso scassato, il README spiega che si chiama <strong>UraniumJS perché usa Base92</strong> (92 numero atomico dell'uranio), e permette di "arricchire" (codificare) dati in quello, e giustamente "esaurirli" (decodificarli) da esso, ma prima comprimendoli con degli algoritmi che non ho mai sentito prima. E c'è un <strong>banner con un teschio alato</strong>. E una <strong>pagina demo mezza rotta</strong> con uno sfondo strano, tipo effetto radiazioni.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":16920,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="{{site.cdnurl}}/assets/uploads/2025/02/image-42-960x497.png" alt="UraniumJS (~41kB) ☢️ - LZ** Compress (-66.7%) ^ B92 Encode (-25% of B64)

LZP3 &amp; LZJBR + BASE92 ✔️ ENRICH or DEPLETE elements such as String, Object, and ArrayBuffer 💀

    ENRICH a text into a simple and compressed BASE92 readable string &amp; DEPLETE it back! Only around 41Kb on modern browser and 31 + 77 kB if you use the version with polyfills to make it compatible with older browser, yet it enables you to save up to 66.67% on any &quot;UTF-8&quot; and &quot;UTF-16le&quot; source text... And to saves once again 25% over Base64 encoding, it fits bracket string and JSON not using &quot; or ' or { or } or $, meanwhile it use spaces when you store it on a web server where Gzip is installed by default for distributing content over http(s), you saves again over more than 15-20% because it is less hard to compress than very ugly texts." class="wp-image-16920"/><figcaption class="wp-element-caption"><a href="https://memos.octt.eu.org/m/EXTTZqT5vAg4nhB84osiKk">https://memos.octt.eu.org/m/EXTTZqT5vAg4nhB84osiKk</a></figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Io, non so, non ho parole... questa è <strong>arte oscura in piena regola</strong>, da cui forse dovrei pure personalmente prendere un po' di ispirazione, per i miei progetti. C'è da dire che in questo caso è tutto <strong>mooolto fumo e poco calcolaggio</strong>, visto che il primo merdino è mezzo rotto, e il secondo completamente (almeno, la codifica dei buffer non funziona, il resto non so); però oh, <strong>finché c'è la magia nera il codice francamente passa in secondo piano</strong>.</p>
<!-- /wp:paragraph -->