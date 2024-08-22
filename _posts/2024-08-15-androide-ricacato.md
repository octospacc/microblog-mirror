---
ID: 8574
post_title: androide ricacato
post_name: androide-ricacato
author: minioctt
post_date: 2024-08-15 15:36:15
layout: post
link: >
  https://octospacc.altervista.org/2024/08/15/androide-ricacato/
published: true
tags:
  - Android
  - AOSP
  - batteria
  - bloatware
  - Firefox
  - MIUI
  - mobile
  - multitasking
  - ottimizzazioni
  - problemi
  - RAM
  - rischio
  - smartphone
  - software
  - trucchi
  - tweaks
  - Xiaomi
categories:
  - Senza categoria
title: androide ricacato
date: 2024-08-15 15:36:15
canonical_url:   https://octospacc.altervista.org/2024/08/15/androide-ricacato/
---
<!-- wp:image {"id":8586,"sizeSlug":"large"} -->
<figure class="wp-block-image size-large"><img src="{{site.cdnurl}}/assets/uploads/2024/08/screenshot_2024-08-15-15-35-16-595_us1724323409829339054-960x1297.jpg" alt="" class="wp-image-8586"/><figcaption class="wp-element-caption">Non so perché, questi ultimi giorni mi sono ri-fissata con le #ottimizzazioni di #Android, in particolare sul mio Ximi... Forse perché ormai ho questo fonino da già 3 anni, e voglio farlo durare minimo minimo altri 3, ma se dura di più è ancora meglio, perché odio l'ewaste, e perché più escono telefoni nuovi e più questi hanno compromessi #software sempre più minchioni? Vabbè, ho scoperto delle cose che DOVETE controllare, se avete Androidi recenti, perché c'è il #rischio che al momento vi stiano girando a meno delle loro #potenzialità reali. 😨</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Primo... Android 12 ha introdotto una "modalità iPhone" attiva di default su diverse ROM, tra cui #AOSP, mi dicono anche Android dei Pixel (ed ecco perché anche le custom ROM mi andavano di merda), e giustamente la MIUI 14 sullo Ximifonino. Chiamo così questa mpostazione perché Google ha dimenticato che Android dovrebbe essere un sistema #multitasking, e finisce per copiare Apple al costo della funzionalità, perché <em>oh no le animazioni vanno a scatto con la RAM piena!!!</em> Viene ripulita a caso la #RAM cache, cioè la memoria dove finiscono i processi in background che non lavorano, uccidendo quindi le app; insomma, anche peggio di iOS, perché almeno lì vengono freezate, non killate. Altre info su <a href="https://memos.octt.eu.org/m/cTsn9cGwMdaXtCdFA2W3XD">memos.octt.eu.org/m/cTsn9cGwMdaXtCdFA2W3XD</a>, ma in breve fate: Developer options &gt; Suspend execution for cached apps (sotto Apps, in fondo): Disabled. 😵</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Sorprendentemente questa cosa ha attutito una bella rogna, anche se i #problemi rimangono, perché in generale Android sembra comunque uccidere prima le app... e non penso sia solo MIUI (che comunque, la sua 14 va meglio di custom ROM Pixel-like degoogled o meno, sotto questo aspetto); ai tempi antichi era comune ritrovarsi avendo poche decine di MB di RAM liberi, ora non arrivi a 200 che già muore tutto, anche perché le app ne usano sempre di più. E i processi di sistema sono sempre di più e sempre più pesanti, tanto che sul mio telefono di ora avrei circa la stessa quantità di memoria restante a disposizione delle app, nonostante la memoria totale sia il doppio! La cosa stramba è che la #MIUI questo non lo fa notare da nessuna parte, nemmeno dalla sezione batteria, che raggruppa elementi minori... 🧐</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Beh, #Xiaomi coi suoi soliti vizi ha nascosto, ma almeno non rimosso, il menu sviluppatori che dice la RAM usata nelle ultime 3 ore dalle app (<a href="https://memos.octt.eu.org/m/Tv7LqVf4aFmUyQFqHk6jjT">memos.octt.eu.org/m/Tv7LqVf4aFmUyQFqHk6jjT</a>). Per aprirla basta lanciare a mano <code>com.android.settings.Settings$MemorySettingsActivity</code>, ed è figo perché non solo si può vedere, ma anche toccare... cliccando sulle icone delle app si arriva alla activity di info stock, anziché quella modificata di MIUI, e da lì per gran parte delle app di sistema (per alcune le opzioni sono grigie) si possono impostare restrizioni sull'uso di batteria, cosa che normalmente non. E in realtà, per alcuni servizi, che evidentemente sono malware (perché voglio ricordare, non rispettare un'impostazione utente che è presente nella UI è un comportamento da malware, punti bonus se il pacchetto ha un nome indecifrabile), pare non cambiare nulla, mentre con altre... ho sottratto circa 150 MB di RAM in media al #bloatware di sistema! 🤮</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Non ho finito, già che c'ero ho proprio disabilitato via terminale alcune di quelle app che non volevano saperne di risparmiare batteria... con quelle Xiaomi ho fatto credo, ma restano quasi tutte quelle di Qualcomm, che sono pure più sospette; ho letto che restano attive anche se disattivate, se non eliminate! Quindi, dopo aver goduto di non aver avuto bootloop, posso dire che tra questo e la cosa di prima sto un po' meglio, sia a livello di RAM, che persino di #batteria (anche se su questa non ho ancora veri dati, ma vedo la percentuale che scende più lentamente a telefono attivo!), senza aver tolto nessuna feature che uso dall'octofonino. Liste di debloat che uso o userò, btw: <a href="https://memos.octt.eu.org/m/JxGPNDBVatEjA9nvC5QfCb">memos.octt.eu.org/m/JxGPNDBVatEjA9nvC5QfCb</a>. 🤗</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Bonus: chiunque su Android usa un browser per <em>qualche cosa</em>, e considerando che l'unico veramente decente per <em>ogni cosa</em> è #Firefox, farò finta che la Pirovolpe sia una parte essenziale di Android, quindi aggiungo: Per limitare la scattosità (anche se non esattamente eliminarla), in <a href="about:config">about:config</a> (che credo ci sia solo su Firefox Beta e Nightly, nel caso non l'abbiate levate Stable e mettete Beta) settate sia <code>layout.frame_rate</code> che&nbsp;<code>layout.throttled_frame_rate</code> ad un numero giusto, il refresh rate del vostro schermo... non ho notato peggioramenti sulla batteria fissando tutto a 60, ma il vostro chilometraggio potrebbe variare. Poi per la volpe ci sono tanti #trucchi, ma non è il momento, ulteriori sono su <a href="https://memos.octt.eu.org/m/MVjEGMBr6AFnK2fC3C6h8n">memos.octt.eu.org/m/MVjEGMBr6AFnK2fC3C6h8n</a>... 🙃</p>
<!-- /wp:paragraph -->