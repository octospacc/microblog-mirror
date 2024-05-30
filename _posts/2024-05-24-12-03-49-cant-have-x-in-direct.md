---
ID: 5874
post_title: 'can&#8217;t have x in direct'
post_name: cant-have-x-in-direct
author: minioctt
post_date: 2024-05-24 12:03:49
layout: post
link: >
  https://octospacc.altervista.org/2024/05/24/cant-have-x-in-direct/
published: true
tags:
  - BoxedWine
  - crash
  - Direct3D
  - DirectX
  - emulazione
  - EoSD
  - gaming
  - gioco
  - GPU
  - PC
  - rendering
  - retro
  - retrogaming
  - Th06
  - Touhou
  - v86
  - WASM
  - web
  - Windows
  - Wine
  - x86
categories:
  - Senza categoria
title: 'can&#8217;t have x in direct'
date: 2024-05-24 12:03:49
canonical_url:   https://octospacc.altervista.org/2024/05/24/cant-have-x-in-direct/
---
<!-- wp:paragraph -->
<p>Quei gamer che come me hanno nell'animo il PC masterrace, ma nella pratica odiano il tedio contro cui ci si imbatte appena si vuole effettivamente giocare a qualcosa per PC, staranno con ansia aspettando progressi sulla questione di giochi Windows nel browser. Quindi, che ho fatto ieri? ...Un cazzo di niente! 🥰</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Ho perso mezza giornata cercando invano di far funzionare prima alcuni programmi di benchmark, e poi Touhou. Ho dovuto installare DirectX 9 per quei programmi, ma poi comunque questi non partivano, perché a quanto pare DX9 non include rendering via software per Direct3D, e in v86 non c'è alcuna GPU. Pazienza, per quelli me ne farò una ragione, non ho vitale bisogno dei benchmark... però per i giochi è una rogna. Sorprendentemente, Touhou 6 parte in questo ambiente mezzo sfasciato, ma c'è un problema: non so come il gioco gira, riesco anche a muovermi nei menu alla cieca e avviare una partita, ma viene renderizzato solo lo sfondo e letteralmente null'altro, quindi non si può effettivamente giocare. (Dettagli più precisi <a href="https://t.me/CommunityTecnologica/737432">in questa chat qui</a>.) 🤬</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:gallery {"linkTo":"none"} -->
<figure class="wp-block-gallery has-nested-images columns-default is-cropped"><!-- wp:image {"id":5888} -->
<figure class="wp-block-image"><img src="{{site.cdnurl}}/assets/uploads/2024/05/photo_5080513907201780824_x8412736725975051660-320x169.jpg" alt="" class="wp-image-5888"/></figure>
<!-- /wp:image -->

<!-- wp:image {"id":5889} -->
<figure class="wp-block-image"><img src="{{site.cdnurl}}/assets/uploads/2024/05/screenshot_2024-05-24-00-21-42-337_org2221662542601539196-960x418.jpg" alt="" class="wp-image-5889"/></figure>
<!-- /wp:image --><figcaption class="blocks-gallery-caption wp-element-caption">Ho provato allora con DirectX 8a, che pare essere l'ultima versione con software rendering prima di DX10 (che lo ha reintrodotto dopo che fu tolto tipo), e <a href="https://es.m.wikipedia.org/wiki/Embodiment_of_Scarlet_Devil">stando a Wikipedia ES</a> dovrebbe essere il minimo richiesto da Touhou 6 (altre fonti specificano semplicemente DX8 generico). E qui il gioco però smette di partire, restituendo un errore non molto chiaro... che ho decifrato <a href="https://old.reddit.com/r/touhou/comments/a9pwx4/eosd_direct3d_error/">con Reddit</a> e Google Traduttore, ma la cosa non mi ha dato alcun aiuto, non so a cosa si riferisca l'errore esattamente, e nessuna opzione disponibile tra configurazione del gioco e impostazioni di Windows ha risolto il problema (chiede di cambiare una roba che online non vedo discutere, probabilmente manco esiste). 🐭</figcaption></figure>
<!-- /wp:gallery -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Proprio stamattina ho voluto dare una chance a Boxedwine; pensandoci, posso usarlo in maniera complementare a v86, nei casi in cui questo non va bene. Fare tutto tra telefono e tablet (dato che non sono a casa) è stato un casino, tra lentezza generale, memoria che si satura (per questo devo usare due dispositivi alla volta) e via... e ugualmente non è servito A NULLA. A parte il tempo perso (tanto, maneggiare con gli ZIP sullo Ximi non è veloce) tentando di avviare gli ultimi pacchetti distribuiti dall'autore per Wine 1.7 e 5.0, che evidentemente non funzionano (il primo non so perché, il secondo è colpa di <a href="https://github.com/danoon2/Boxedwine/issues/11">#11</a>), usando il pacchetto di boxedwine.org sono riuscita ad almeno avviare il gioco, ma termina con un errore che credo sia proprio lo stesso di Windows 2000. Nella console di Wine vedo prima del crash una riga <code>fixme:win:EnumDisplayDevicesW ((null),0,0x32f898,0x00000000), stub!</code>, che può confermare i miei sospetti, ma non so se centri o sia una coincidenza. Guardando i file di Boxedwine credo ci sia DirectX dall'8 al 10, quindi non sarà un problema di librerie mancanti. 🐞</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Se avete idee, per favore suggerite, perché sono proprio alla frutta, ho finito di giocare ancor prima di iniziare. Il problema è che il gioco non parte con software rendering, anche se in teoria potrebbe usarlo, sospetto che cerchi appunto una GPU e halti se non la trova. (<a href="https://octospacc.altervista.org/wp-content/uploads/2024/05/th06eosd-boxedwine-log-crash337829656288466287572616478276101039487_114936.txt">Qui ho caricato il log di Wine</a>.) Ieri sera ho fatto anche tardissimo per andare a letto, per via di questa roba, ma vi giuro ci ho messo un secolo a prendere sonno... questa cosa ora mi tormenta e devo risolverla: so che Touhou è abbastanza leggero da poter girare nel browser, se giochi anche molto più pesanti ce la fanno, quindi ora pretendo di averlo nel browser! Voglio giocarci in Sala Museo! Il problema sono ste cazzo di API; possibile che solo sulle console i giochi funzionano e basta? (Dovrò fare un emulatore Switch per il web, a proposito...) 🧱</p>
<!-- /wp:paragraph -->