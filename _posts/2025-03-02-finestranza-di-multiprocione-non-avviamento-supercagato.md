---
ID: 17471
post_title: >
  finestranza di multiprocione, non
  avviamento supercagato!
post_name: >
  finestranza-di-multiprocione-non-avviamento-supercagato
author: minioctt
post_date: 2025-03-02 12:07:44
layout: post
link: >
  https://octospacc.altervista.org/2025/03/02/finestranza-di-multiprocione-non-avviamento-supercagato/
published: true
tags:
  - QEMU
  - SMP
  - VM
  - Windows
categories:
  - Senza categoria
title: >
date: 2025-03-02 12:07:44
canonical_url:   https://octospacc.altervista.org/2025/03/02/finestranza-di-multiprocione-non-avviamento-supercagato/
---
<!-- wp:paragraph -->
<p>Tra ieri e l'altro ieri, c'era il serio rischio che sarebbe uscito uno dei miei bei <strong>rantoli incazzati a causa della casa madre di Windows</strong>, perché si sa: <strong>what Microsoft giveth, Microsoft taketh away</strong>. But, fortunatamente, after tutto, <strong>Microsoft ultimately giveth back</strong>, e quindi <strong>all is bene all that finisce well</strong>, at least this volta. (E vedo bene di appuntarmi ciò che è accaduto per evitare che ci sia un eterno ritorno.) 🍾</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":17480,"sizeSlug":"full","linkDestination":"none"} -->
<figure class="wp-block-image size-full"><img src="{{site.cdnurl}}/assets/uploads/2025/03/image-1.png" alt="💖💣, [28/02/2025 22:38]
non collabora

💖💣, [28/02/2025 22:38]
e chissà se è la VM o il fisso che non collabora

💖💣, [28/02/2025 22:41]
zamn, è la vm.

💖💣, [28/02/2025 22:42]
PORCO ZIO NON CI CREDO

💖💣, [28/02/2025 22:42]
non ho fatto NIENTE a sta VM, funzionava fino a STAMATTINA, WTF" class="wp-image-17480"/><figcaption class="wp-element-caption"><a href="https://t.me/c/1519410362/346379">https://t.me/c/1519410362/346379</a></figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Praticamente, la bella mattina di venerdì ho <strong>modificato le impostazioni della VM Windows Server</strong> 2022 che ho sul mio server (con QEMU+KVM), <strong>alzando il numero di processori da 3 a 4</strong>, perché in certi momenti sembrava non riuscire a macinare bene, e vabbé, "<em>diamogli un macinino più grande</em>", ho pensato. Riavvio la macchina virtuale, e funziona, ma qualche ora dopo questa viene uccisa dal coso out-of-memory, ed ecco che <strong>non parte più...</strong> caspicazzo. ☠️☠️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":17481,"sizeSlug":"full","linkDestination":"none"} -->
<figure class="wp-block-image size-full"><img src="{{site.cdnurl}}/assets/uploads/2025/03/image-2.png" alt="[...], [28/02/2025 22:42]
hmmm windows suicidio

💖💣, [28/02/2025 22:42]
letteralmente suicidio, non ci sono stati fattori esterni

💖💣, [28/02/2025 22:43]
ma come è possibile

[...], [28/02/2025 22:43]
linux ha detto no no, muori

💖💣, [28/02/2025 22:45]
eee infatti tecnicamente lo ha ucciso linux, letteralmente
ma già altre volte è successo e non è morto, perché cazzo ora si...

💖💣, [28/02/2025 22:45]
cioè è morto windows perché la VM ha &quot;perso la corrente&quot; in vai a capire che momento.

💖💣, [28/02/2025 22:46]
no non si può andare avanti così

[...], [28/02/2025 22:46]
go back to pietra

💖💣, [28/02/2025 22:46]
no ma davvero, cioè, che cazzo, si rompe tutto" class="wp-image-17481"/><figcaption class="wp-element-caption"><a href="https://t.me/c/1519410362/346385">https://t.me/c/1519410362/346385</a></figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Ho temuto che, dopo <strong>centinaia di volte che la #VM mi è crashata malamente</strong> per via di questo motivo qui, fosse arrivato finalmente il momento sfigato in cui l'installazione di #Windows si è finalmente corrotta. Quindi, in ogni caso ho dovuto <strong>perdere tempo a riscaricare la ISO di installazione</strong>, avviare in quella (come diceva la schermata di errore), rendermi conto (come sospettavo) che l'opzione per il recupero automatico per qualche motivo non esiste, e <strong>quasi avrei dovuto reinstallare il sistema operativo</strong>... 📀</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":17484,"sizeSlug":"full","linkDestination":"none"} -->
<figure class="wp-block-image size-full"><img src="{{site.cdnurl}}/assets/uploads/2025/03/image-4.png" alt="💖💣, [01/03/2025 12:46]
Regà aiuto... dopo l'ennesima volta che la mia VM Windows (Server 2022) è crashata, ora non si avvia più, fa così.
A parte che non capisco, perché tante altre volte non è successo niente... si può riparare o devo reinstallare? Online per questo specifico problema non trovo molto (e no, non ho ancora provato a fare come dice lui perché devo riscaricare la ISO, ora lo faccio ma mi chiedevo prima se davvero funzionerà, perché spesso le istruzioni di fix di Microsoft non funzionano mai)

Pietro, [01/03/2025 12:54]
fai prima a ripristinare da backup o reinstallare

💖💣, [01/03/2025 12:55]
Zamn.
Il backup ovviamente non ce l'ho, perché spazio da sprecare per duplicare i file di Windows non ce l'ho neanche volendo... Quindi, se non funziona il fix automatico (non funzionerà) ecco che si avvera il mio incubo pegiore di reinstallare il sistema e ricopiare i file dal vecchio HDD virtuale...

Pietro, [01/03/2025 12:56]
benvenuta in Windows Server

💖💣, [01/03/2025 12:57]
Per quanto non mi stupisca più di tanto, perché comunque l'architettura è condivisa con le versioni consumer, che notoriamente si spaccano... Davvero è normale il fatto che, se gli gira, ha lo 0.02% di chance di non avviarsi più se perde la corrente nel momento sbagliato?

Pietro, [01/03/2025 12:59]
sì, non chiedermi come lo so

💖💣, [01/03/2025 12:59]
Temo di non aver bisogno di chiedertelo..." class="wp-image-17484"/><figcaption class="wp-element-caption"><a href="https://t.me/CommunityTecnologica/759114">https://t.me/CommunityTecnologica/759114</a></figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Eccetto che ho notato che, prima di arrivare alla <strong>schermata di errore di Windows Boot Manager</strong>, che con codice di errore "1" non porta a niente di utile, la VM fa un <strong>BSOD dopo un po' che prova ad avviarsi: CLOCK_WATCHDOG_TIMEOUT</strong>. Io ancora non ho capito che razza di errore sia, se non che a grandi linee indica un problema di sincronizzazione tra core della CPU, e ricordo che con #QEMU l'ho già avuto in passato <strong>dopo aver modificato impostazioni dell'SMP</strong>; ma mai mi era successo che funzionasse per un avvio e poi mai più. 🦧</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":17486,"sizeSlug":"full","linkDestination":"none"} -->
<figure class="wp-block-image size-full"><img src="{{site.cdnurl}}/assets/uploads/2025/03/image-5.png" alt="💖💣, [01/03/2025 19:52]
Ovviamente, come sospettavo io e come hai detto tu Pietro, l'unica opzione che c'è avviando dal disco è quella per il recupero da punto di backup, e niente automatico... quindi va reinstallato. Masonna.

Comunque, ho notato che prima di dare l'errore del bootloader la macchina tenta di avviarsi, ma arriva ad una BSOD con stopcode CLOCK_WATCHDOG_TIMEOUT, che non so cosa sia ma dal nome non mi sembra ci azzecchi molto

Sephiroth/Pallino (o come si dovrebbe chiamare, Sephiroth + Pallino), [01/03/2025 20:00]
Winrott?

Casa, [01/03/2025 20:00]
recupera un dump e dallo in pasto a windbg?
hai recentemente aggiornato l'hypervisor o cambiato configurazioni della CPU emulata?

💖💣, [01/03/2025 20:08]
ho solo cambiato il numero di processori da 3 a 4 la mattina stessa prima che si cringiasse... ma appunto innanzitutto ha funzionato per qualche ora con 4 CPU, poi adesso anche provando a rimettere a 3 il numero non parte più
dump dove lo trovo sul disco?" class="wp-image-17486"/><figcaption class="wp-element-caption"><a href="https://t.me/CommunityTecnologica/759175">https://t.me/CommunityTecnologica/759175</a></figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Comunque, <strong>il sistemaggio alla fine dei conti è stato scemissimo</strong>: ho provato a reimpostare i processori a 3, come erano prima, e non funzionava ancora... allora ho disattivato completamente #SMP, e come previsto allora è partito... per cui ho arrestato il sistema, riattivato SMP con 4 CPU, e giustamente continuava a partire... e poi, avendo provato a fare un altro riavvio per bene, ora sembra che <strong>semplicemente funzioni come si deve</strong>. Minchie che ingegneria! 😹</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":17485,"sizeSlug":"full","linkDestination":"none"} -->
<figure class="wp-block-image size-full"><img src="{{site.cdnurl}}/assets/uploads/2025/03/image-3.png" alt="💖💣, [01/03/2025 20:12]
attenzione, disattivando proprio SMP si avvia (e giustamente è lento in culo, 1 sola CPU è cacca)
wtf is happening
edit: e ora dopo aver fatto shutdown correttamente e reimpostato SMP=4 pare avviarsi correttamente... aiuto!!!

💖💣, [01/03/2025 20:30]
winrotting = girlrotting finito male

Giuseppe, [01/03/2025 20:38]
Un mio amico aveva lo stesso errore, l'ha mandato in garanzia e hanno detto che era un problema hardware e gli hanno fatto il rimborso del portatile
Edit:
Ah a te è una vm ho letto dopo

Giuseppe, [01/03/2025 20:38]
Winzozz

BlueDiamond, [01/03/2025 20:38]
Winbloat

💖💣, [01/03/2025 20:39]
per sfortuna non posso mandare QEMU in garanzia, ma visto che è bastato disattivare e poi riattivare un merdino per fixare mi accontento 😇

Davide ツ, [01/03/2025 20:44]
lo spegni e riaccendi dei giorni nostri

Sephiroth/Pallino (o come si dovrebbe chiamare, Sephiroth + Pallino), [01/03/2025 21:01]
Loserotting" class="wp-image-17485"/><figcaption class="wp-element-caption"><a href="https://t.me/CommunityTecnologica/759186">https://t.me/CommunityTecnologica/759186</a></figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Ho perso più tempo di quanto avrei voluto appresso a 'sta merdata, e durante la giornata avevo giustamente anche altre cose da fare che non rimediare agli <strong>spacc causati da QuickEMU e perfezionati da Minisoft</strong>, quindi pure ieri carestia di postaggio. Ma ora, anche se funziona tutto come prima, mi resta l'amaro in bocca, perché <strong>non trovo la logica dietro quello che è successo</strong>... forse Windows deve salvare permanentemente delle impostazioni interne sue riguardo i processori al cambio, che sono sminchiate un attimo prima, e crashando non ha avuto modo di farlo? <strong>Non ha senso!!!</strong> 🧟‍♀️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":17489,"sizeSlug":"full","linkDestination":"none"} -->
<figure class="wp-block-image size-full"><img src="{{site.cdnurl}}/assets/uploads/2025/03/image-6.png" alt="💖💣, [01/03/2025 19:37]
intanto.

[...], [01/03/2025 19:40]
ocomputer

💖💣, [01/03/2025 19:40]
odio Microsoft.

---

💖💣, [01/03/2025 20:36]
WINDO!!!

[...], [01/03/2025 21:01]
Windoesn't

💖💣, [01/03/2025 21:03]
vabbe ora do

💖💣, [01/03/2025 21:03]
prima dont" class="wp-image-17489"/><figcaption class="wp-element-caption"><a href="https://t.me/c/1519410362/346622">https://t.me/c/1519410362/346622</a> ~ <a href="https://t.me/c/1519410362/346646">https://t.me/c/1519410362/346646</a></figcaption></figure>
<!-- /wp:image -->