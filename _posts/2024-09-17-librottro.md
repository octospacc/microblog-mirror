---
ID: 9326
post_title: libROTTO
post_name: librottro
author: minioctt
post_date: 2024-09-17 20:17:32
layout: post
link: >
  https://octospacc.altervista.org/2024/09/17/librottro/
published: true
tags:
  - bug
  - emulation
  - emulatore
  - emulazione
  - Libretro
  - problema
  - QuickNES
  - RetroArch
  - savestate
  - x86_64
categories:
  - Senza categoria
title: libROTTO
date: 2024-09-17 20:17:32
canonical_url:   https://octospacc.altervista.org/2024/09/17/librottro/
---
<!-- wp:paragraph -->
<p><a href="/microblog-mirror/2024/09/17/ristation-mortable/">Nel post che ho inviato ieri sera tardissimo quando sarei dovuta stare a letto da un pezzo</a>, sperando il mio stato di delirio non abbia reso il tutto incomprensibile... ho accennato come ho buttato mezza giornata appresso a #RetroArch, che sul PC non mi funziona, considerata una rogna (e forse di più che semplicemente non ho scoperto) su cui non posso soprassedere. 🧪</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Bene, se non altro sono felice del fatto che oggi, ricordandomi di come un tempo lo usavo e funzionava bene, ho (re)installato RetroPie sul Raspberry Pi 3, e... Dai, ma com'è possibile che qui non solo effettivamente funziona tutto, ma allo stesso tempo ho i vantaggi del PC (giocare con la mia orgasmatica tastiera meccanica cinese, su un display grosso), e il collegamento di diversi controller funziona senza sofferenze; e, per giunta, essendo un computerino, posso spostarlo dalla scrivania a qualunque TV di casa al volo...? 😾️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Dovevo farlo da subito, fanculo il PC desktop, considerando che la sua potenza non mi serve per emulare console del millennio scorso... ma mi resta comunque l'amaro in bocca. Perché comunque il Raspino è underpowered al punto che il menu XMB di RetroArch va a scatti, ma anche dato che devo domandarmi: perché sul PC c'è la rogna? Nello specifico, come mai i core libretro (che è il "backend" su cui si basa RetroArch e non solo) compilati per PC x86_64 sono assolutamente rotti? Ancora più precisamente, #QuickNES è rotto: non funziona il caricamento di stati. 🤮️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>QuickNES è un core di #emulazione NES (no shit sherlock) che mi serve, sono praticamente costretta a preferirlo quando possibile perché, per <a href="https://t.me/c/1383332798/20513">la mia strategia di gaming in RetroArch sincronizzato</a>, è l'unico che può girare su tutte le console dove mi serve... perché sul PocketGo (consolina portatile che uso oltre al 3DS) gli unici 2 altri core sono troppo lenti per girare al 100% NTSC/60Hz (e sappiamo che le ROM PAL per console casalinghe vecchie fanno spesso schifo, quindi non ho proprio scelta). 🪨️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>I #savestate, al contrario dei salvataggi "normali" (SRAM), sono specifici ad ogni emulatore, quindi vanno creati e caricati solo con quello... viene da se che, se voglio sincronizzarli tra sistemi, devo usare lo stesso #emulatore su tutti. E, non solo per me in generale i savestate sono d'obbligo (soprattutto quelli salvati e caricati automaticamente, rispettivamente alla chiusura e all'apertura del gioco), ma quasi nessun gioco NES ha i salvataggi, e pochi hanno le password, quindi per il resto sono necessari a salvare i progressi. 🥴️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Quindi, com'è che sul PC questo core, e a quanto pare solo questo, riesce a creare savestate, ma poi caricandoli non succede niente (o forse, in un caso, dava un errore inutile, non ricordo)? Com'è che, oltre alla versione Flatpak (e Snap, che non ho), si può scegliere solo tra quella AppImage che fa segfault all'apertura del selettore di file, o quella di Debian per cui sono compilati solo 7 core in croce (tra cui manca QuickNES)? Ah, e com'è che non ha risolto il #bug nemmeno provare l'ultima build Windows x86_64 di RetroArch (in Wine, che sorprendentemente, per il resto, al di là di glitch con la finestra quando non massimizzata, funziona normalmente)? 😶‍🌫️️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Ma ancora, com'è che nessuno, e dico nessuno, pare aver segnalato questo #problema online, nonostante se mi succede con build del core sia nuove che vecchie di anni, significa che esiste da anni? Capita solo a me, perché ho un BIOS UEFI strano, o perché ho un pin della CPU rotto, o perché il microcode di AMD è buggato? O è capitato anche ad altra gente che, ritenendo come me che questo problema fosse individuale, ha esattamente come me evitato di segnalarlo? (È tutto così rotto.) 😭️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Sono ipotesi strane queste? Certo, ma abbiamo già verificato che il sistema operativo non c'entra, e che l'unica cosa che finora ho osservato cambiare il comportamento di questo emulatore è l'architettura CPU per cui è compilato! Questi problemi, assurdo ma vero, succedono sempre e solo su x86_64... è un'architettura proprio da buttare. O, magari, va buttato via il compilatore C per #x86_64 usato dal buildbot di #libretro... potrebbe essere qualsiasi cosa, a questo punto; il dato di fatto è che su ARM funziona e basta, viva ARM. 🙏️</p>
<!-- /wp:paragraph -->