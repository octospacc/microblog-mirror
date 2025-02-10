---
ID: 15432
post_title: 'l&#8217;octomediaggio che friggendo in sitofico&#8230;'
post_name: loctomediaggio-che-friggendo-in-sitofico
author: minioctt
post_date: 2025-02-04 23:31:22
layout: post
link: >
  https://octospacc.altervista.org/2025/02/04/loctomediaggio-che-friggendo-in-sitofico/
published: true
tags:
  - Jetpack
  - PHP
  - repost
  - script
  - social
  - WordPress
categories:
  - Senza categoria
title: 'l&#8217;octomediaggio che friggendo in sitofico&#8230;'
date: 2025-02-04 23:31:22
canonical_url:   https://octospacc.altervista.org/2025/02/04/loctomediaggio-che-friggendo-in-sitofico/
---
<!-- wp:paragraph -->
<p><strong>Il mio postaggio</strong>... <em>ohh come si fa sempre più articolato, andando a beneficio sempre più probabile dell'umanità intera</em> (...qualcuno ci crede?). Proprio su questa lunghezza d'onda, stasera — che, giuro di non averlo fatto apposta, ma è passato precisamente 1 mese (31 giorni) da quando l'ho creato ed iniziato ad usare — è arrivato il momento di <strong>dismettere definitivamente l'esperimento dell'Octo Media Journal!!!</strong> 🔥🔖🍽️🔫</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Dopo che nelle ultime settimane ne avevo già <a href="/microblog-mirror/2025/01/16/octomediana-postaggio-in-grana/">risistemato il reposting automatico su Telegram</a> (anche se non ho parlato dei dettagli tecnici, cosa che dovrei recuperare), per fare, come progettato, a meno del secondo canale sperimentale fallimentare lì, era il caso di <strong>togliere da mezzo anche la separazione lato web</strong>, e <strong>unire tutto sul sito del fritto misto</strong>, che uso ormai da più di un anno per questi post più lunghi... ma il <em>"piccolo singolo problema"</em> da superare c'è sempre (te pareva). 😤</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Indeed, per quanto WordPress.com presenti numerose <em>rogne metastatiche</em>, e più passavano i giorni ultimamente più mi si alzava la voglia di liberarmene, visto che stanno succedendo <em>bug allucinanti</em> (di cui ugualmente dovrei prendermi il tempo per parlare...) e non solo, un lato positivo ce l'ha: l'integrazione <em>Jetpack Social</em>, per <strong>ripubblicare in automatico su varie piattaforme esterne</strong> per <em>racimolare qualche impressione a costo zero</em>, almeno lì funziona. (Mentre su Altervista no, c'è un problema apparentemente irrisolvibile per cui il sito non si può collegare a Jetpack completamente.) 🎠</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>E quindi basta: <strong>faccio lo script umma umma che sincronizza</strong> i post dal sito del fritto misto, che continuerò ad aggiornare, a quello dell'Octo Media Journal, che non mi serve più appunto, ma voglio semplicemente usare come <strong>ponte per pubblicare sulle piattaforme social</strong> senza preoccuparmi di nulla... ho deciso. E stasera, finalmente non essendomi distratta troppo, con meno di <strong>150 righe di PHP</strong>, l'ho finito; e la data di creazione del file riporta appena il 28 gennaio... una media di 21 righe al giorno... <em>poteva andare peggio!!!</em> ☕</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":16366,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="{{site.cdnurl}}/assets/uploads/2025/02/image-23-960x520.png" alt="Schermata script output nel browser, contenuto pagine Octo Media Journal, e post su Tumblr in fasi 1, 2 e 3." class="wp-image-16366"/><figcaption class="wp-element-caption">E quindi in figura, per <strong>il gran divertimento</strong>, ecco lo schema di funzionamento del programma (che gestisce un post vecchio) illustrato con appena 6 finestre impilate sul mio desktop... Lo script legge gli ultimi N post dalle API JSON del sito sorgente e di quello destinatario, usa la data di creazione e modifica (precise al secondo, non ci sono collisioni) per identificare univocamente i post, e controllare quindi se i vari sono nuovi e vanno ripostati, o se eventuali modifiche vanno sincronizzate. (Magia.) 🕷️</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Ora dovrò impostarlo come cronogiobbe ogni tot minuti sul mio server, e dovrebbe fare il suo lavoro <em>egregiuamente</em>... O, almeno, <em>finché non mi scade il biscotto</em>, visto che WordPress.com è la sagra delle rogne, e quindi non fa generare token per la API a piacere, bensì bisognerebbe ottenerli con OAuth, e aiuto... Non mi metterò ad implementare tutta quella robaccia per uno script personale, quindi ho semplicemente copiato il cookie dal mio browser, <em>e amen</em>. 🙏</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Se servisse a qualcuno ricreare lo stesso <em>orrore</em>, il mio codice è su <strong><a href="https://hlb0.octt.eu.org/Drive/Misc/Scripts/FrittoMistoSync.php">https://hlb0.octt.eu.org/Drive/Misc/Scripts/FrittoMistoSync.php</a></strong>... ma le rogne con esso al momento sono tante; Per esempio, per generare bene i repost sui social, senza duplicare l'intero contenuto sull'altro sito, faccio <em>una schifezza</em> che fa uscire bene i link su quelle piattaforme sul momento... ma dopo qualche giorno... addio preview. 👻 (Spero mi venga la voglia di sistemare questi <em>miniguai</em> prima che sia troppo tardi.)</p>
<!-- /wp:paragraph -->