---
ID: 8692
post_title: il linuxxaggio più migliore
post_name: il-linuxxaggio-piu-migliore
author: minioctt
post_date: 2024-08-20 23:53:12
layout: post
link: >
  https://octospacc.altervista.org/2024/08/20/il-linuxxaggio-piu-migliore/
published: true
tags:
  - Android
  - Debian
  - Linux
  - OpenSource
  - Sad
  - Samsung
  - spirito
  - tablet
  - Termux
  - workflow
categories:
  - Senza categoria
title: il linuxxaggio più migliore
date: 2024-08-20 23:53:12
canonical_url:   https://octospacc.altervista.org/2024/08/20/il-linuxxaggio-piu-migliore/
---
<!-- wp:paragraph -->
<p>Lo #spirito da utente #Linux autisticamente fissata è forte con questa faccenda. Credevate che io potessi star facendo chissà cosa tra ieri mattina e stasera, dopo <a href="/microblog-mirror/2024/08/19/linuxaggio-androidico/">l'ultima goduria che ho postato</a>? Assolutamente no, la mia anima è stata consumata come al solito dal demone #opensource. #Sad! O meglio... sad perché non funziona tutto esattamente come voglio, però tutto ciò che ho detto resta valido, e le mie idee sono buone, ma andrebbero esplorate di più (...ancora altri giorni...). Con gli enormi miglioramenti portati da Termux:X11, questa potrebbe quasi essere la soluzione al <a href="https://t.me/c/1383332798/20406">problema della workstation cross-spaziotempo</a> che mi porto avanti da tantissimo... 😔️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:video {"id":8694} -->
<figure class="wp-block-video"><video controls src="{{site.cdnurl}}/assets/uploads/2024/08/lv_0_20240820225630.mp4"></video><figcaption class="wp-element-caption">In breve: un'esperienza desktop Linux comparabile ad un raspino (che brutti ricordi quella sfida...), leggermente meno malata sotto certi aspetti (il #tablet feels so good), ma di più sotto altri (accelerazione grafica? ahaha). Mi sono presa qualche quarto d'ora solo per sistemare le scorciatoie da tastiera, che ora oltre che comode sono convenzionalmente strambe, perché ho dovuto metterne certe che non andassero in conflitto con #Android (o con scrcpy, ma non del tutto), ma per il resto da ieri non è cambiato nulla, se non il tempo buttato. 🙂️</figcaption></figure>
<!-- /wp:video -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Purtroppo non c'è stato verso di eseguire Wine, una cosa che vorrei molto, non perché mi servirà immediatamente, ma perché so che prima o poi la necessità uscirà... Le ho provate tutte, dall'installare build diverse di <a href="https://memos.octt.eu.org/m/JaBkimfNMNyAsye56H6Rvt">box86 e box64</a>, al provare diverse versioni maggiori di Wine, all'usare server X11 diversi da quello di Termux (per scongiurare eventuali problemi che ha dimostrato di avere per altri programmi; BB non funziona). Più di preciso, Wine funziona, e il CMD anche, ma tutte le app grafiche falliscono a creare la finestra... roba noiosa, la lascio su <a href="https://memos.octt.eu.org/m/kZ7EZoZjkdGif8CUYmEtm2">memos.octt.eu.org/m/kZ7EZoZjkdGif8CUYmEtm2</a>. Ci sono altri modi per eseguire app Windows su Android, ma un po' devo ancora vedere, un po' roba che ho provato non funge bene, in ogni caso sarà argomento per la prossima volta, dunque siamo alla frutta. 😭️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Con l'accelerazione grafica siamo molto hit-or-miss, perché il tablet ha la GPU sfigata (aridaje), la Mali, e non solo non c'è quindi il driver Turnip ottimizzato (che è solo per Adreno), ma in generale... quando va bene da potenziamenti prestazionali trascurabili ai processi grafici, e quando va male va malissimo. Nel video si vede come girano tutti belli Chromium (pare vada meglio di Firefox), Kdenlive, Blender (anche se oddio...)... ma sono con il driver <code>llvmpipe</code> (software rendering); con Virgl invece gli ultimi due programmi non partono, mentre Chromium e roba Electron prima impiegano interi minuti a stabilizzarsi dopo essere partiti (in cui l'intero sistema host si freeza!!!), mentre quando ce l'hanno fatta mostrano glitch a caso. Ops. Ho capito che di gaming qui dentro non se ne farà... pure se i giochi nativi Linux partono, avoja. 😪️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Vabbè, Vino a parte, più o meno il bilancio è positivo, e tutto questo sarebbe un ottimo miglioramento al mio #workflow in generale, principalmente per lo sviluppo software (che è l'altra cosa per cui esisto), che in giro con Android puro è sempre stato un problemin. Il tablet ha #Samsung Dex, quindi se prendessi l'hub con HDMI sarebbe comodo da usare anche a casa, mentre quando sono in "mobilità lenta" me lo porto e ho comunque virtualmente tutti gli strumenti desktop che possono servirmi (...finché non mi serve er Frullatore, almeno). Vorrei poi inventarmi qualcosa con egual modus operandi sul telefono (...che ha root e la GPU bona...), utile invece alla "mobilità agile", magari sincronizzando le mie cartelle di lavoro in automatico e aggiungendo una microSD più capiente per installare tutti i programmi anche lì. Ricordando poi, in tutto questo, che Android è sempre lì; le mancanze di questo container #Debian malato (tipo il gamin') le può gestire lui. 🥳️</p>
<!-- /wp:paragraph -->