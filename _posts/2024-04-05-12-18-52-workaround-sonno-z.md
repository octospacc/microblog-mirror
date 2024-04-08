---
ID: 4030
post_title: workaround sonno z
post_name: workaround-sonno-z
author: minioctt
post_date: 2024-04-05 12:18:52
layout: post
link: >
  https://octospacc.altervista.org/2024/04/05/workaround-sonno-z/
published: true
tags:
  - computer
  - danno
  - idee
  - metodi
  - mimir
  - ora
  - orari
  - ore
  - orologi
  - orologio
  - script
  - tardissimo
  - tempo
  - teoria
categories:
  - Senza categoria
title: workaround sonno z
date: 2024-04-05 12:18:52
canonical_url:   https://octospacc.altervista.org/2024/04/05/workaround-sonno-z/
---
<!-- wp:paragraph -->
<p>Purtroppo, <a href="https://octospacc.altervista.org/2024/04/05/la-morte-al-risveglio/">è esattamente questo</a> il #danno di avere #orari inderogabili tutti spezzati, anziché il proverbiale 9-5 (...o anche 8-13, come l'anno scorso in cui avevo scuola). Però ho fatto caso ad una cosa, da qualche giorno: sto andando a dormire allo stesso orario nominale medio di prima che scattasse l'ora legale... il che significa che, quando in un attimo ho scalato indietro di 1 ora solare l'orario di andare a letto, non ho fatto nulla a riguardo e non ho avuto strane #difficoltà (a parte il fatto che domenica sono stata di merda senza energie tutta la giornata, ma già da lunedì ero normale). Ho una #teoria. 🤓</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Evidentemente, il mio andare a #mimir è completamente basato sul "ok, adesso è DAVVERO #tardissimo, se sto ancora sveglia domani sono morta, quindi chiudiamo tutto"; o, in altre parole, si basa su cosa leggo in giro sugli orologetti. Se le cose stanno così, vedere quell'orario estremo prima che questo arrivi veramente dovrebbe essere sufficiente a farmi avere un "effetto troppo-tardi" in un momento in cui è ancora presto e in cui, se continuo ad agire normalmente, finirei però a dormire come dovrei. Monkey brain, monkey fix. #Idee per possibili #metodi ancora da provare... ma ho speranza solo per uno:</p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Dopo una certa ora, nascondere tutti gli #orologi dai computer che uso, e guardare solo un orologio dedicato che tengo sempre 1 o 2 ore avanti. Sarebbe facile. 🌚<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Problemi: come nascondo l'orario davvero ovunque? Facile mettere un pezzo di carta sulla status bar del sistema, ma sulla schermata di blocco? E soprattutto, i timestamp nelle app di messaggistica? Gli #orari di modifica nel gestore di file? ...</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list --></li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Spostare avanti il fuso orario dei #computer dopo una certa #ora o un certo momento (esempio, appena finita la cena). Non causerei problemi a nessun programma, perché il #tempo contato dal sistema rimarrebbe lo stesso, cambierebbe solo la visualizzazione. Si può volendo anche scriptare attivazione e disattivazione dello shift. 🧮<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>#Rogne: ho paura che uno scostamento di multipli di 60 minuti non sia buono, probabilmente conoscendo di quant'è mi abituerei inconsciamente a sottrarre le #ore ogni volta all'orario che guardo, finendo quindi comunque per funzionare sotto l'orario reale.</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list --></li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Usare qualche #script che già da un momento a caso della serata inizia a velocizzare <em>subdolamente</em> il tempo, aggiungendo un numero casuale di secondi (in un certo range) ad ogni minuto. Già dopo qualche quarto d'ora ora sarà quindi impossibile fare calcoli per capire che ore sono davvero, e l'unico modo che avrei per saperlo sarebbe guardare un #orologio non-trollante, cosa che mi basta semplicemente non fare. 🚷<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Dovrò studiarmela un po' e fare un buon algoritmo, ma l'idea dovrebbe funzionare sia su Linux, sia su Windows, e anche Android. Non dovrebbe causare problemi ai programmi nonostante cambia l'UNIX time, perché va sempre solo in avanti, fin quando non arriva una data ora (quando sarò già a letto da un pezzo), in cui viene annullato lo shift e il clock torna indietro, tutto a posto per la giornata seguente.</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list --></li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->