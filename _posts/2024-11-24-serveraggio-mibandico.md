---
ID: 11746
post_title: serveraggio mibandico.
post_name: serveraggio-mibandico
author: minioctt
post_date: 2024-11-24 20:23:58
layout: post
link: >
  https://octospacc.altervista.org/2024/11/24/serveraggio-mibandico/
published: true
tags:
  - "3786"
  - APK
  - app
  - Dev
  - MiBand
  - MiBand9
  - MiFitness
  - PrivateServer
  - privato
  - reversing
  - server
  - sideloading
  - Vela
  - Xiaomi
categories:
  - Senza categoria
title: serveraggio mibandico.
date: 2024-11-24 20:23:58
canonical_url:   https://octospacc.altervista.org/2024/11/24/serveraggio-mibandico/
---
<!-- wp:paragraph -->
<p>Come previsto, grazie alle mie capacità di pensiero magico era solo questione di avere il tempo di premere tasti su una tastiera, perché io riuscissi finalmente a sideloadare app #Vela JS sulla Mi Band... quindi a breve dovrebbe iniziare il mio china #dev arc. 😈</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Avrei preferito riuscirci tramite Gadgetbridge, ma non sono riuscita a farlo con il codice evidentemente incompleto <a href="https://codeberg.org/Freeyourgadget/Gadgetbridge/issues/3786">trovato nella issue #3786</a>, che non è mai stata chiusa, e io al momento non ho capito cosa manca. Pazienza, si passa all'artiglieria pesante! 🧨</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Con uno scriptino PHP assemblato al volo (in parte con Chatgipiti, ops), ho messo su un server che fa da proxy con la CDN della <a href="/microblog-mirror/2024/11/21/sideloadiband/">versione moddata di Mi Fitness dell'altra volta</a>, e nel frattempo caching e logging di tutto... creando a tutti gli effetti un server #privato per lo store di watchface e app. 🏗️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Stamattina finalmente ho aggiunto codice per restituire non i file statici cachati, ma dati generati con della logica corrispondente a degli endpoint API; per adesso solo quelli delle #app, che era la cosa che a tutti i costi mi serviva, ma poi vedrò di fare il resto e come minimo mettere anche le watchface, così faccio pure io ambo contro Ximi. 🥰</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Ovviamente tutto open sorcio (PHP), e anche self-hostabile per chi vuole caricare la propria libreria di dati nella app purtroppo altrimenti blindata:&nbsp;<a href="https://gitlab.com/octospacc/Mi-Fitness-Private-Server">https://gitlab.com/octospacc/Mi-Fitness-Private-Server</a> /&nbsp;<a href="https://github.com/octospacc/Mi-Fitness-Private-Server">https://github.com/octospacc/Mi-Fitness-Private-Server</a> (!!!) E c'è un #APK bello lì per chi vuole collegarsi al mio server, senza setup. 👻</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Giusto per accertarmi che funzionasse, volevo modificare una app già compilata, ma è una lattina di vermi; quindi ho invece compilato un esempio dell'SDK ufficiale. Peccato che chi l'ha scritta s'è dimenticato il tasto o la gesture di uscita, e quindi come se fosse Vim bisogna premere "Uninstall" dal telefono; ma l'ho messa comunque nella libreria app della mia istanza, chiunque può provare... oltre a varie app non mie (gaming!!). 🗡️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Come scritto sul README, inoltre, se non mi secco, sarebbe carino rendere questo progetto un #server privato completo per la app di #MiFitness, perché allo stato attuale è proprio dipendente dal cloud di #Xiaomi e sarebbe buono preservarla. Alla fine le cose da reimplementare sono poche... tecnicamente bisogna solo togliere il login wall, il resto sarebbe solo grasso che cola. 🧊</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":11752,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="{{site.cdnurl}}/assets/uploads/2024/11/screenshot_20241124_2020415162448972405461996-960x722.png" alt="Schermata app per la band sul Mi Fitness moddato, poi foto in chat della app Xiaomi Vela Samples che gira sulla band al polso, &quot;I managed to compile and sideload a Vela app to my Band 9 🤯️&quot;" class="wp-image-11752"/><figcaption class="wp-element-caption">(POV: comando io!!!)</figcaption></figure>
<!-- /wp:image -->