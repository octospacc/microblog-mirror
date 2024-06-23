---
ID: 6138
post_title: app note con buco sorpresa
post_name: app-note-con-buco-sorpresa
author: minioctt
post_date: 2024-05-31 19:43:52
layout: post
link: >
  https://octospacc.altervista.org/2024/05/31/app-note-con-buco-sorpresa/
published: true
tags:
  - agile
  - app
  - applicazione
  - approccio
  - appunti
  - bug
  - CVE
  - CVSS
  - exploit
  - incidente
  - interessante
  - inusuale
  - Memocto
  - Memos
  - mistico
  - note
  - piattaforma
  - promemoria
  - prova
  - rapid
  - rapporto
  - report
  - selfhost
  - selfhosting
  - social
  - software
  - svista
  - usememos
  - veloce
  - vulnerabilità
  - vulnerability
categories:
  - Senza categoria
title: app note con buco sorpresa
date: 2024-05-31 19:43:52
canonical_url:   https://octospacc.altervista.org/2024/05/31/app-note-con-buco-sorpresa/
---
<!-- wp:paragraph -->
<p>Volevo raccontarvi quest'altro #software in modo un po' più felice di come dovrò ora, ma, <em>ahimè</em>, io sono sempre la solita calamita per i bug... e ok, quelli sono fastidiosi ma spesso ci si può passare sopra... Peccato che stavolta, oltre agli insetti, ho trovato pure una bella svista che, secondo la scala CVSS, è critica con un punteggio di 9.9/10... evviva... non ho granché voglia di mettere le mani io a sistemarla, quindi pure stavolta ho scritto il rapporto, e le mani <em>me le sono lavate</em>; quando sarà risolto, sarà pubblicato all'URL <a href="https://github.com/usememos/memos/security/advisories/GHSA-543v-59rr-mmf7">github.com/usememos/memos/security/advisories/GHSA-543v-59rr-mmf7</a> (credo, è la prima volta che uso le CVE di GitHub). 😤️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":6130,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="{{site.cdnurl}}/assets/uploads/2024/05/screenshot_2024-05-31-13-36-48-763_com5825807353304702725-665x1440.jpg" alt="Schermata della app sul mio telefono con la home di sfondo, mostra i primissimi post pubblicati." class="wp-image-6130"/><figcaption class="wp-element-caption">Il servizio comunque è Memos, app di note veramente inusuale, che da un po' conoscevo e stamane ho deciso di selfhostare per provare. Spero che l'approccio sbarazzino possa aiutarmi ad annotare quelle cose per cui il sistema rigido della TiddlyWiki <a href="2024/05/29/la-mia-wiki-nelle-pareti/">ha iniziato a starmi stetto</a>; questo coso è fatto proprio per creare tantissimi memo piccoli, più veloci da comporre non richiedendo neanche un titolo, gestiti a mo' di <strong>flusso social</strong>. Tutti i miei post pubblici sono visibili su <a href="https://memos.octt.eu.org/explore"><strong>https://memos.octt.eu.org/explore</strong></a>! 😻️</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Il sistema è potente, ma non va a scapito della UX. Si possono caricare <strong>file</strong>, e addirittura sono visualizzati <strong>iframe e CSS</strong> (ma immagino non sui client Android e iOS, solo quello web?). Ci sono ovviamente i <strong>tag</strong>, ma la <strong>ricerca</strong> è ottima, quindi possono non servire. Ogni utente ha il suo <strong>profilo</strong> e può scrivere in privato, pubblico, o restringendo ai soli utenti dell'istanza. Tutti i <strong>memo</strong> che si ha il permesso di vedere escono in diverse <strong>timeline</strong>, oltre che sulle pagine profilo, e si può <strong>commentare o reagire</strong> a questi... praticamente come se fosse Misskey (lo menziono in particolare per la sua essenza uguale ma opposta; Misskey è un social orientato alle note, e Memos una app di note con funzioni social). 🌋️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Purtroppo, questo non è federato, quindi per godermi questa mistica esperienza devo invitare anche voi (e magari voi i vostri amici) ad annotare qualsiasi cosa sul mio server... ed appunto, volevo farlo, ma poi ho sgamato quella vulnerabilità, sfruttabile però solo da utenti registrati; per fortuna, perché intanto io posso continuare a provare la #piattaforma per conto mio, ma purtroppo, perché ho dovuto chiudere le registrazioni per ora. Vi inviterò di nuovo a registrarvi quando il bucio del culo sarà tappato (su cui non elaboro oltre, perché non si fa, il robo lì sta ancora in Triage). 🔺️</p>
<!-- /wp:paragraph -->