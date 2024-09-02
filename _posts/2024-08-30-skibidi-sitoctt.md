---
ID: 8877
post_title: skibidi sitoctt
post_name: skibidi-sitoctt
author: minioctt
post_date: 2024-08-30 11:20:08
layout: post
link: >
  https://octospacc.altervista.org/2024/08/30/skibidi-sitoctt/
published: true
tags:
  - design
  - Hugo
  - JavaScript
  - miglioramenti
  - moderno
  - no-js
  - sitocto
  - sitoctt
  - SKIBIDI
  - web
  - webdev
categories:
  - Senza categoria
title: skibidi sitoctt
date: 2024-08-30 11:20:08
canonical_url:   https://octospacc.altervista.org/2024/08/30/skibidi-sitoctt/
---
<!-- wp:video {"id":8876,"loop":true} -->
<figure class="wp-block-video"><video controls loop src="{{site.cdnurl}}/assets/uploads/2024/08/Skibidi-sitoctt.octt_.eu_.org-2.mp4"></video><figcaption class="wp-element-caption">Ulteriori #miglioramenti fanno passare il nuovo #sitoctt da "così buono" a "SO #SKIBIDI". Come ad esempio il fatto che ho aggiunto tutti sti bottoni 88x31 nel footer (l'altra sera), e ora li ho pure ordinati un poco meglio (coi titoli), e... sto prendendo in mano fortissimo la filosofia del miglioramento progressivo, per aggiungere cose che su altri siti statici scarseggiano. ❤️‍🔥</figcaption></figure>
<!-- /wp:video -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Una cosa che ho già bella fatta e finita è la ricerca lato client... va forse fatto qualche aggiustamento sul #design, anche perché la barra-bottone non dovrebbe sprecare un'intera riga di header su schermi stretti, ma vabbé, roba da poco. La base di HTML e JavaScript l'ho rubata <a href="https://themes.gohugo.io/themes/blowfish/">dal tema Hugo "Blowfish"</a>... e, a quanto pare, solo temi orientati alla documentazione, come questo o altri, la includono di default, mentre troppi altri no. 😈</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Una cosa che però non ricordo di aver mai visto prima su altri siti web è il mio fallback no-JS per la ricerca fatto in modo così seamless... la pagina include di default lì sopra un form che lancia una ricerca per il sito sulla mia istanza YaCy; se il JavaScript della pagina viene eseguito, allora questo viene modificato per fargli attivare la ricerca moderna al click (e tutti gli altri eventi roba #web zzz), anziché navigare alla pagina esterna. Il tutto infine, e qui sta un buon dettaglio, senza pagine di intermezzo, che onestamente nell'anno del Signore 2024 sono proprio scomode... 😝</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Una cosa che invece, ho provato decine di demo, e credo nessun tema di Hugo include, e che io ora sto implementando in modo molto semplice, è la navigazione AJAX (o come cavolo si chiama): in sostanza, il fatto che, quando si naviga ad un'altra pagina, il browser non ricarica l'intera scheda, perché è il #JavaScript a caricare l'HTML e piazzarlo al suo posto. Il vantaggio per gli utenti che attivano JS è un sito estremamente più veloce nella navigazione, dal feeling #moderno, perché il browser non deve distruggere e ricreare l'intero ambiente di esecuzione per la pagina. Ovviamente, non usando quei framework strambi, dovrò gestire tutti i casi in cui le pagine hanno JavaScript che deve essere eseguito al caricamento della pagina, che fatto così non se ne può occupare il browser... ma portate pazienza. 🤫</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>È comunque assurdo come quasi tutti i temi precotti per Hugo richiedano JavaScript per cose stupidissime, come aprire il menu di pagine o opzioni su schermi stretti, ma poi non arrivano ad usare quella tecnologia per migliorare l'esperienza utente nel modo migliore possibile. Allora davvero è pura pigrizia, come io ho sempre detto, mannaggia a voi #webdev!!! Almeno, i generatori di siti basati sui framework JS strambi, seppure anche per loro non si trovi in giro un fottutissimo tema che sia uno che ha i menu apribili senza degli stupidissimi script (mi incazzo), le cose le fanno fino in fondo e la navigazione moderna la hanno. Ma #Hugo di per sé è un ottimo generatore, almeno. 😑</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>...A proposito di questo, usando un traduttore automatico per le pagine, mi accorgo che per diverse lingue spesso sgarra, innanzitutto rompendo la formattazione di pagine con grossi blocchi HTML (problema che aggirerò con gli shortcode), ma mi vengono tradotte stringhe che non sono testo (nomi di shortcode, o di proprietà del frontmatter)! Quindi: o rendo il mio codice di traduzione un dio senziente (che palle....), oppure... aggiungo simboli (non di interpunzione) attaccati alle parole che non vanno tradotte, hack che a quanto pare resiste anche alla traduzione verso lingue con caratteri strambi e ordine inverso (es. arabo)... 🙃 (e anche oggi, il mio codice lo fixo <em>domai</em>.)</p>
<!-- /wp:paragraph -->