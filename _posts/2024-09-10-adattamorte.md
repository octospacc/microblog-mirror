---
ID: 9139
post_title: adattamorte
post_name: adattamorte
author: minioctt
post_date: 2024-09-10 21:10:28
layout: post
link: >
  https://octospacc.altervista.org/2024/09/10/adattamorte/
published: true
tags:
  - acquisti
  - adattatore
  - Amazon
  - consigli
  - DEX
  - dimostrazione
  - hub
  - rogne
  - Samsung
  - SamsungDex
  - tablet
  - tecnologia
  - USB
  - USB-C
  - wtf
categories:
  - Senza categoria
title: adattamorte
date: 2024-09-10 21:10:28
canonical_url:   https://octospacc.altervista.org/2024/09/10/adattamorte/
---
<!-- wp:paragraph -->
<p>Oggi non avrei nulla di meglio da postare, per cui... prendiamoci un momento per gli <strong>sconsigli per gli #acquisti</strong>. Si, allora, mi spiace per il cinismo, però più passa il tempo e più la #tecnologia mi fa sentire le fregature, che pare non funziona mai niente come dovrebbe e devo sempre rassegnarmi a tutte le piccole magagne... ed è come se anche le cose che un tempo funzionavano, stiano sempre più a perdere colpi. Argomento per un'altra volta, vah. 😭️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":9141,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="{{site.cdnurl}}/assets/uploads/2024/09/img_20240906_2044446980252041394196892-960x1280.jpg" alt="Foto adattatore con corpo metallico argentato e cavo di collegamento corto appoggiato sulla sua bustina mezzo storto" class="wp-image-9141"/><figcaption class="wp-element-caption">L'acquisto sarebbe un #adattatore USB-C con una porta pass-through (cioè un'altra USB-C, per ovviare al fatto che questo te ne occupa una), una porta USB-A, ed una porta HDMI, preso da #Amazon. Molto generico ed economico (non costava molto di meno su AliExpress), tant'è che non ho un link da dare, perché quello che vidi inizialmente salì di prezzo e quindi ne cercai un altro, mentre l'altro non lo riesco più a trovare. E diciamo che mi bastava questo... no porta Ethernet, perché tanto quando minchia mi servirà, no millemila porte USB-A, perché se proprio me ne servono di più attacco un hub a cascata... fine. 😑️</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>In questo caso il prodotto è buono, in realtà, era come me lo aspettavo, e nonostante le mancanze mi sarà comunque utile; non me ne pento, e non lo rimando indietro. Il problema è in realtà il tablet per cui l'ho preso (solito #Samsung Galaxy Tab S6 Lite 2022) a cui manca una cosa che, muzunna cara... non ha l'output video su USB-C. La cosa bella è che su Internet non si capisce, Samsung ufficialmente non dice nulla, però intanto la modalità #Dex integrata non si può attivare su wireless mirroring, quindi è lecito assumere che è perché funziona solo con mirroring cablato... invece no, non funziona in mirroring PUNTO. Guardate quanti thread del cazzo ho raccolto a proposito: <a href="https://memos.octt.eu.org/m/DMfkwZsuxqjVsrRhbkwxzX">https://memos.octt.eu.org/m/DMfkwZsuxqjVsrRhbkwxzX</a>. ODIO SAMSUNG. 😫️ 🤬️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>In quanto ad altri dispositivi... su Nintendo Switch funziona bene tanto quanto sul tablet, mentre sullo Xiaomi Redmi 9T è una cagata protonica. Ovviamente l'uscita video non va, ma lì me lo aspettavo, però il punto è che sullo Ximi non funziona bene manco la parte USB. Con varie combinazioni di orientamento dei cavi C nelle porte C: o non funziona nulla, o va solo in carica il telefono, o viene solo riconosciuto il dispositivo slave collegato nella porta A dell'hub. Divago a questo punto, ma questo è un ennesimo esempio pratico di come la caratteristica di USB-C paventata come la più grande feature, è in realtà una causa smisurata di #rogne; questi problemi non sono mai successi su A e B, che si collegavano in un verso solo. Chiamatemi boomer quanto cazzo volete, ma ai miei tempi l'USB funzionava. 🥱️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:video {"autoplay":true,"id":9142,"loop":true,"muted":true} -->
<figure class="wp-block-video"><video autoplay controls loop muted src="{{site.cdnurl}}/assets/uploads/2024/09/lv_0_202409101930521.mp4"></video><figcaption class="wp-element-caption">Il lieto fine è che appunto l'altra caratteristica per cui volevo questo affare funziona: poter collegare dispositivi USB mentre il tablet è in carica, quindi magari pennette, <a href="/microblog-mirror/2024/05/20/5728/">la scheda di cattura</a>, oppure... la pezzottissima tastiera meccanica, per fare gamin' in pace (dato che, mamma mia, quanto fa schifo quella Bluetooth di Nintendo, che lagga e si scollega in continuazione; viva viva e viva il cablato). La tastiera fisica funziona mediamente bene su #SamsungDex, ci sono anche scorciatoie per affiancare e ridimensionare finestre, così come aprire alcune app... ma non è perfetto, in quanto non c'è modo di interagire con toggle rapidi e notifiche, quindi come al solito noi utenti mouse-less ce lo prendiamo in cù. Video #dimostrazione d'obbligo... ✨️</figcaption></figure>
<!-- /wp:video -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Per finire: nel mentre che cercavo di verificare se, grazie a questo affare, lo stack USB del tablet potesse funzionare contemporaneamente sia come master (collegare dispositivi al tablet) che come slave (collegare il tablet al PC, così da usare <code>scrcpy</code> per proiettare lo schermo su un monitor grosso)... con mia enorme RABBIA ho scoperto di no, ma in compenso ho scoperto che la porta pass-through funziona anche "al contrario". Se collego l'hub al PC (che ha solo porte USB-A), con un cavo A-C maschio-maschio, mi appare come <code>343c:0000 xxxxxxxx USB Type-C Digital AV Adapter</code>... ma per il resto non può fare assolutamente nulla, a quanto pare, peccato. Ah e, a dirla tutta esce così solo usando un cavo dati USB 2.0 (come quello di ricarica dello Ximi), mentre con un 3.0 non appare proprio... #wtf. E, no, la porta non funge anche da USB OTG a cascata. 💩️</p>
<!-- /wp:paragraph -->