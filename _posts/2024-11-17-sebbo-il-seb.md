---
ID: 11452
post_title: sebbo il seb
post_name: sebbo-il-seb
author: minioctt
post_date: 2024-11-17 23:22:38
layout: post
link: >
  https://octospacc.altervista.org/2024/11/17/sebbo-il-seb/
published: true
tags:
  - browser
  - bypass
  - Fiddler
  - hacking
  - SafeExamBrowser
  - SEB
  - stratagemmi
categories:
  - Senza categoria
title: sebbo il seb
date: 2024-11-17 23:22:38
canonical_url:   https://octospacc.altervista.org/2024/11/17/sebbo-il-seb/
---
<!-- wp:paragraph -->
<p>Mamma mia non avete idea di stasera come RIDO. Ho trovato non uno, ma ben due (2!!!) #stratagemmi che rompono due delle funzioni di sicurezza di <strong><em>Safe Exam Browser</em></strong>... che oggi pomeriggio mi trovavo a dover installare, perché mi servirà a giorni all'università (perché gli sfaticati del dipartimento IT or smth si seccano di rendere i PC di lì delle workstation sicure, quindi tocca a noi, capì?). 😇️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Ma non mi lamento. Se all'epoca del TOLC spesi per necessità due giornate appresso alle macchine virtuali, manomettendo diverse funzionalità di Windows in VM <a href="https://t.me/c/1383332798/20058">per far credere al SEB di essere su hardware reale</a>, perché sul portatile non avevo Windows... Ora era più uno sfizio, nonché un'esercitazione delle mie competenze informatiche, che fa più che bene. 😈️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>La prima cosa che ho fatto (anche perché l'esame che devo fare è tenuto in modo stronzo, sarebbe una bella ripicca contro chi non ci da le tracce delle sessioni vecchie per studiare) è vedere se riuscissi in qualche modo a registrare lo schermo. #SEB non solo blocca gli schermi esterni, ma anche diversi programmi di registrazione... Peccato che si fa mettere in ginocchio dal fottutissimo <em>TightVNC Server</em>, quindi si, basta collegarsi da un altro computer per vedere TUTTO. ☠️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Well, that was easy. Non si può usare per farsi <em>direttamente</em> aiutare durante un esame eh, perché non funzionano gli input di mouse e tastiera (nemmeno eseguendo il server VNC sotto <code>nt authority\system</code>, maremma), ma ovviamente il poter duplicare lo schermo ha utilizzi ottimi, in primis esfiltrare domande e risposte dalla sessione (e il fatto che non richieda cavi video è solo meglio). 💨️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Però zamn... impossibile non si possa fare nulla per avere accesso ad altre risorse durante l'esame, tipo umma umma (ma sempre solo a scopo dimostrativo ovviamente). Quindi, dopo aver perso fin troppi quarti d'ora con ChatGPT, cercando di usare la WinAPI per far spawnare un qualche tipo di finestra sullo schermo da sopra al safe #browser (che scommetto si possa fare, ma non c'ho il tempo stasera di studiarmi bene le API), ho cambiato strategia. 😼️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>E cambiare strategia è servito perché, dopo aver deciso che avrei semplicemente usato #Fiddler per modificare tutto il traffico HTTP[S] in locale, ci ho messo solo 10 minuti da idea a soluzione! Figa, installiamo il certificato MITM, controlliamo che funzioni, scriviamo qualche riga nel FiddlerScript, e taaaac, ecco che iniettiamo HTML arbitrario dentro il browser blindato, eddai... 🤯️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":11453,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="{{site.cdnurl}}/assets/uploads/2024/11/image-6-960x542.png" alt="Sessione di esame sicura demo Moodle in SEB sul portatile, visto attraverso il fisso con VNC, e alert() JS che dice &quot;the safe browser exam is not safe today!!! ☠️☠️ RIP BOZO 😹️😹️😹️&quot;" class="wp-image-11453"/><figcaption class="wp-element-caption">Che drip che ho cioè. Proprio l'incubo di qualunque professore. Questi che sviluppano i browser sicuri possono mettere tutti i blocchi che vogliono, ma io sono una ragazza magica meridionale, il modo di spaccare tutto lo trovo sempre. 💣️💣️💣️</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Io ora per testare gli ho fatto semplicemente mettere uno script che fa <code>alert()</code> (qui btw: <a href="https://memos.octt.eu.org/m/mzSguqvHXye7BeVQ6YnZXy">https://memos.octt.eu.org/m/mzSguqvHXye7BeVQ6YnZXy</a>), ma ovviamente potendo modificare l'HTML di qualsiasi pagina si può fare di tutto, anche mettere un iFrame che naviga a qualunque sito embeddabile, OPS. 🤣️ (E qui ci sono pagine di test per verificare che SEB partisse senza rilevare stranezze: <a href="https://memos.octt.eu.org/m/UpwUCULSF4MNsteFZ2Bc5e">https://memos.octt.eu.org/m/UpwUCULSF4MNsteFZ2Bc5e</a>)</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>...Forse oggi pomeriggio era meglio ripetere, piuttosto che cazzeggiare appresso al rompere sto browser? Meh... se mi fossi messa a studiare adesso non avrei il corpo pieno di happy chemicals (ancora tremo dalla risa!!!), e inoltre sarebbe stato content in meno, quindi no. Ancora una volta, grazie alle mie manine che non stanno ferme, viviamo proprio nel migliore dei mondi possibili. 👌️</p>
<!-- /wp:paragraph -->