---
ID: 8930
post_title: linuxocto per il sitocto
post_name: linuxocto-per-il-sitocto
author: minioctt
post_date: 2024-09-01 21:49:19
layout: post
link: >
  https://octospacc.altervista.org/2024/09/01/linuxocto-per-il-sitocto/
published: true
tags:
  - "998627"
  - compilare
  - idea
  - kernel
  - Linux
  - nota
  - note
  - postocto
  - sorgente
  - source
categories:
  - Senza categoria
title: linuxocto per il sitocto
date: 2024-09-01 21:49:19
canonical_url:   https://octospacc.altervista.org/2024/09/01/linuxocto-per-il-sitocto/
---
<!-- wp:paragraph -->
<p>Ecco che ieri, like anti-clockwork, non è uscito alcun #postocto, perché... stavo cercando di fare una cosa estremamente cursata, che penso da mesi e mesi ma che non avevo mai avuto voglia, e invece ieri mi è salito lo sghiribizzo: installare Windows e #Linux sulla stessa partizione, e non ho avuto manine per altro... (Nemmeno per.........) 😳</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Ed ecco che oggi sono qui a postare, ma... il piano pazzoide per ora è fallito, nessuno dei miei modi ha funzionato, e quindi devo abbassare la priorità del progetto. E quindi, è proprio vero che, ogni qualvolta si fanno due passi avanti, è necessario farne pure uno indietro. Non esistono più le mezze stagioni, e il 2025 sarà l'anno del #Linux desktop, questa volta è sicuro, non come tutti i 20 anni precedenti. 😤</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Ed è per questo, e infiniti altri luoghi comuni che non c'azzeccano 'na mazza, che oggi ho pubblicato allora una #nota su un argomento diverso, che sarebbe comunque finito in coda, <strong>Compilare e installare il kernel Linux da #sorgente</strong>: <strong><a href="https://sitoctt.octt.eu.org/it/note/2024-09-01-Compilare-e-installare-il-kernel-Linux-da-sorgente/">https://sitoctt.octt.eu.org/it/note/2024-09-01-Compilare-e-installare-il-kernel-Linux-da-sorgente/</a></strong>!!! 🌽🍿🧨🎉🤯 (Come tutte le #note, subirà aggiustamenti man mano, accetto anche pull request.)</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Senza approfondire troppo, la mia #idea era di installare sia Linux che Windows su una singola partizione BTRFS, sfruttando il bootloader Quibble per avere la compatibilità per quest'ultimo, ma <a href="https://github.com/maharmstone/quibble/issues/88">su build di Windows troppo recenti non vuole andare</a>. Allora, piuttosto, ricordandomi del driver NTFS moderno per Linux, che funziona bene ed è integrato nel kernel <a href="https://www.phoronix.com/news/Linux-6.9-Dropping-Old-NTFS">in via definitiva da qualche mese (Linux 6.9)</a>, quasi quasi voglio provare la configurazione opposta, da lato oscuro... e sull'installazione di Linux su NTFS ci siamo, ma sull'avvio proprio no. Poopie. Comunque, visto che per avere il driver ganzo ho dovuto compilarmi io il kernel (<a href="https://bugs.debian.org/998627">bug #998627, grazie Debian</a>, ti odio), ho pensato fosse una cosa buona da tenere scritta. 🤢</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Diciamolo onestamente comunque, dai, era tutta una nuova scusa per fare il primo nuovo post sul nuovo sitocto, sfruttando al meglio la novità mentre che è nuova e fresca; avere un post che sa di nuovo sul sito rifatto a nuovo come quando 2 anni fa era nuovo... e in questo senso ho raggiunto l'obiettivo. Certo però, scrivere come #compilare il #kernel Linux, seppur comunque con il mio stile magico, non è come scrivere come fare qualcosa che nessuno al mondo che sia mentalmente in salute fa con gran nonchalance... il kernel è compilato da fin troppa gente. 😩</p>
<!-- /wp:paragraph -->