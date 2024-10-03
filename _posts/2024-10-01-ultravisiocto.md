---
ID: 9800
post_title: ultravisiocto
post_name: ultravisiocto
author: minioctt
post_date: 2024-10-01 01:52:39
layout: post
link: >
  https://octospacc.altervista.org/2024/10/01/ultravisiocto/
published: true
tags:
  - embed
  - frontend
  - HTML
  - iFrame
  - metadati
  - PHP
  - project
  - TikTok
  - video
  - ViewPure
  - ViewUltra
  - web
  - WIP
  - YouTube
categories:
  - Senza categoria
title: ultravisiocto
date: 2024-10-01 01:52:39
canonical_url:   https://octospacc.altervista.org/2024/10/01/ultravisiocto/
---
<!-- wp:paragraph -->
<p>...Side #project? Sento che mi mancava un po' lo spirito di esso, negli ultimi tempi, non andrò a mentire. Però non.,. non mi ricordo più perché mi serviva questa cosa che ho fatto oggi, uffa. Il cervellino vuole scrivere varietà miste di codice senza alcun motivo, forse. O forse è perché... non mi pare ci sia alcun sito, con una sola interfaccia sempre uguale, per visualizzare e ricondividere #video da infinite piattaforme: ☝️</p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul class="wp-block-list"><!-- wp:list-item -->
<li>Figa la vista video in <a href="https://www.bing.com/videos/onecolumn/landing">Bing</a> e DuckDuckGo, ma entrambe non trovano i video da URL (anche quando nei risultati normali esce, lol, ma in ogni caso è problematico), e poi:<!-- wp:list -->
<ul class="wp-block-list"><!-- wp:list-item -->
<li>Quella di Bing è tutta castrata su mobile, e ha un feeling un po' scattoso;</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li>Quella di DuckDuckGo non prevede permalink (per la condivisione dei video ricercati).</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list --></li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li>Belli tutti i #frontend open source, ma, a parte che quelli ben fatti per i video supportano sempre solo #YouTube, puntualmente si spaccano e bisogna fare il salto tra istanze, i link vecchi tendono a morire, ecc...<!-- wp:list -->
<ul class="wp-block-list"><!-- wp:list-item -->
<li>Tra l'altro, tutti che reimplementano sempre il componente player, quando quello funziona abbastanza bene, ed è invece tutto il resto del sito di condivisione video di turno che da le rogne.</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list --></li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:paragraph -->
<p>Una volta, almeno per mostrare i video soltanto di YouTube senza bloat di mezzo c'era <em>ViewPure</em>; anche se dall'altro lato era estremamente scarno, dando solo un iFrame del video richiesto, e mi pare qualche informazione, proprio meh. Poi sparì nel nulla. E io ho nel frattempo trovato <a href="http://purify-video.github.io">purify-video.github.io</a>, con la stessa filosofia ma ancora più meh, e per giunta mi sembra senza tema scuro... abbastanza ovvio che, coi requisiti di sopra, comunque queste opzioni non sono adatte. 🥱️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Insomma, mi sono inventata la cosa mia, quindi. Copiando la filosofia, ho scelto il nome <strong><em>ViewUltra</em></strong>, perché... tipo #ViewPure, ma potenziato, perché voglio anche la ricerca integrata, i video correlati, e più dettagli possibili, minimizzando il bisogno di passare al sito originale del contenuto. Non potendo copiare codice, però, uso a scrocco le API private di Bing per far funzionare queste ultime funzioni... e io devo solo pensare a impaginare iFrame originali e metadati estratti. Non so se farò un dominio dedicato, ma per ora è su <a href="https://hlb0.octt.eu.org/ViewUltra.php"><strong>https://hlb0.octt.eu.org/ViewUltra.php</strong></a>! 🥰️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:video {"id":9802,"loop":true} -->
<figure class="wp-block-video"><video controls loop src="{{site.cdnurl}}/assets/uploads/2024/10/simplescreenrecorder-2024-10-01_00.55.08.mp4"></video><figcaption class="wp-element-caption">Ancora #WIP tuttavia... devo: cambiare endpoint interno di Bing per avere video correlati buoni, sistemare un po' la grafica che coi colori non ancora mi convince, fare una pagina home vera con informazioni utili oltre che suggerimenti randomici e cronologia, rendere opzionalmente collassabile la sezione dei video correlati, e persino ancora caricare <a href="https://gitlab.com/octospacc/Snippets/-/blob/main/ViewUltra.php">il sorgente sulla mia repo di script disordinati</a>. Ma, la Octo di domani sera avrà voglia di fare tutto ciò? 🥶️</figcaption></figure>
<!-- /wp:video -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Effetto collaterale figo di guardare media in questo modo è che vengono, a dire il vero, bypassati molti ratelimit e muri di login, da quei siti abbastanza stupidi da implementarli senza ritegno in primo luogo... ma poi per fortuna finire a non applicarli per i link di #embed. In particolare, TikTok, che ha il sito desktop che chiede sempre login, e quello mobile che è estremamente spaccato, funziona una favola qua dentro. Di contro, però, per #TikTok non so come estrarre i metadati per mostrarli bellini nelle altre parti della pagina: non li mette con i tag #HTML standard, offusca tutto. 😵‍💫️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Sul lato tecnico: questo robino supporterebbe la visualizzazione di contenuti tramite #iFrame da qualsiasi fonte, specificando l'URL... ma nella pratica devo andare ad implementare in modo specifico l'handling per ogni piattaforma, perché per far andare l'embedding serve quasi sempre un endpoint secondario (che va conosciuto a priori, quindi non può essere estratto automaticamente), e perché (per motivi di sicurezza) sul backend ho una whitelist di domini che il server può contattare per estrarre #metadati e replicarli nell'HTML. Piano piano implemento tutti gli URL per i top siti mondiali... 👻️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":9801,"sizeSlug":"full","linkDestination":"none"} -->
<figure class="wp-block-image size-full"><img src="{{site.cdnurl}}/assets/uploads/2024/10/image.png" alt="Chat con il link dimostrativo in anteprima, risposta: PIIIIIIIIIII" class="wp-image-9801"/><figcaption class="wp-element-caption">Ah e, l'ho fatta come app #PHP ora, e non tutta lato client come mio solito, perché comunque per quasi tutta la sua funzionalità ha bisogno di un server proxy per le richieste; a questo punto tanto vale far girare anche la logica su server, così da avere anche i metadati sempre popolati per le anteprime social, e <a href="https://hlb0.octt.eu.org/ViewUltra.php?url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3Dmco3UX9SqDA&amp;search=hatsune%20miku%20popipo"><em>queste robe qua</em></a>. 🥳️ (Richiede comunque JavaScript, ma vi prego non mi sparate, serve solo per la ricerca e per listare i video correlati; la prima cosa andrà sistemata, ma la seconda è un buon compromesso per far caricare presto la pagina...)</figcaption></figure>
<!-- /wp:image -->