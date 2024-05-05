---
ID: 4829
post_title: 'can&#8217;t write only write!!'
post_name: cant-write-only-write
author: minioctt
post_date: 2024-04-23 23:59:21
layout: post
link: >
  https://octospacc.altervista.org/2024/04/23/cant-write-only-write/
published: true
tags:
  - codice
  - hack
  - HakujOS
  - OS
  - pseudoOS
  - sistema
  - web
categories:
  - Senza categoria
title: 'can&#8217;t write only write!!'
date: 2024-04-23 23:59:21
canonical_url:   https://octospacc.altervista.org/2024/04/23/cant-write-only-write/
---
<!-- wp:paragraph -->
<p>Sembra che sto di nuovo perdendo l'abitudine di riuscire a scrivere abbastanza qui negli ultimi giorni, e la cosa non mi piace granché, ma questi nuovi progetti un po' mi stanno rapendo quindi non ho per la testa nemmeno la necessaria entropia per scrivere scemenze. Comunque, stasera con la scusa del mio compleanno (il tempo scorre...) ho visto degli amici, quindi non ho potuto fare tantissimo sul mio #pseudoOS, solo robine tra stamattina e oggi pomeriggio (e tra poco vado a mimir, sembra che io stia riuscendo a prendere abitudini migliori):</p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Ho fatto un nuovo componente <code>Shell</code> con una grossa API <code>contentRunner</code>, praticamente ciò che dovrebbe occuparsi di far partire nuovi processi applicativi, di qualunque tipo, ma che hanno requisiti diversi dietro le quinte. Btw, a causa di questo devo riprogettare il componente <code>Proc</code>, che prima avevo fatto solo per prototipare e ora non va affatto bene (per il momento questa API lo bypassa completamente, ma a lungo termine non andrà bene). 🙄️</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Devo fare un po' i salti mortali per far fungere programmi negli <code>iframe</code> che si integrino con il #sistema al massimo, considerando che è un requisito per me fondamentale quello che il sistema funzioni anche senza alcun tipo di server di backend... già far comunicare i programmi nel frame con quelli nella normale finestra è un bel disastro, ma poi ho dovuto inventarmi anche qualche #hack per far caricare ai frame risorse presenti nel file system virtuale, cosa che a quanto pare nessun altro #OS #web implementa correttamente. E non ho nemmeno finito... 😊️</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Ho già provato a fare dei test riguardo il theming dell'interfaccia utente, precisamente con <a href="https://khang-nd.github.io/7.css/">7.css</a>, ma... è un altro disastro. Questa libreria usa nomi di classi talmente generici e altri attributi talmente specifici che so già che prima o poi usciranno problemi se volessi usarla così stock... ho anche quasi provato ad implementare qualche hack per sistemare uno dei problemi, però no, gli altri rimarrebbero. E con altri possibili temi sarà la stessa questione! Dato che non posso forkare e mantenere infiniti temi per colpa di minuzie, piuttosto credo che mi inventerò qualcosa per patchare i fogli di stile come serve a me... o aggiungendo un processo di build apposito, o implementando processi di patching al volo (con caching) direttamente nel sistema. ☠️</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":4830,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="{{site.cdnurl}}/assets/uploads/2024/04/image-7-960x484.png" alt="" class="wp-image-4830"/><figcaption class="wp-element-caption">Ho tra l'altro deciso almeno di crearla una repo Git per il progetto, almeno per ora, perché andare avanti senza conservare la minima history può essere problematico considerando che sto pesantemente prototipando. Man mano che farò aggiornamenti potrete testare #HakujOS su <a href="https://hakujos-octtspacc-4c1a4e1f8925ca11f7fa313fd803b35d8380d2e9f2d40.gitlab.io/">https://hakujos-octtspacc-[...].gitlab.io/</a>... ma ora non c'è proprio nulla da provare lì, al massimo vi può incuriosire leggere il #codice, boh. 💣️</figcaption></figure>
<!-- /wp:image -->