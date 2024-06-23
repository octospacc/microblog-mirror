---
ID: 6318
post_title: tela spaccata
post_name: tela-spaccata
author: minioctt
post_date: 2024-06-07 10:47:48
layout: post
link: >
  https://octospacc.altervista.org/2024/06/07/tela-spaccata/
published: true
tags:
  - antialiasing
  - blur
  - broken
  - browser
  - bug
  - Canvas
  - demo
  - disegno
  - HTML5
  - inconsistente
  - JavaScript
  - JSBin
  - Mannaggia
  - pixel
  - problema
  - prova
  - sfocatura
  - subpixel
  - test
  - web
  - webdev
categories:
  - Senza categoria
title: tela spaccata
date: 2024-06-07 10:47:48
canonical_url:   https://octospacc.altervista.org/2024/06/07/tela-spaccata/
---
<!-- wp:paragraph -->
<p>Ieri sera, una roba che davvero mi ha fatto perdere la pazienza e ogni speranza, maledetto web development, avevo iniziato a scrivere questo post ma ho poi deciso di a mimire... in pratica, il Canvas HTML5 è inconsistente, tra diverse funzioni, diversi browser, e a tratti è proprio buggato mi sa. In breve: non si può tracciare linee o contorni puliti lì dentro, viene tutto sfocato, mannaggia!!! 😶‍🌫️️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Beh, non è la prima volta che scopriamo che la roba nei browser gira a furia di hack, quindi non so perché proprio questa volta sono così spiazzata, però questo è. Ho scoperto questa magagna dopo aver notato che, i bordi di rettangoli nel programma che sto facendo, che sono puliti su Firefox, appaiono tutti blurrati in Chromium. Ho fatto qualche test al volo, e notato che cambiare lo spessore dei tratti sistemava il problema su un browser e lo faceva apparire sull'altro. "<em>Sarà colpa di p5.js</em>", ho pensato, "<em>ti pare che nei due browser web più grandi al mondo ci sono gli spacc?</em>"... e quindi ho cercato. Big oopsie, perché <a href="https://github.com/processing/p5.js/issues/5662">una issue l'ho trovata</a>, ma da lì ho scoperto che p5.js in realtà non centra. E... ecco, facendo dei test con la API Canvas liscia, senza la libreria esterna di mezzo, persiste il problema. 👹️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":6320,"sizeSlug":"full","linkDestination":"none"} -->
<figure class="wp-block-image size-full"><img src="{{site.cdnurl}}/assets/uploads/2024/06/image-2.png" alt="" class="wp-image-6320"/><figcaption class="wp-element-caption">Ho fatto un piccolo file con vari test: <a href="https://jsbin.com/dadobugiye/edit?html,output">jsbin.com/dadobugiye/</a> (caricato su JSBin, così potete verificare anche voi). In foto c'è a sinistra come ha renderizzato Firefox, e a destra Chromium (entrambi chiaramente sul mio desktop Linux). Tra le quattro linee spesse da 1 a 4 pixel, e i tre rettangoli con bordo da 1 a 3 pixel, notate come a spessore alternato si alternano anche la presenza e l'assenza di sfumatura. Quello che cambia tra la copia superiore e quella inferiore è che sulla seconda è applicato uno shift di 0.5 pixel sia per X che Y (la seconda soluzione più brutta tra le consigliate)... appunto, fare questa cagata pulisce ciò che prima era sporco e sporca ciò che era pulito. 🚬️</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>La schifezza è dovuta al fatto che il browser fa anti-aliasing di ciò che disegna lui, e non c'è modo di disattivare la cosa; c'è una proprietà <code>imageSmoothingEnabled</code> che vale però solo per i dati immagine raw (forse è per questo che non ho mai notato problemi con, ad esempio, gli emulatori web di console). Quindi, in teoria si potrebbero implementare da zero funzioni per disegnare linee e roba varia, che scrivono direttamente i pixel sulla tela... ma non sembra qualcuno abbia voglia di implementarlo in librerie grafiche general-purpose e che non deviano troppo dalla API. (Io certamente no.) Shiftare ogni azione di disegno di 0.5 pixel in base al browser può sembrare una soluzione (dato che il problema è causato dall'allineamento subpixel, e ci sarebbe il metodo <code>.translate(x,y)</code> per farlo senza ogni volta sommare alle coordinate), ma non lo è affatto, perché lo vedete come le linee e i rettangoli appaiono tra loro diversi (e, curiosamente, le linee sono uguali tra i due browser)... 💱️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Computer potentissimi e piattaforme software di complessità estrema e potenzialità infinite, ma poi non riescono a fare delle fottutissime linee non sburrate, stiamo tornando indietro. E falliscono appunto in modo pure inconsistente!!! <a href="https://stackoverflow.com/questions/195262/can-i-turn-off-antialiasing-on-an-html-canvas-element">Non sembra proprio esserci soluzione</a>, se non creare delle mie astrazioni sulle funzioni di disegno di linee e rettangoli (che fanno in autonomia gli shift necessari ogni volta). Veramente sto male, è possibile che se il mio numero arbitrario di spessore in pixel è pari o dispari, a seconda del gusto del browser e dell'allineamento .0 o .5 a subpixel, deve venire tutto: o grigino anziché nero, o spesso di 2 pixel anziché 1 (o la qualsiasi), o coi bordi sciolti in lava? Per ora continuo a usare p5.js e quindi il disegno a forme sul Canvas per questa applicazione, perché è comodo, ma per i prossimi progetti chissà che dovrei usare... nulla si avvicina neanche lontanamente all'efficienza di scrivere del JavaScript vanilla e averlo immediatamente prendere vita. 🤢️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":6321,"sizeSlug":"full","linkDestination":"none"} -->
<figure class="wp-block-image size-full"><img src="{{site.cdnurl}}/assets/uploads/2024/06/image-4.png" alt="" class="wp-image-6321"/><figcaption class="wp-element-caption">Ho provato anche un'altra soluzione di tizi, un po' brutta ma che avrei accettato se avesse funzionato: applicare un dato filtro SVG... che dire. Vero, non si vede più alcuna sbleurratura, ma gli angoli dei tratti sono più arrotondati (non chiesi), e lo spessore è comunque sbagliato. E una cosa stramba bonus: i lati delle linee superiori (ma non di quelle shiftate?!) sono tipo corrotti, hanno dei pixel che appaiono un po' a sinistra come delle spine. Ma come cazzo è possibile?!?!?! 🌋️</figcaption></figure>
<!-- /wp:image -->