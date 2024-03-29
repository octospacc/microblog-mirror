---
ID: 3609
post_title: volpepivvuaiutooo
post_name: volpepivvuaiutooo
author: minioctt
post_date: 2024-03-25 00:40:11
layout: post
link: >
  https://octospacc.altervista.org/2024/03/25/volpepivvuaiutooo/
published: true
tags:
  - Android
  - app
  - applicazioni
  - browser
  - complicato
  - Firefox
  - idea
  - informazioni
  - manifest
  - metadati
  - mobile
  - Mozilla
  - PWA
  - siti
  - standard
  - test
  - userscript
  - web
  - webapp
categories:
  - Senza categoria
title: volpepivvuaiutooo
date: 2024-03-25 00:40:11
canonical_url:   https://octospacc.altervista.org/2024/03/25/volpepivvuaiutooo/
---
<!-- wp:paragraph -->
<p>Bene, #Firefox mi sta facendo più o meno <em>scimunire</em> per bene per quanto riguarda il supporto alle #webapp progressive (su #mobile dico, su desktop non ci pensate nemmeno, Mozilla è <em>capa tosta</em>). Ho perso veramente le ultime ore a capire perché cavolo Chromium accetta di buon grado anche il più scarno dei #manifest, permettendo senza fatica di raggiungere l'obiettivo di una pagina web che ha la sua finestra dedicata che sembra nativa... mentre sulla volpe un sito si installa bene, un altro si installa ma manca l'icona, un altro ancora non si installa e quindi magari ha l'icona perfetta però si apre come scheda del #browser. 🥴️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Ovviamente, anche #Mozilla Developer Network manca di #informazioni soddisfacenti a riguardo: certamente potrei in teoria esagerare e implementare tutti i #metadati possibili, ma visto che viviamo nel mondo reale devo chiedermi qual è il minimo sindacale. Dopo qualche #test, non ho alcuna risposta definitiva, ma almeno delle linee guida generali di cosa mettere <a href="https://developer.mozilla.org/en-US/docs/Web/Manifest">nel manifest</a> si:</p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li><code>name</code>, <code>display</code>: in teoria sono obbligatori, ma francamente anche se non lo fossero sarebbero da mettere ugualmente, quindi non ho manco provato senza; il nome della app serve, così come serve specificare se vuoi che vada a schermo intero o lasci almeno la UI del sistema operativo (e/o quella del browser, a cui io dico no grazie)</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li><code>start_url</code>, <code>scope</code>: non so se per solo uno dei due parametri o entrambi ma, se non si impostano correttamente, magari la #app si installa pure e funziona ugualmente (in loro assenza, da standard il browser dovrebbe usare l'URL corrente per le sue considerazioni), ma ho notato che su Firefox può succedere che l'icona non viene visualizzata; anche questi, quindi, è bene metterli</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li><code>icons</code>: questo è un array di oggetti che è ancora più #complicato, ma per farla breve, serve almeno un'icona che sia in formato PNG per far rilevare la pagina come #PWA, e nello specifico ne serve una che sia abbastanza grande (128x128 è il minimo credo? almeno sul mio dispositivo, in realtà non so se su altri cambia, però Chromium fa in ogni caso meno capricci) per avere una scorciatoia di lancio che abbia effettivamente un'icona, e non la prima lettera del nome; i parametri <code>sizes</code> e <code>purpose</code> rendono tutto ancora più incasinato, se si ha 1 sola icona si fa prima a settare entrambi come <code>"any"</code> (però intanto il <code>type</code> sembra si possa omettere)</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:paragraph -->
<p>Perché mi interessa tutto questo? Perché non solo dovrei sistemare le mie #applicazioni, che appunto non si installano tutte come dovrebbero (e per alcune dovrei anche implementare i Service Workers per farle andare offline, ma quella è un'altra storia), ma perché fin troppe app #web programmate da altri non hanno proprio la decenza di supportare un minimo lo #standard, essendo pensate come #siti vecchio stile, e quindi non le si riesce ad usare in maniera soddisfacente su mobile. Volevo fare un mio browser nativo (wrapper dell'Android System Webview banalmente) <a href="https://gitlab.com/octtspacc/browserocto">ai tempi come soluzione</a>, però non solo credo rimarrà nel limbo per sempre, ma non potrei mai implementare tutte le cose che mi sono utili in navigatori completi come Firefox e di cui giornalmente giovo, quindi è chiaro che la soluzione vera è semplicemente apparare quest'ultimo. ⛏️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Questa #idea mi è venuta circa stamattina senza alcun trigger particolare (ormai le mie migliori sono sempre così), e ho provato a cercare "un modo per forzare qualunque sito come PWA su #Android", cosa che avevo già fatto tempo fa senza arrivare a nulla, e ho quantomeno trovato un #userscript, <a href="https://greasyfork.org/en/scripts/454691-pwa-everything">questo qui</a>. Ha però un sacco di problemi (tra cui quelli che mi sono <em>scimunita</em> per levigare un attimino), quindi tant'è che ho fatto il mio ora con lo stesso meccanismo: <a href="https://greasyfork.org/en/scripts/490784-pwas-anywhere"><strong>https://greasyfork.org/en/scripts/490784-pwas-anywhere</strong></a>. In pratica genera al volo un manifest e lo inietta in qualunque pagina se questa non include già un suo, così da farlo rilevare al browser. Testato su vari siti e, nonostante i punti ancora da sistemare, è meglio avere lui che non avere nulla; però tra tutti quelli su cui ancora non funziona, ci sono i sitarelli di Google, mannaggia (più tanti altri ancora non provati)... dovrò aggiustare, e qualche metodo lo ho già in testa. 😳️</p>
<!-- /wp:paragraph -->