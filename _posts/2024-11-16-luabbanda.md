---
ID: 11428
post_title: luabbanda!!
post_name: luabbanda
author: minioctt
post_date: 2024-11-16 21:44:04
layout: post
link: >
  https://octospacc.altervista.org/2024/11/16/luabbanda/
published: true
tags:
  - emulatore
  - gaming
  - Lua
  - LVGL
  - MiBand9
  - minigiochi
  - watchface
  - Xiaomi
categories:
  - Senza categoria
title: luabbanda!!
date: 2024-11-16 21:44:04
canonical_url:   https://octospacc.altervista.org/2024/11/16/luabbanda/
---
<!-- wp:paragraph -->
<p>La Mi Band 9 sto continuando a provarla e caspita se è brazy. Dovrò scrivere una recensione buona (...se riuscirò, temo), quando sarà tempo. Ma per ora, ancora si smanetta, e la <em>lore</em> va profondissima. È così pieno di segreti questo affare. 😭️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>L'altro giorno sono assolutamente esplosa quando ho scoperto che le #watchface custom interattive sono potenzialmente assolutamente programmabili. Come sospettavo!!!! E quindi questo potrebbe essere l'inizio di una mia nuova coding era... voglio programmare tutti i giochini per la band, per giocare gen Z moment. 😇️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Precisamente, stavo ravanando tra i file salvati dalla app di Mi Fitness, e nella cartella delle watchface (<code>/sdcard/Android/data/com.xiaomi.wearable/files/WatchFace</code>) scopro che ce ne sono alcune con file Lua (!!!), quelle dei tipo 6 giochi che esistono... e molto figo, però zero documentazione, zero capimento ufficiale, quindi tutto alla buona. 👌️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Cercando un po' così ho prima trovato un SDK generico (non per la band) che fornisce un #emulatore Lua con la libreria grafica giusta e i rispettivi binding (LVGL): <a href="https://github.com/XuNeo/luavgl"><em>https://github.com/XuNeo/luavgl</em></a>. Avendo appurato che, a patto di sistemare una o due righe di codice, riesce a eseguirmi su PC i #minigiochi ufficiali, l'idea ovvia è di usarlo per eseguire la mia roba man mano che la sviluppo... 🤓️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Quindi, dopo aver ricompilato l'emulatore con la risoluzione giusta di 192x490, un po' ho provato quelli, e un po' ho modificato l'esempio di Flappy Bird fornito assieme a questo SDK, e... damn, questo gaming da polso monodito promette proprio benissimo. Dopo il #Lua, c'è solo da fare un po' di graphic design (my passion), poi sistemare i file XML che compongono lo schermo della watchface, e... 🤨️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Il problemino è che non trovo il modo di installare una watchface nuova o modificata. Ho provato tipo 3 app, che però non riescono a collegarsi al riloggio, perché #Xiaomi ha cagato fuori dal vaso e ha cambiato di nuovo il modo in cui viene gestito il token di accesso per le app di terze parti e zio pera la app ufficiale prende tutto dal server praticamente ignorando i suoi stessi file locali che quindi non posso rimpiazzare e— ☠️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Quando il gioco si fa duro... vorrei dire band al polso e vaffanculo, ma poi divento troppo salata, quindi no. Dai oh, lo troverò il modo di sparare i miei dati qua sopra, perché ormai è in mio possesso e io sono una ragazza magica... essere già a questo punto in una (1) giornata non è poco. Avremo il #gaming vero su questo coso. 🙏️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:video {"id":11431} -->
<figure class="wp-block-video"><video controls src="{{site.cdnurl}}/assets/uploads/2024/11/untitled.mp4"></video></figure>
<!-- /wp:video -->