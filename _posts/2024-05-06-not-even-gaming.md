---
ID: 5234
post_title: not even gaming!!!
post_name: not-even-gaming
author: minioctt
post_date: 2024-05-06 16:10:45
layout: post
link: >
  https://octospacc.altervista.org/2024/05/06/not-even-gaming/
published: true
tags:
  - difetti
  - FrameNX
  - gaming
  - homebrew
  - NintendoSwitch
  - pazienza
  - PC
  - problemi
  - switch
categories:
  - Senza categoria
title: not even gaming!!!
date: 2024-05-06 16:10:45
canonical_url:   https://octospacc.altervista.org/2024/05/06/not-even-gaming/
---
<!-- wp:paragraph -->
<p>Torniamo a parlare <a href="/microblog-mirror/series/troppo-cloud-gaming/">del cloud gaming appezzottato</a>, perché la mia soluzione richiede evidentemente ancora perfezionamenti. L'importante è avere #pazienza e sperimentare il necessario man mano, e forse dopo abbastanza settimane avrò effettivamente il perfettissimo setup... ormai sono fin troppo dentro questa questione per tirarmi indietro. 😱</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>La prima cosa è che devo al più presto ottenere la scheda di cattura ultra-cheap, perché SysDVR è un problema per l'esperienza utente. (Devo ancora ordinarla in realtà, stavo nel frattempo però cercando altra roba che mi serve su AliExpress, così da fare un solo ordine e ridurre l'inquinamento.) A parte il fatto che (come ho già detto) i menu di sistema non sono specchiati, e quindi in certi casi devo guardare la webcam, i #difetti sono vari: dovendo fisicamente collegare la console al PC anziché alla dock, può capitarmi di sbagliare qualcosa, soprattutto stando di fretta come stamattina. Anche perché, collegando direttamente al PC, la batteria si appiattisce troppo velocemente, quindi devo aggiungere il cavo Y, e quindi complessità (che comunque non è abbastanza per permettere la ricarica, ma solo una scarica più lenta, lol). 🗑️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Stamattina, tra il dover ricaricare il telefono, l'evitare di perdere il bus, e finire di vestirmi, ho mischiato i collegamenti tra Switch e PC, cavo Y e cavo USB-C, e l'ho realizzato solo fuori casa, quindi riuscivo a collegarmi solo tramite rete... ci ho anche provato, ma evidentemente le prestazioni sono totalmente inadeguate per giocare. La cosa più logica da fare è stata messaggiare mio padre a casa e chiedergli il piacere di risistemare i cavi nel modo giusto e, dopo un po' di confusione perché gli avevo dato indicazioni parzialmente errate sullo stato presente dei collegamenti, ha sistemato tutto e la console è apparsa sul PC. Eccetto che ha anche panicato nel frattempo, e quindi ho dovuto chiedere a mio padre di premere i tasti del volume per riavviarla. E poi, visto che sulla schermata di blocco lo schermo non rimane acceso sempre, non ho fatto in tempo a premere tasti per sbloccare e ho dovuto chiedere anche questo a mio padre. 🪃</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Nel frattempo, i #problemi ci sono anche per quanto riguarda gli input del gamepad, ovviamente... Ieri ho scoperto mio malgrado (perché pensavo di provare ancora a giocare fuori casa, ma ecco che non ho potuto) che sys-botbase in certi casi (chissà quali!) può buggarsi e non interpretare più i comandi che riceve, costringendo ad un riavvio del sistema. La soluzione sarebbe magari riavviare ogni volta prima di uscire di casa, così da stare senza pensieri. Intanto però scopro anche di dover migliorare la gestione degli input sul mio programma, aggiungendo quantomeno una deadzone per gli analogici, altrimenti spesso può succedere che gli input driftino una volta rilasciati, e capite che questo è un bel problema. (Chiaramente, i giochi che usano solo i tasti sono già perfettamente operabili, ma quelli e solo quelli lo sono anche su NXController, dove invece gli stick finiscono per essere interpretati digitalmente e quindi fanno movimenti estremi.) 🧼</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Segnalo comunque che ho scoperto di <a href="https://github.com/Koi-3088/USB-Botbase">usb-botbase</a>, che fa la stessa cosa della versione sys ma appunto via USB, e quindi dovrebbe sicuramente essere più stabile (e forse riesce a risvegliare la console dalla modalità riposo, ma non so). Se non programmassi di passare a scheda di cattura, e quindi continuassi a tenere collegata la Swiss al PC, lo implementerei subito su #FrameNX. Si vede che continuerò ad usare il WiFi per inviare gli input allora, con le giuste accortezze... e se proprio proprio tutto va male (ma è difficile dai), allora comprerò un Arduino e implementerò il protocollo per usare quello come controller simulato via hardware, e ciò sarebbe effettivamente infallibile (e andrebbe anche su console non modificate, figata). ⛓️</p>
<!-- /wp:paragraph -->