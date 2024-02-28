---
ID: 1440
post_title: Niente ETH e niente docc
post_name: niente-eth-e-niente-docc
author: minioctt
post_date: 2024-02-02 01:42:32
layout: post
link: >
  https://octospacc.altervista.org/2024/02/02/niente-eth-e-niente-docc/
published: true
tags:
  - casino
  - criptomoneta
  - devnet
  - Ethereum
  - problema
  - ProofOfStake
  - server
  - software
  - spacc
categories:
  - Senza categoria
---
<!-- wp:paragraph -->
<p>Per stavolta vi risparmio i preamboli, magari approfondirò a parte, ma in pratica mi sto avviando per davvero per la moneta #Spacc, per fare la mia rete personale basata su #Ethereum in modalità #ProofOfStake, con blackjack e squillo di lusso. (Creare un token $SPACC su reti normali, ahimè, costa troppo). #Problema: è un #casino. 😭</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Un sacco di articoli in giro sono stati scritti prima del fork PoS, quindi già quelli non vanno bene per capire come mettere questa robaccia sul mio #server. Qualche risorsa nuova si trova, ma è principalmente per creare #devnet, non proprio reti private a scopo di produzione. Ovviamente si può fare, Ethereum lo supporta praticamente nel protocollo (lo so che non è la terminologia corretta questa, abbiate pazienza un attimo), però in giro gli aiuti scarseggiano. Ma evidentemente il <em>trolling involontario</em> è molto presente. 😫</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Ho trovato <a href="https://docs.prylabs.network/docs/advanced/proof-of-stake-devnet">questo articolo</a>, e quindi sono andata sulla repo Git menzionata a scaricare la roba (configurazioni personalizzate per i programmi ufficiali, nessun #software speciale) e tentare di avviarla, ma lo script di pre-pulizia (o meglio; di post-pulizia, che ti viene però detto erroneamente di farlo girare anche dall'inizio) è fatto a culo... e mi ha cancellato tutti i contenitori Docker che avevo sul sistema, che erano roba che ho sempre avuto e non centravano nulla. ...#MANNAGGIA! Soprattutto perché alla fine non ha nemmeno funzionato, una buona parte dei container veniva terminata da sola. Ho anche provato un fork delle configurazioni menzionato in una issue (di un altro problema): quello funziona ma non è adatto, perché non persiste i dati della rete, che vengono persi al termine dell'esecuzione. Non posso vincere. ☠️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Almeno, i container Docker che mi servivano li ho potuti ri-tirare su subito, avendo i loro file di configurazione tutti conservati su disco. A parte uno, che ho dimenticato di vedere e farò domani. Però mamma mia, scriveteli meglio sti scriptini. Ora però mi sa che dovrò leggere la documentazione ufficiale e soffrire per far funzionare tutto questo come serve a me... per cui è importante ricordare le parole del saggio: <em>la documentazione è fatta per essere scrollata, non letta; se l'utente ha bisogno di leggerla per capire, allora è scritta male.</em> <strong>Mic drop, goodnight</strong>. 🥱</p>
<!-- /wp:paragraph -->