---
ID: 4544
post_title: trollinux
post_name: trollinux
author: minioctt
post_date: 2024-04-15 23:55:46
layout: post
link: >
  https://octospacc.altervista.org/2024/04/15/trollinux/
published: true
tags:
  - computer
  - Linux
  - Mannaggia
  - ops
  - PC
  - sistema
categories:
  - Senza categoria
title: trollinux
date: 2024-04-15 23:55:46
canonical_url:   https://octospacc.altervista.org/2024/04/15/trollinux/
---
<!-- wp:paragraph -->
<p>Non so a questo punto se davvero è colpa mia o di #Linux o dei demoni, però... negli ultimi giorni stavo vedendo un utilizzo di RAM sempre più anomalo sul #PC, che sommando il conto di memoria dei singoli processi non tornava, e che dopo ore di uptime si spingeva così oltre da saturare tutta la memoria e quindi far andare il sistema in quello stato di soft-freeze allucinante tipico che costringe all hard-reboot (molto ironico a pensarci). 😩️ Zero voglia di capire il perché di questa cosa, ma in ogni caso credo che era comunque da ripulire il #sistema, perché questo non era l'unico problema strano:</p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Da qualche mese sono apparsi problemi con alcuni storage rimovibili... gli NTFS non si montavano o si montavano in sola lettura, le FAT invece si montavano in scrittura solo a volte, un disastro... cacca. 💩️</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Questo successo proprio ieri, stava quasi per depistare i miei test sull'uso di RAM: in qualche modo, la mia EasyCap (almeno su una specifica delle porte USB) si scollegava e ricollegava di continuo (stando al LED che sfarfallava e ai log di sistema), e dopo qualche quarto d'ora mandava pure in freeze o panic il sistema... wow. Siamo tornati ai tempi di Windows 9x, se un dispositivo hot-swappabile malfunzionante manda in mona il #computer intero, #mannaggia al kernel monolitico dello schifo. 😕️</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:paragraph -->
<p>Quindi, si fa prima a piallare tutto. Volevo mettere Debian, perché su server funziona bene, sicuramente meglio di qualcosa a base Ubuntu... nonostante <a href="https://matrix.to/#/!vwmDGYVJvlMFABfAUc:matrix.org/$RMBF5cERXlLlfHJT0yePg4y4G1rsYhDLO2x5JOoJIac">c'è chi dice che su desktop non è il massimo</a>. Boh, casino per mettere la ISO sulla pennetta con Ventoy a parte (che a quanto pare un giorno si è mezza corrotta e da allora non avvia più la roba compressa in NTFS, quindi ho dovuto copiare il file in un modo preciso per non farlo comprimere...), l'installazione va liscia, e... al boot c'è solo la riga di comando di GRUB. #Ops. 😭️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Ora la pazienza è meno di zero, voglio comunque Debian ma a questo punto dico che voglio tenere Linuc Mint, e allora installo LMDE come alternativa che avevo già previsto. (Btw, hanno reso un po' più carino l'installer.) E... stessa rogna con GRUB. Ed è solo a questo punto che mi ricordo che <em>forse</em> devo sistemare nell'UEFI l'ordine di avvio che magari è saltato per aria... e si, dovevo fare solo quello, quindi ho praticamente piallato Debian appena installato per niente. Ma ormai mi tengo la menta edizione debianosa va, che è meglio, è anche tutta settata per il desktop e bellina come la normale menta, ma dovrebbe essere più stabile perché non c'è <a href="https://www.youtube.com/watch?v=rWnnN31QsGM">Uculu</a> di sotto... 💢️</p>
<!-- /wp:paragraph -->