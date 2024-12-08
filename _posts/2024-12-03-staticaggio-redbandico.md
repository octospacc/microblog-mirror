---
ID: 12072
post_title: staticaggio redbandico
post_name: staticaggio-redbandico
author: minioctt
post_date: 2024-12-03 19:21:54
layout: post
link: >
  https://octospacc.altervista.org/2024/12/03/staticaggio-redbandico/
published: true
tags: [ ]
categories:
  - Senza categoria
title: staticaggio redbandico
date: 2024-12-03 19:21:54
canonical_url:   https://octospacc.altervista.org/2024/12/03/staticaggio-redbandico/
---
<!-- wp:paragraph -->
<p>Col <a href="/microblog-mirror/2024/11/24/serveraggio-mibandico/">mio server privato di Mi Fitness</a>, animè non ho neanche un po' finito di implementare funzionalità superflua e non... infatti manco ho iniziato a programmare appine per la band, ma suppongo che non ci sono tutti questi utenti che moriranno dentro se non avranno subito nuovo giochi per rilogio. 👄</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>D'altro canto però, configurare un'istanza personale del server non è alla portata di tutti (serve PHP e un dominio con certificato HTTPS valido), ma sarebbe utile a chi vuole installare risorse che non ho il tempo io di hostare sul mio server (o chi sviluppa le sue e deve sideloadare). E allora che si fa?? 😳</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Ho provato a fare la cosa più cursata di sempre, ed effettivamente ha funzionato... ho aggiunto del codice per cui lo script PHP può essere eseguito come generatore di file statici, anziché rispondere a richieste HTTP dinamiche, e quindi creare dei file JSON che possono essere hostati su qualunque server statico... 🤯</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Nella pratica questo vuol dire che, dopo il pochino di scriptaggio shell fatto stamattina (anziché seguire la lezione, pur stando in aula, ops), ora è possibile per chiunque cliccare fork sulla repo GitHub, ed ecco fatto: può godere immediatamente della mia magia anche chi non è puella magica!!! 🥰</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":12071,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="{{site.cdnurl}}/assets/uploads/2024/12/screenshot_2024-12-03-14-40-02-943_org5298460327611587060-960x443.jpg" alt="Schermata download.html col file APK scaricato; nome sbagliato per un bug che ho sistemato immediatamente dopo" class="wp-image-12071"/><figcaption class="wp-element-caption">Gli script sulla CI si occupano pure di creare l'APK di Mi Fitness patchato con il dominio di Pages, e lo fanno scaricare. 😁 (...Da una pagina che usa JavaScript per ovviare al merdoso limite di file da 100MB di GitHub, ma non voglio digressare.)</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Chi ancora non ha acquistato la propria Redmi Band 8/9 non si rende veramente conto di quanto è buono tutto questo... Posso dire con certezza (dato quanto ho ricercato) che il mio è l'unico metodo pubblico per sideloadare sia app su modelli non cinesi, sia watchface in formato ZIP in assoluto, quindi ancora una volta GODI POPOLO. 😼</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Tutto come sempre qui: <a href="https://github.com/octospacc/Mi-Fitness-Private-Server">https://github.com/octospacc/Mi-Fitness-Private-Server</a>. Però damn, oltre che per implementare le altre piccole minchiate e raccogliere watchface, servirebbe qualche aiutino sulla documentazione, che io la sto scrivendo un po' arronzata. 🥺</p>
<!-- /wp:paragraph -->