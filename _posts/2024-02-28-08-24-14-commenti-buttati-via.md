---
ID: 2574
post_title: commenti buttati via
post_name: commenti-buttati-via
author: minioctt
post_date: 2024-02-28 08:24:14
layout: post
link: >
  https://octospacc.altervista.org/2024/02/28/commenti-buttati-via/
published: true
tags:
  - ActivityPub
  - commenti
  - discussioni
  - Fediverso
  - hack
  - settaggio
  - social
  - WordPress
categories:
  - Senza categoria
title: commenti buttati via
date: 2024-02-28 08:24:14
canonical_url:   https://octospacc.altervista.org/2024/02/28/commenti-buttati-via/
---
<!-- wp:paragraph -->
<p>Ho scoperto qualche giorno fa, e ora ho confermato, che il plugin #ActivityPub per #WordPress ha un problemino che, per i #commenti ad un post nidificati ad un livello maggiore del limite consentito dal sito, decide che non possono essere messi dove dovrebbero stare... e allora li butta tutti in una pagina diversa (sempre la home, nel mio caso), cosa non proprio ideale. 🙄</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Avevo disattivato completamente la nidificazione, sia perché dopo un certo livello l'indentazione visiva diventa tale da rendere illegibili i commenti, sia perché tanto il livello massimo consentito (10) è potenzialmente troppo basso per le #discussioni #social (anche se i miei thread muoiono subito, quando non lo sono in partenza, quindi... paura inutile). Ho però trovato un utile snippet PHP <a href="https://www.wp-tweaks.com/how-to-have-infinite-replies-with-wordpress-threaded-comments/">da una stessa pagina che usai prima</a> (per aggiungere il tasto di risposta ai commenti di ultimo livello, che però abbiamo capito non risolve questo bug), e ho alzato <em>leggerissimamente</em> il #settaggio massimo... e vediamo se questo risolve... 🦍</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":2573,"sizeSlug":"large"} -->
<figure class="wp-block-image size-large"><img src="{{site.cdnurl}}/assets/uploads/2024/02/screenshot_20240228-0805217759560834052247540-665x1440.png" alt="" class="wp-image-2573"/><figcaption class="wp-element-caption">Sono stata 3-4 minuti buoni a scrollare questa lista per arrivare fino a 9999... credo basti per qualunque situazione, no? Probabilmente nessuna discussione in assoluto sul #Fediverso è mai arrivata a così tanti commenti nidificati, ma meglio andare sul sicuro, voglio settare ora questa #hack e non toccarla più. Riguardo l'indentazione schifosa, la disattiverò con del CSS. 😈</figcaption></figure>
<!-- /wp:image -->