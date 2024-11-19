---
ID: 8179
post_title: la tivuoctt
post_name: la-tivuoctt
author: minioctt
post_date: 2024-07-31 00:34:51
layout: post
link: >
  https://octospacc.altervista.org/2024/07/31/la-tivuoctt/
published: true
tags:
  - app
  - IPTV
  - olimpiadi
  - player
  - TiVuOctt
  - TV
  - web
  - webapp
categories:
  - Senza categoria
title: la tivuoctt
date: 2024-07-31 00:34:51
canonical_url:   https://octospacc.altervista.org/2024/07/31/la-tivuoctt/
---
<!-- wp:paragraph -->
<p>Chi sta seguendo le #olimpiadi col piede giusto (cioè non per fare le solite lamentele politiche, ma per godersi il fottutissimo sport, che è la cosa che a quanto pare aprendo Internet finisce sempre in secondo piano), lo sa che l'applicazione che serve per stare al passo con gli eventi non è un client social, bensì un #player IPTV... ed è a questo che sono finita con <a href="/microblog-mirror/2024/07/30/ok-la-pazzia-e-fatta/">la matta programmazione di ieri sera</a>... 🤫️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":8180,"sizeSlug":"full","linkDestination":"none"} -->
<figure class="wp-block-image size-full"><img src="{{site.cdnurl}}/assets/uploads/2024/07/image-11.png" alt="" class="wp-image-8180"/><figcaption class="wp-element-caption">Beh, sul PC con Firefox RaiPlay non mi funziona... ma lì non è un problema, perché uso <a href="https://github.com/linuxmint/hypnotix">Hypnotix di Linux Mint</a>. Ottimo player, peccato che il problema è su mobile, dove non ho provato se il sito di RaiPlay funziona, ma comunque ricordo che gira proprio male, e non andrò ad installare né VLC né MPV perché Android [più app installi e più le prestazioni degradano]. E allora, anche stavolta, mi sono fatta io la #webapp che mi serviva... provatela a <a href="https://hub.octt.eu.org/TiVuOcto/#/0/Rai2.it"><strong>hub.octt.eu.org/TiVuOcto/#/0/Rai2.it</strong></a>, su 😼️</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Il material design ha colpito forte qui, e mi piace come ho messo tutti i canali nel menu laterale, tutti accessibili al volo, facilissimo passare da una categoria all'altra, meglio delle altre app. Versione proprio MVP stasera comunque, ci sono tante cosine da poter migliorare... devo per esempio implementare ancora le azioni da tastiera; e lo farò, perché ora questa è la mia app IPTV anche su desktop, oltre che sul cellulare! Ha la stessa <a href="https://github.com/Free-TV/IPTV">collezione di canali in chiaro che usano tutti</a>, con decine di nazioni, ma sarà il caso di permettere agli utenti di aggiungere le loro sorgenti. E poi i preferiti, e la guida TV. 🤭️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Tra le cose da fare, il supporto agli input con tasti sarebbe buono per la UX desktop, ma è praticamente obbligatorio per una app che va su #TV, cosa che per ora non mi serve, ma chissà, potrebbe tornare utile... di app #IPTV belle minimali e non-malware per Android TV non ne conosco. Quindi, se dovesse servire a qualcuno, potrei creare un APK (sulle TV le PWA non sono cosa, anche se quasi tutte le #app pacchettizate lì sono fatte con tecnologie #web, ironicamente). 😷️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Insomma, #TiVuOctt è l'ennesimo trionfo della programmazione vanilla JavaScript rispetto a tutto il resto!!! Fa quello che deve fare. A dire il vero, alcuni canali che su Kodi o quell'altro si vedrebbero, qui non vanno, perché sono da fonti particolari come YouTube o DailyMotion (!?), e dovrei gestirle appositamente, anziché darle a Video.js come fonti HLS lisce... ma nessuno dei principali canali italiani è così, quindi non freca troppo. Altri invece non vanno perché bloccati dal CORS e non gestiti dal mio proxy casalingo; ne butterò uno su Cloudflare Workers poi, quindi senza preoccuparmi di whitelistare domini... 🙏️</p>
<!-- /wp:paragraph -->