---
ID: 10087
post_title: gamfabbbricagio
post_name: gamfabbbricagio
author: minioctt
post_date: 2024-10-07 17:39:04
layout: post
link: >
  https://octospacc.altervista.org/2024/10/07/gamfabbbricagio/
published: true
tags:
  - 3D
  - engine
  - framework
  - Godot
  - Java
  - Kotlin
  - libGDX
categories:
  - Senza categoria
title: gamfabbbricagio
date: 2024-10-07 17:39:04
canonical_url:   https://octospacc.altervista.org/2024/10/07/gamfabbbricagio/
---
<!-- wp:paragraph -->
<p>Dopo la mia <a href="2024/06/13/softwarepostaggio/">disamina arrangiata di qualche mese fa su librerie varie per sviluppamenti videoludici</a>, ora devo ritornare sulla cosa, perché in quel momento ho considerato solo roba 2D... e, principalmente, per quello vale ciò che ho già detto; però, tra ieri e oggi, stavo guardando meglio altre due opzioni, che sarebbero invece ideali per il 3D, visto che avrei in mente qualche <em>progetto segreto di <a href="https://bbs.spacc.eu.org/old/viewtopic.php?t=105">porting umma umma</a></em> che al momento non voglio dire. 🤫️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>In questo caso, avere un #framework completo di tanta roba specifica fa comodo, visto anche che il funzionamento interno del #3D non è qualcosa che programmi da zero dalla sera alla mattina. Però, gli altri requisiti restano uguali... poter programmare in qualunque situazione, con qualunque hardware (cosa che squalifica immediatamente Unity ed Unreal), usando un linguaggio non marcio (che gestisca la memoria per me, che non crashi in modo misterioso dicendo solo "<em>segmentation fault</em>", la cui API non si rompa da una versione all'altra rendendo tutto incompilabile, e con una sintassi che non mi faccia piangere mentre dormo... mamma mia quanti linguaggi odio io), e che supporti principalmente Android, ma in secondo luogo anche PC desktop e web. Quindi... 🤓️</p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul class="wp-block-list"><!-- wp:list-item -->
<li>Come prima scelta... ho installato l'editor dei progetti di <strong><a href="https://memos.octt.eu.org/m/MSVwuXwCQchFN9ZbPMJTKw">Godot</a></strong> sul tablet, per provarlo un po' meglio; infatti ora in ogni caso me lo tengo, e se mi viene in mente di giochicchiarci lo ho già lì. So già che come #engine funziona bene, rispetta i requisiti, la comunità è sufficientemente grossa, e il porting mobile dell'editor ufficiale completo funziona fin troppo bene. 🤖️</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:paragraph -->
<p>Penso che con questo, se ci si prende la mano, si può realisticamente passare da "Godot" a "Godo", ed usarlo seriamente. Anche se, non so quanto radioso sia il futuro di Godot, considerato <a href="https://knowyourmeme.com/memes/events/godot-engine-user-blocking-controversy-wokot">il disastro che la social media manager pazza ha combinato la settimana passata</a>; questioni che a me, come developer che guarda il prodotto di per sé, fregano meno di zero, ma intanto sia utilizzatori che backer hanno iniziato a scappare... non buono, perché significa meno supporto, sviluppo più lento, e tutto quanto.</p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul class="wp-block-list"><!-- wp:list-item -->
<li>Poi però... mi torna in mente anche <strong><a href="https://memos.octt.eu.org/m/UqrcTf8cViuubbDQqBFcas">libGDX</a></strong> che, seppur meno popolare, in realtà è interessante parecchio. È #Java, e io Java <em>non lo apprezzo particolarmente</em>... ma supporta tranquillamente Kotlin, e quello invece mi piace. Dalla sua ha che, pur essendo un framework molto ricco, non è costruito attorno ad un editor (anche se <a href="https://github.com/JamesTKhan/Mundus">qualcuno terzo esiste</a>, ganzo), quindi sarebbe forse più accessibile per me, che devo così abituarmi a meno cose... devo solo imparare la API praticamente (cosa che vale per qualunque libreria). ☕️</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:paragraph -->
<p>A quanto pare, #libGDX supporta ufficialmente la compilazione verso web, nello specifico con TeaVM nel caso si abbia codice #Kotlin... ma ho dovuto testare personalmente, perché <em>non si sa mai</em>, visto che quando avevo provato a compilare del codice esempio di TeaVM mesi fa per altri motivi non funzionava. Sorprendentemente, quel mostro di Gradle non ha dato problemi, e quindi ora so che, con questa libreria, la compilazione verso tutti i target che mi interessano funziona sulla mia macchina. 🤯️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>In ogni caso, enfasi sul dover imparare, comunque... perché OK, bello l'IDE che, in classico stile Java, ha non solo l'autocompletamento delle cose, ma pure tutta la documentazione integrata bellina... però la roba è comunque tanta, e la wiki ufficiale non mi pare fatta benissimo, per libGDX; anzi, proprio per il 3D rimanda principalmente a una guida esterna, per giunta vecchia, che non usa API apparentemente più nuove che ho trovato invece <a href="https://monstroussoftware.github.io/2023/11/01/Tutorial-3D-step1.html">in un'altra guida</a>. 😶‍🌫️️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":10088,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="{{site.cdnurl}}/assets/uploads/2024/10/image-3-960x528.png" alt="Android Studio, finestra libGDX, editor Godot sul tablet." class="wp-image-10088"/><figcaption class="wp-element-caption">Al di là di averci messo una quantità imbarazzante di tempo per soltanto mostrare un pavimento all'interno di uno spazio 3D vuoto, perché non mi ero proprio accorta di dover specificare 1 particolare argomento opzionale nella funzione <code>ScreenUtils.clear()</code>... ripeto, non sembra male. Infatti quasi la scelta principale è libGDX, non #Godot... 👻️</figcaption></figure>
<!-- /wp:image -->