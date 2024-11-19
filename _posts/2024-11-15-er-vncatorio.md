---
ID: 11322
post_title: Er vncatorio
post_name: er-vncatorio
author: minioctt
post_date: 2024-11-15 16:49:27
layout: post
link: >
  https://octospacc.altervista.org/2024/11/15/er-vncatorio/
published: true
tags:
  - desktop
  - Docker
  - HTTP
  - KasmVNC
  - Linux
  - VM
  - VNC
  - web
  - Webtop
categories:
  - Senza categoria
title: Er vncatorio
date: 2024-11-15 16:49:27
canonical_url:   https://octospacc.altervista.org/2024/11/15/er-vncatorio/
---
<!-- wp:paragraph -->
<p>Me so'nventata <strong>n'antra roba de' mie l'altro ggiorno.....</strong> e non so perché m'è venuta solo così n'a mattina mo', e non un annetto fa quando me sarebbe stata utile per risolve un problema teribbile, ma mejo tardi che mai. Ora è più 'no sfizio così, ma vabbè. 🤯</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Dovevo fare delle robe per cui mi serviva al volo un desktop Linux mentre stavo nell'autobus bloccata ner traffico ('tacci loro che hanno bloccato tutto dopo che si è schiantato un camion di fronte allo svincolo, mezz'ora in 'sto cazzo de pullman a girarme i pollici e ho fatto 15 minuti de ritardo a lezione!) ...e quindi ok, c'ho <a href="/microblog-mirror/2024/08/19/linuxaggio-androidico/">er tablett Android con XFCE</a>, ma per motivi non volevo usare quello. 😴</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Quindi m'è tornato in mente <strong>'sto coso de </strong><strong><a href="https://docs.linuxserver.io/images/docker-webtop/"><em>linuxserver/webtop</em></a></strong>, una serie de #Docker che proprio al volissimo fanno tirare su dei desktop Linux per uso vario. Espongono un server #KasmVNC, che sarebbe un sistema de desktop remoto ottimizzato particolare a cui si accede direttamente da browser. Ha pure audio, scaling automatico, è bellino proprio lui. 🥰</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Purtroppo su mobile (speciarmente con browser non-Firefox) non è granché, perché girando solo in un browser ha quelle limitazioni solite, e piccole cose scomode, che proprio booh... Ma, le prestazioni sono mooolto mejo de #VNC normale, e anche di quella cagata de XRDP (fornita allo stesso modo semplice da <em>linuxserver/rdesktop</em>). Ma, è workabbile. 👍</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Però, già che c'ero, ho visto un dettaglio e pensato 'na robba... la configurazione fa specificare una password per l'autenticazione #HTTP, per non lasciare l'accesso sprotetto. Ma scusa però; se metto la protezione lì, allora posso anche aprire la porta all'esterno su Internet e buonanotte ai sonadori, posso accederci pure senza VPN... 🤔</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>...E se posso accederce senza VPN casalinga, <strong>ce posso accede dai computer in laboratorio</strong>, che hanno BIOS bloccato, admin bloccato, tutto di una bruttezza popo unica che orca troia non c'è mai stato verso di farci girare un client VPN là sopra per collegarmi (né c'è 'a virtualizzazione nidificata per fare la cosa sporca e avviare una VM da chiavetta, a parte che vanno lentissime lì). 😳</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":11395,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="{{site.cdnurl}}/assets/uploads/2024/11/img_20241115_1616368750857896020335085-scaled.jpg" alt="Foto ar computer de laboratorio cor monitor e il mio client aperto in Edge su Windows, con il Linux che esegue Remmina per collegasse alla VM Windows, e neofetch è aperto su entrambi i sistemi virtualizzati" class="wp-image-11395"/><figcaption class="wp-element-caption">Stavo per scrive' l'altra mattina 'sto post, ma m'ero dimenticata de fa la fotina, quindi ho posticipato. Ammirate le finestre dentro le finestre, va. 👻 (Ho installato la versione <em>ubuntu-kde</em>.)</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Che trip assurdo, el thin client de merda che se collega ar server VMWare stronzo del dipartimento, avvia Windows 10 (c'è pure Ubuntu, ma gira peggio) e lì sopra un browser #web, e va sul mi dominio non segreto con la porta HTTP segreta, e se apre er desktop privato. Non gira male, è più performante er tratto dati casa-campus rispetto a quello dall'aula al datacenter sotterraneo. 😌</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>La cosa più bella è che, su tutto questo, eventualmente posso aprì er desktop della #VM Windows sullo stesso host tramite RDP (la cui porta è invece chiusa dall'esterno, perché ner server RDP de Microsoft esce 'na vulnerabilità all'anno, ce manca solo che per colpa del loro RDP rotto mi entrano nel server). Così non reinstallo nulla. 😈</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Cazzarola regà, doveva venirmi in mente un anno fa 'sto fatto, quando ho droppato l'uso di 'sto coso come #desktop cloud in favore della VM Windows, che non lagga malamente e allo stesso tempo si può usare senza client web allucinanti... però mi richiede appunto la VPN. Bona così stavolta, bono #Linux quando funge. 😇</p>
<!-- /wp:paragraph -->