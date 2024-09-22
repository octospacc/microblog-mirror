---
ID: 9249
post_title: framiovelocitore
post_name: framiovelocitore
author: minioctt
post_date: 2024-09-14 23:43:38
layout: post
link: >
  https://octospacc.altervista.org/2024/09/14/framiovelocitore/
published: true
tags:
  - browser
  - FramesBrowser
  - gusto
  - webapp
categories:
  - Senza categoria
title: framiovelocitore
date: 2024-09-14 23:43:38
canonical_url:   https://octospacc.altervista.org/2024/09/14/framiovelocitore/
---
<!-- wp:paragraph -->
<p>Oggi avrei dovuto fare altro (...almeno, così sento, ma non saprei proprio dire che cosa di altro), e invece ho continuato a sistemare i guai combinati ieri su #FramesBrowser... Poco importa però, visto che, indipendentemente da cosa faccio, una costante resta tale: nessuno mi paga. 👁️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Una delle cose proprio brutte che avevo causato è il caricamento lentissimo della #webapp, perché caricavo le dipendenze (una sola, in quel momento) in un modo brutto: i file JavaScript di libreria erano codificati in stringhe JSON, messi a loro volta in file JavaScript, tutto ficcato nell'HTML passato agli iFrame come URL <code>data:</code>, che al caricamento fa <code>eval()</code>, ed ecco che la magia di serie B si avvera. 🤪</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":9256,"sizeSlug":"full","linkDestination":"none"} -->
<figure class="wp-block-image size-full"><img src="{{site.cdnurl}}/assets/uploads/2024/09/image-4.png" alt="Schermata chat lamentele crash e uso RAM, con il grafico di uso RAM e CPU che mostra i picchi." class="wp-image-9256"/><figcaption class="wp-element-caption">Il fatto è che, in questo modo, avevo URL lunghi 200 KB o più (!), cosa a quanto pare inconcepibile anche per il browser, che non solo rallenta, ma... nel mentre che stavo facendo altri esperimenti stamattina (aka, questo problema non c'è in produzione, non sparatemi), ha anche preso di continuo a crashare, perché l'uso di RAM saliva in quei momenti a picchi di svariati GB (non è dato sapere il perché, però, e nemmeno il perché il picco sia doppio). Un sacco di tempo perso stamattina, coi riavvii tra browser e intero PC... 🤕</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>...Perché non caricare direttamente tutto con <code>&lt;script src="..."&gt;</code>? Perché, mentre non ci sono problemi a caricare una risorsa così da <code>http:</code> o <code>https:</code> all'interno di un contesto data:, ci sono eccome se la risorsa è su <code>file:</code> (caccole cross-origin)... e io voglio che la app continui a funzionare senza un webserver, dal filesystem locale, oltre che deployata sul sito. Quindi... ho fatto che l'iFrame carica invece un file HTML wrapper, e il codice dentro quello visualizza i contenuti HTML effettivi (presi dall'URL hash) piazzandoli nel nuovo DOM. 🤯</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Ho pure sistemato la UI su mobile, che ora non è più tagliata in basso per via del chrome del #browser, e il dialogo modale del Canvas di screenshot, che ora ha persino testo e tasti. Poi c'è ancora qualche altra cosina che posso sistemare, ma nulla che stia <em>guidando me insana</em>, quindi probabilmente per stasera chiudo, e di aggiornare ancora 'sto coso se ne parlerà nei prossimi 6 mesi... unless... 😈</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:video {"autoplay":true,"id":9259,"loop":true} -->
<figure class="wp-block-video"><video autoplay controls loop src="{{site.cdnurl}}/assets/uploads/2024/09/simplescreenrecorder-2024-09-14_23.39.51.mp4"></video><figcaption class="wp-element-caption">Direi che infine si fa usare non male. Ricordiamo: 2 giornatine di lavoro solo per fare screenshot con dimensioni replicabili, certe volte non so se sono furbyssyma. (E su mobile non appare 'sto cazzo de menu contestuale.) C'è però una parte di me che, guardando la finestra ridimensionabile che lascia spazio vuoto, dice "scusa ma perché non implementi finestre simultanee con tiling?"... a cui rispondo che è perché va risistemato mezzo codice, e stasera, a quest'ora, non è cosa.</figcaption></figure>
<!-- /wp:video -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Questo forse è uno dei miei progetti meno utili, ma allo stesso tempo uno dei più fighi, mi sa. Anche solo con questo riuscii a sperimentare dettagli della piattaforma web che forse sarebbe meglio ignorare e non fare pazzie del genere... bene così. <a href="https://hub.octt.eu.org/FramesBrowser/">Il browser dentro il browser</a> ha questo #gusto proprio indescrivibile... peccato solo che la me del passato ha arronzato la lista delle schede, e ora me attuale (io) non c'è voglia di renderla meno spartana. 🥱</p>
<!-- /wp:paragraph -->