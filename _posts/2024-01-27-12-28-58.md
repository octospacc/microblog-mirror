---
ID: 1368
post_title: FreshRSS saltospavento
post_name: freshrss-saltospavento
author: minioctt
post_date: 2024-01-27 12:28:58
layout: post
link: >
  https://octospacc.altervista.org/2024/01/27/freshrss-saltospavento/
published: true
tags:
  - aggregatore
  - corrotto
  - database
  - dati
  - errori
  - feed
  - file
  - FreshRSS
  - log
  - problema
  - rogne
  - RSS
  - server
  - software
categories:
  - Senza categoria
date: 2024-01-27 12:28:58
---
<!-- wp:paragraph -->
<p>Stamattina mi è venuto un colpo quando ho notato che il mio #FreshRSS non ha accumulato nessun nuovo elemento da ieri sera... cosa che ovviamente è sintomo di un problema, perché ho quasi 700 fonti #RSS, di cui alcuni che normalmente non stanno mai in silenzio. 😩️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Vado a vedere nei #log, ed è da ieri sera che a caso è iniziato uno spam di #errori "<code>SQL error addEntry: HY000: 21 bad parameter or other API misuse while adding entry in feed 417 with title:</code> [...]". Stranamente 1 #feed ha continuato ad aggiornarsi a quanto pare, ma la maggior parte no. Ovviamente, il file del #database in sé posso scommettere che non si è corrotto, perché è su archiviazione interna che si è altrimenti dimostrata affidabile, e sul mio sistema non sono successe cose pazze ultimamente... ma magari si è #corrotto mesi e mesi fa (possibile, perché mi dava problemini di altro tipo da tanto tempo), quando ancora non avevo il #server buono che ho ora, ma un Raspino che saltava ogni giorno. O magari semplicemente l'universo mi odia, sarebbe plausibile considerando il resto della mia vita. 🌋️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Ovviamente, ho cercato sul web, e nessuno ha mai avuto il mio stesso identico #problema. Fortunatamente, sembra che si sia tutto risolto creando un nuovo #file di database (copiando prima tutti i #dati dal vecchio, con <code>sqlite3 old.sqlite ".dump { tutte le tabelle }" | sqlite3 new.sqlite</code>); ha dato qualche errore riguardo una manciata di entry al momento della clonazione, ma intanto ora il mio #aggregatore funge senza #rogne. La mattinata è salva, posso risparmiarmi dal dover tirare un numero di imprecazioni al cielo pari al numero di sorgenti da importare su un nuovo profilo o #software. 😤️</p>
<!-- /wp:paragraph -->