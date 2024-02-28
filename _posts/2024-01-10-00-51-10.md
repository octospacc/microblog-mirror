---
ID: 995
post_title: >
  corruzioni del 3ds, e i thread forse a
  vuoto, forse no
post_name: >
  corruzioni-del-3ds-e-i-thread-forse-a-vuoto-forse-no
author: minioctt
post_date: 2024-01-10 00:51:10
layout: post
link: >
  https://octospacc.altervista.org/2024/01/10/corruzioni-del-3ds-e-i-thread-forse-a-vuoto-forse-no/
published: true
tags:
  - 3DS
  - ahinoi
  - anni
  - cartuccia
  - casino
  - console
  - corrompe
  - corruzioni
  - crash
  - CustomFirmware
  - differenza
  - discorsone
  - divertimento
  - DS
  - dump
  - emulare
  - esperimenti
  - FAT32
  - file
  - flash
  - formattare
  - formattazione
  - gamecart
  - giochi
  - grezzo
  - guerra
  - hardware
  - homebrew
  - ipotesi
  - magagne
  - Mannaggia
  - memorie
  - microSD
  - NDS
  - Nintendo
  - note
  - online
  - opinioni
  - originale
  - problema
  - problemi
  - rimediare
  - risolve
  - rogne
  - ROM
  - scheda
  - schede
  - schedina
  - schifo
  - SD
  - SDCard
  - settori
  - software
  - speculazione
  - spensieratezza
  - svago
  - tecnica
  - thread
  - tool
  - TwilightMenu
  - UNIX
  - utility
  - vita
categories:
  - Senza categoria
date: 2024-01-10 00:51:10
---
<!-- wp:paragraph -->
<p>[sc name="quote-embed-post]2024/01/08/micragnosi-smarfonini-non-adatti-per-il-gaming[/sc]</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Dunque, l'altro giorno accennavo che usare il telefono per #emulare i #giochi del #DS fa #schifo, perché appena cambio app (visto che il mio smartphone dovrebbe essere il mio PC tascabile, quindi mi serve per tante cose spesso quasi insieme) arriva Android a fare pulizia non autorizzata della RAM (a uccidere il processo)... eh vabbè, diciamo pure che va bene (ma non va bene). 😮‍💨️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>...Però poi pure a usare la consolina #originale ci son le #rogne, #mannaggia!!! Sempre ieri ho accennato che sul #3DS è un continuo di scheda #SD che si #corrompe totalmente a caso, causando #problemi di diversa #gravità... ed è una cosa con cui faccio la #guerra da #anni, e si, ho verificato che a livello #hardware la #scheda è bona. ⚒️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Oggi pomeriggio comunque ho perso un sacco di tempo a ricopiare tutti i #file sul PC, #formattare la scheda, e rimettere a posto i file, per #rimediare ancora una volta al fatto che si fosse tutto spaccato e avvenissero #crash nel menù home e nel loader di giochi #NDS. Però ne ho approfittato per cercare e boh, appunto tutti dicono "la #SDcard è marcia/farlocca/consumata" (no), "il #CustomFirmware è corrotto" (no), "dovresti ripartizionare la scheda" (già fatto)... ma qualche spunto utile nuovo l'ho visto:</p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li><a href="https://gbatemp.net/threads/arm9-error-data-abort.558494/">https://gbatemp.net/threads/arm9-error-data-abort.558494/</a><!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Che la mia #microSD non sia propriamente brutta in uno dei modi descritti sopra (comuni), ma abbia questo problema (mai sentito prima) del controller I/O è lezzo? 🧐️</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li><a href="https://gbatemp.net/threads/new-2ds-xl-microsd-card-error.534480/">https://gbatemp.net/threads/new-2ds-xl-microsd-card-error.534480/</a><!-- wp:list -->
<ul><!-- wp:list-item -->
<li>La #tecnica della "quadrupla formattazione": in pratica, visto che tutti i #software in circolazione per formattare le #memorie sono ancora progettati attorno agli hard disk, danno sulle #flash un risultato molto peggiore della preformattazione di fabbrica... combinando 4 programmi si riesce ad apparare, a quanto dice il tizio. 🤯️</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li>Quella tecnica è Windows-centrica però; riguardo #UNIX, un utente (che ingiustamente non è stato cagato) ha scritto dei suoi #esperimenti per replicarne i risultati con #utility libere... c'è molta meno #speculazione e molto più senso; ho potuto ad esempio creare la partizione #FAT32 senza LBA con la misura standard di settori, teste, e cilindri, come dicevano quelle #note (a dire il vero scritte a culo, maremma), ma l'allineamento perfetto dei #settori non l'ho potuto fare, <code>mformat</code> mi da errore coi parametri che ho ottenuto dopo dolorosi quarti d'ora di confusissimi calcoli (sarebbe utile sapere che versione del #tool ha usato). 🥴️</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list --></li>
<!-- /wp:list-item --></ul>
<!-- /wp:list --></li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li>Su #thread misti c'è chi specula che la colpa sia di #TwilightMenu, ma dalla mia esperienza passata e dalla maggior parte delle opinioni #online tenderei ad escludere questa #ipotesi... ma è anche vero che, se mi affidassi alle stesse #opinioni, allora statisticamente le #corruzioni che ho io dovrebbero essere statisticamente impossibili, cosa che evidentemente è falsa. 😩️</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:paragraph -->
<p>Con questa piccola #differenza che ho potuto alla fin dei conti apportare alla #formattazione, vedremo se cambierà o meno qualcosa. Però, ammesso e non concesso che la causa sia #TwilightMenu++ o #nds-bootstrap, ossia i programmi #homebrew che mi permettono di avviare le #ROM NDS senza #schedina dedicata... quale sarebbe l'alternativa? ☠️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>L'ho detto altre volte che, elettricamente, il formato delle #schede [3]DS fa #schifo, a lungo andare il contatto diventa sempre più lasco e addirittura salta in-game (cosa inaccettabile, in quanto risulta sempre in un crash). Questo è un #problema invece ben più conosciuto, ed è il motivo per cui uso praticamente sempre i #dump, anche di quei pochi giochi che possiedo su #cartuccia. Ho pulito tante volte tante schede, e a volte il #casino si #risolve, ma altre volte poi ritorna. 🧽️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Tutto questo #discorsone per dire: nella #vita non c'è #divertimento, non c'è #spensieratezza, non esiste #svago, perché potrei accettare che con gli homebrew escano fuori #magagne ma, #ahinoi, anche con hardware tutto originale, non funziona un cazzo bene. (Non) grazie #Nintendo, per aver creato un tipo di collegamento tra #gamecart e #console così #grezzo. 🗑️</p>
<!-- /wp:paragraph -->