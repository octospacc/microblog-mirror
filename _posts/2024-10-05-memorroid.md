---
ID: 9995
post_title: 'memorroid&#8230;'
post_name: memorroid
author: minioctt
post_date: 2024-10-05 12:02:12
layout: post
link: >
  https://octospacc.altervista.org/2024/10/05/memorroid/
published: true
tags:
  - Android
  - archiviazione
  - microSD
  - problema
  - SDCard
  - storage
categories:
  - Senza categoria
title: 'memorroid&#8230;'
date: 2024-10-05 12:02:12
canonical_url:   https://octospacc.altervista.org/2024/10/05/memorroid/
---
<!-- wp:image {"id":10006,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="{{site.cdnurl}}/assets/uploads/2024/10/Screenshot_20241005-113739_Samsung-Notes-edited.png" alt="" class="wp-image-10006"/><figcaption class="wp-element-caption">Inevitabile che, dopo una microscopica frazione di pomeriggio totalmente blessata dalla flessibilità di #Android e l'epicità del tablet... la sera passata dovesse essere piena di rancore, a causa delle strambità di Android e i disastri che causano i vari OEM, in modi anche molto intricati. ...<strong>Cosa accade quando l'archiviazione non basta?</strong> 💀️</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Cioè, non scherziamo, la flash su questi aggeggi non basta mai. Non 10 anni fa, non 5 anni fa, non oggi, e non nelle prossime generazioni, se il bloatware continua a crescere come oggi ma gli OEM restano ipertirchi. Da più di un decennio vivo costantemente la sensazione di memoria piena, e di dover sacrificare il bello per il necessario... (e quindi, in cosa i computer moderni sono meglio dei vecchi, se questo #problema ancora rimane?) 😭️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Spero di non comprare mai Androidi senza slot #microSD (nonostante temo in futuro non sarà possibile), perché è veramente l'unica salvezza per queste situazioni... Non solo le magiche schedine fanno conservare infiniti file personali in più (per cui si pretende di avere accesso immediato, sempre e ovunque, senza dipendenze di rete o chiavette penzolanti), ma... Uh, <em>ma niente</em>; si possono mettere solo file, non altri dati, a dire il vero. 🤨️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p><a href="/microblog-mirror/2024/10/04/zzzming/">Ieri la microSD ha salvato il mio culo per installare <em>ZZZ</em></a>, visto che da un lato ho potuto spostarci file che avevo da parte (e non potevo cancellare), mentre dall'altro ho potuto usare la funzione classica di Android per spostare qualsiasi app e non fargli occupare la memoria interna, ma... In questo caso <em>ma si</em>, perché purtroppo questo non è un modo per espandere l'archiviazione del dispositivo all'infinito, riguardo le app: non sposta anche i dati utente (<code>/data/data/...</code>), che rimangono su memoria interna. 😩️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Problemone, perché OK, spostando APK e librerie di tutte le app ho liberato quasi 4 GB, che non è poco... ma ci sono varie app che il grosso lo hanno come dati utente. A parte Termux, che mi prendeva 21 GB (16 dopo un po' di pulizia) ma è un caso speciale (perché posso fare magheggi per spostare la sua cartella dati sulla #SDcard), i giochi grossi moderni fanno ahimè tutti così... <em>ZZZ</em> mi prende 23 GB, e quindi (sul tablet da 64 GB) io ora non potrei nemmeno installare anche <em>Fortnite</em> e <em>Genshin Impact</em>; non ci sarebbe spazio, anche con la microSD più capiente della galassia. 💩️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Questo sistema di spostamento esiste dalla preistoria (Android 2), ma in realtà non l'ho mai davvero visto su molti dispositivi...!? Non ho capito se sono gli OEM a bloccarlo, non ricordo se AOSP ha ancora questa cosa o no (ma certamente la aveva), o se è Samsung nello specifico a renderla disponibile su tutti i suoi dispositivi... al contrario di tipo tutto il resto del mondo. 💣️ (C'è su tutti i miei Samsung, ma non su Xiaomi, Huawei, e il <em>Clempad</em>.)</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Il lato brutto della funzione è questo, che non sposta i dati... ma d'altro canto questa semplicità è una forza, nel senso che le prestazioni francamente non degradano. (Le app partono qualche frazione di secondo più lente, ma per quello che io vedo girano proprio uguali.) Allora non capisco... e nemmeno Google, visto che da Android 6 implementò un'alternativa probabilmente peggiore, nel tentativo di tappare i buchi della vecchia funzionalità: l'<em>Adoptable #Storage</em>. 🕳️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Con quest'altra cosa, le memorie vengono fuse, quindi è come se il sistema ne avesse semplicemente una più grossa, cosa che tappa anche il problema delle app che non fanno scegliere la posizione di memorizzazione dei dati. Però, se non ti rendi conto di cosa fai e che memorie usi, il dispositivo può rallentare, e possono avvenire suppongo crash o corruzioni (mai successo a me), e per questo la maggior parte degli OEM disattivano del tutto la formattazione come #archiviazione adottabile... evitare lamentele degli utonti. 🔪️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>In realtà, su MIUI 14, l'opzione è ancora presente nel menu di info archiviazione di AOSP, che ovviamente è nascosto e si raggiunge solo facendo vari giri di activity. A parte i glitch grafici, benissimo: se dovesse servirmi (anche solo come metodo per cifrare la scheda SD) l'ho qui. Ma sul tablet con OneUI 4.1... ops, è rimasto solo il bottone per fare una normale formattazione! E io che letteralmente non ho spazio, mi attacco? 🤡️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Cercando ancora, mi ricordo che si potrebbe forzare l'adozione tramite comandi shell... e si sa da sempre, perché, già quando la funzione era nuova, OEM come Samsung hanno detto "<em>non sia mai!</em>". Al momento non provo, perché la scheda va innanzitutto cancellata, e dovrei comunque metterne una almeno da 64 GB per avere un'utilità pratica... e proprio per questo, in realtà, non canto ancora vittoria: ci sono utenti che riportano il metodo CLI non aver funzionato sui loro dispositivi... 🥺️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Vabbè, aiuto, non volevo scrivere così tanto. Per chi anche ha questi problemi, ho raccolto i soliti link: <em><a href="https://memos.octt.eu.org/m/Yygc4tT4JeWUmVdbkvvZo7"><strong>sul metodo classico di spostamento delle app</strong></a></em>, e <em><a href="https://memos.octt.eu.org/m/mCorscqv5RPpnB6s9SJ4a3"><strong>sulle robe dello storaggio adoptabbile</strong></a></em>. 🥰️ (Se gli ultimi metodini non funzionano, sarò ovviamente spacciata, perché l'unica soluzione sarebbe usare Link2SD, che richiede root, che sul telefono ho ma sul tablet no.)</p>
<!-- /wp:paragraph -->