---
ID: 8664
post_title: linuxaggio androidico
post_name: linuxaggio-androidico
author: minioctt
post_date: 2024-08-19 02:07:08
layout: post
link: >
  https://octospacc.altervista.org/2024/08/19/linuxaggio-androidico/
published: true
tags:
  - Android
  - Debian
  - desktop
  - esperimento
  - finestre
  - GalaxyTab
  - Linux
  - Samsung
  - SamsungGalaxy
  - scrauso
  - tablet
  - Termux
  - userspace
  - XFCE
categories:
  - Senza categoria
title: linuxaggio androidico
date: 2024-08-19 02:07:08
canonical_url:   https://octospacc.altervista.org/2024/08/19/linuxaggio-androidico/
---
<!-- wp:paragraph -->
<p>Ieri in una conversazione scaturita dall'osservazione (non mia) di come possedere un "portatile Linux" (cioè, pensato e venduto con GNU+Linux; no, credo che nessuno di loro venga con distro non-GNU) sia sofferenza e miseria, perché a quanto dicono hanno sempre strani difetti di driver che non dovrebbero, e difetti hardware spettacolari (rest in piss Framework owners)... ho detto una cosa per scherzare, ma seriamente. Il tablet #Android medio, su cui si fa girare "Linux desktop" in modi più o meno ortodossi, ammesso di avere una tastiera fisica add-on decente, potrebbe essere un laptop Linux migliore di... boh, qualsiasi; a parte il Mac M1, credo. 😡️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>In effetti così è imbrogliare, perché Android usa (una versione malata de) il kernel #Linux, quindi la parte desktop dell'equazione è tutta #userspace, e quindi o funziona o non funziona (funziona), vie di mezzo scomode non ce ne sono. Chrome OS sarebbe ancora più imbrogliare, perché quello in effetti è un semplicemente un sistema #desktop Linux un po' malato, ma... chi fa i laptop Chrome OS? Esatto, gli stessi OEM che fanno i laptop Windows, che quando non hanno problemi di driver (cosa già rara) hanno sempre, e dico sempre, problemi hardware, o almeno compromessi... tablet Android da 100 euro avranno sempre uno schermo migliore di portatili Windows da 500 euro, quindi facciamo finta che non esistano proprio. 👻️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Vabbe, io la tastiera fisica ideale per #tablet non la ho, ma di tablet Adrod ne ho (anche troppi), quindi perché non fare un #esperimento??? Avendo l'urgio di spendere il mio tempo in modo poco saggio stasera, mi sono messa a configurare XFCE sul mio Galaxy Tab S6 Lite; ricordo che XFCE non è il desktop scrauso che tutti credono, ha semplicemente un tema default #scrauso, e una configurazione che su touch screen lasciamo perdere. Dopo un po' di valutazioni, ho innanzitutto pompato i DPI custom a 168, per rendere il testo leggibile e le hitbox della UI toccabili, pur non volendo scalare tutta l'interfaccia a 2x (troppo grossa), o usare scaling frazionale (pupù cacca tutto sbleurrato), ingrandito di 2 punti tutti i font, e installato il <a href="https://github.com/nana-4/materia-theme"><code>materia-gtk-theme</code></a> come stile GTK, mentre ho messo <a href="https://github.com/loichu/arc-theme-xfwm4-hidpi">Arc-Darker, fork HiDPI</a>, per XFWM (altrimenti, barre del titolo troppo piccole, mi sentivo a disagio). Tocchi finali: <em>trasparenzine</em> del compositor, singolo click per aprire elementi sul desktop e nel gestore di file, e il pannello in alto fissato a 64px di altezza, con icone belle toccabili e niente testo inutile. 💯️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:video {"id":8663} -->
<figure class="wp-block-video"><video controls src="{{site.cdnurl}}/assets/uploads/2024/08/lv_0_20240819005802.mp4"></video><figcaption class="wp-element-caption">Quindi ora che si fa con 'sto coso? ...non lo so. Almeno, a casa col PC non lo so, ma fuori gli utilizzi sono molteplici, con tutte le app produttive che su Android non ci sono (o hanno versioni brutte), mentre su Linux avoja (inclusi programmi o giochi Windows, scomodando strati di compatibilità vari). A proposito di giochi... "<em>come fai a fare gamin' se lagga persino lo scrolling in Firefox e la riproduzione di YouTube?</em>" Semplice, installando virgl, anziché tenere llvmpipe, che è il peggior emulatore di driver video dell'universo ma stranamente è sempre quello default su ogni cosa Linux. 🪨️</figcaption></figure>
<!-- /wp:video -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Ora qualcuno dirà pure... "<em>cosa ma #XFCE sul tablet?</em>" Si regà, basta, è un ambiente desktop meno stupido di quanto sembri... come si vede nel video ha pure il tiling ai bordi dello schermo, e ricorda persino lo stato massimizzato delle #finestre quando una app viene riaperta (cosa a cui non vorrei rinunciare su tablet). Certo vorrei anche magari le finestre con bordi di ridimensionamento più grossi, pensandoci, cosa che però pare un vero casino (con <a href="https://superuser.com/questions/436541/how-do-you-increase-the-resize-border-thickness-in-xubuntu-12-04">guide che indicano file da modificare che nei miei temi non ci sono</a>), e che mi sa non riuscirò a quagliare... ma alla fine non è vitale, avendo pure il pennino. ✨️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>...Ah no? Giusto, qualcuni diranno "<em>cosa ma XFCE sul tablet? in che modo, come hai fatto</em>"... non c'ho tempo di spiegarlo, dopo anni e anni la pazienza non ce l'ho più. Su questo blog cinese dalla grafica rilassante ci sono guide molto efficienti al Linuxaggio sugli Androidi, tra cui come installare #Debian in #Termux (virtualmente obbligatorio, le repo di Termux hanno 2 app desktop in croce) e avere subito tutto funzionante, tra cui video, audio, e la scorciatoia home per avviare tutto in 1 click... si noti solo che io sudo l'ho settato in modo meno complicato, e l'emulazione del mouse di Termux:X11 l'ho messa a "Direct touch", che con gli aggiustamenti di prima è perfetto, e in tutte le app GTK3/4 funge lo scrolling naturale e la selezione del testo <em>come se fosse antani nativo</em>... <a href="https://ivonblog.com/en-us/posts/termux-proot-distro-debian/">https://ivonblog.com/en-us/posts/termux-proot-distro-debian/</a> 🙏️</p>
<!-- /wp:paragraph -->