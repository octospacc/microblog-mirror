---
ID: 13129
post_title: wordpress pressato in markdown
post_name: wordpress-pressato-in-markdown
author: minioctt
post_date: 2025-01-03 22:24:17
layout: post
link: >
  https://octospacc.altervista.org/2025/01/03/wordpress-pressato-in-markdown/
published: true
tags:
  - HTML
  - magia
  - Markdown
  - script
  - WordPress
  - XRSS
  - XSLT
categories:
  - Senza categoria
title: wordpress pressato in markdown
date: 2025-01-03 22:24:17
canonical_url:   https://octospacc.altervista.org/2025/01/03/wordpress-pressato-in-markdown/
---
<!-- wp:paragraph -->
<p>Stasera ho in mano l'ennesimo caso di "skill issue a posteriori", cioè di una roba che viene da chiedermi come ho fatto a non pensarci prima... vabbè va. <strong>Convertire siti #WordPress in file pseudo-Markdown per i generatori statici non è mai stato semplice quanto 30 righe scarsissime di #XSLT.</strong> 🔥</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":16384,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="{{site.cdnurl}}/assets/uploads/2025/01/image-1-1-960x542.png" alt="Schermata del foglio XSLT davanti, sullo sfondo di nascosto lo script sh e uno dei file Markdown generati" class="wp-image-16384"/><figcaption class="wp-element-caption">Ovvio, a posteriori è tutto banale — corollario di Murphy — però, se mi fosse venuta in mente prima questa come soluzione, mi sarei risparmiata <a href="/microblog-mirror/2024/02/14/finalmente-backup-veri/">qualche mal di capa quasi un anno fa fino ad ora</a>... e <a href="https://sitoctt.octt.eu.org/it/blog/2022-12-13-%EF%B8%8F-Il-blogging-rapido-con-Standard-Notes/#unesigenza-veloce">qualche scelta forse un po' scomodina ancora più tempo prima</a>. 🥴</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>A differenza di anche solo 2 anni fa, in realtà, negli ultimi mesi sono usciti su GitHub ancora nuovi programmini e script, per convertire file di esportazione #XRSS di WordPress in file Markdown — giusto per reference, li ho raccolti su <a href="https://memos.octt.eu.org/m/X6v7w4FccbBon6J6jxCYoJ">https://memos.octt.eu.org/m/X6v7w4FccbBon6J6jxCYoJ</a> — però, oggi che ne cercavo uno ideale, comunque ho visto che <strong>fanno tutti cahà</strong>. ☠️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Gli autori di questi programmi pensano di essere culi intelligenti, e quindi non solo leggono l'XML di esportazione per convertire i metadati in YAML e salvare su multipli file con il nome giusto...... ma convertono tutto il corpo #HTML in #Markdown, cosa che non so come altro descrivere se non come la mossa più stupida dell'universo, perché è una procedura lossy che letteralmente rompe il contenuto, se non vengono considerati tutti i casi limite. 😵</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Tutta questa scienza però evidentemente non serve, se un foglio di trasformazione XML tirato su in 10 minuti è sufficiente... yikes. L'ho caricato per i consumatori (inclusa me di qualche ora dopo) sulla mia repo di monnezza: <strong><a href="https://gitlab.com/octospacc/Snippets/-/blob/main/WordPress-To-Yaml+Html.xslt">https://gitlab.com/octospacc/Snippets/-/blob/main/WordPress-To-Yaml+Html.xslt</a></strong>. Per usarlo, basta darlo come primo argomento al programma <code>xsltproc</code> (che è nelle repo di Debian, quindi presumo ovunque), e come secondo argomento specificare il file <code>.xml</code> esportato da WordPress... 🥰</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Chiaramente, troppa #magia con così poco codice non è possibile, quindi questo metodo da in output un enorme flusso di testo con tutte le pagine "esportate" concatenate... e si dovrà usare uno #script aggiuntivo per separare il file singolo in tanti dal nome giusto; appena una manciata di righe in qualsiasi linguaggio, ma questo è come lo faccio io in sh (per l'archivioctt): <a href="https://gitlab.com/octospacc/archivioctt/-/blob/mkdocs/scripts/wordpress-to-mkdocs.sh">https://gitlab.com/octospacc/archivioctt/-/blob/mkdocs/scripts/wordpress-to-mkdocs.sh</a> 😽</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>(Per chi non sa leggere: viene usato "<code>&lt;!-- wp:item /--&gt;</code>" come separadore, quindi quello deve essere usato per splittare. Opzionalmente si possono aggiungere e modificare i filtri XPath usati nel <code>xsl:for-each</code> per includere ed escludere tipi di robe, ad esempio includere solo i post, o solo le pagine pubbliche, nonché aggiungere e togliere proprietà ai metadati YAML... però di base è già alla massima goduria!!!)</p>
<!-- /wp:paragraph -->