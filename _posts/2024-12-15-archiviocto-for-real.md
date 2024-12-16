---
ID: 12459
post_title: archiviocto for real.
post_name: archiviocto-for-real
author: minioctt
post_date: 2024-12-15 13:48:13
layout: post
link: >
  https://octospacc.altervista.org/2024/12/15/archiviocto-for-real/
published: true
tags:
  - archivio
  - archivioctt
  - copia
  - Memos
  - MicroBlog
  - mirror
  - MkDocs
  - pubblico
categories:
  - Senza categoria
title: archiviocto for real.
date: 2024-12-15 13:48:13
canonical_url:   https://octospacc.altervista.org/2024/12/15/archiviocto-for-real/
---
<!-- wp:paragraph -->
<p>Lasciando stare come, anche stavolta, questa sia la dimostrazione di come proprio non ce la faccio a pensare alle cose urgenti e necessarie, e preferisco di gran lunga perdere tempo facendo lavoro finto o di utilità discutibile... </p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Ieri mattina ho effettivamente reso reale <strong>il famoso #archivioctt,</strong> di cui mezzo anno fa millantavo la necessità, ma che poi buttai nel dimenticatoio presa da altre cose... Forse in parte anche perché <a href="/microblog-mirror/2024/07/26/pelicoso/">avrei voluto fare un tema personalizzato per generare il sito statico</a>, ma quello richiede minimo qualche giorno di impegno, quindi mi è venuto lo zzz. 😆️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>In pratica, sarebbe un <strong>sito #pubblico</strong>, generato da <strong>repository Git pubbliche</strong> (multipli #mirror, come sempre, per <em>sicurezza</em>), contenente tutta <strong>la roba mia pubblica</strong> aggregata in un unico posto, poiché <em>non si sa mai</em>. Toh, ha le categorie, i tag, la ricerca statica full-text, e funziona pure tutto navigando da <code>file://</code>... <strong>Godo!!!</strong> 😳️🥵️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":12461,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="{{site.cdnurl}}/assets/uploads/2024/12/image-3-960x528.png" alt="Screenshot con la sezione blog aperta dell'archivioctt a finestra grande, la sidebar di lato mostra archivi del microblog e la lista di memos. La finestra piccola davanti mostra la sidebar a scomparsa. I file sorgenti Markdown + script + configurazioni pesano 3.8 MB, il sito compilato 180 MB, senza media." class="wp-image-12461"/><figcaption class="wp-element-caption">Sarà fatta una pagina per indicare tutti i mirror, ma i 2 attivi ora sono <a href="https://archivioctt-61aad6.gitlab.io"><strong>https://archivioctt-61aad6.gitlab.io</strong></a> e <a href="https://octospacc.github.io/archivioctt/"><strong>https://octospacc.github.io/archivioctt/</strong></a>. E si può scaricare uno ZIP godibile offline da <a href="https://github.com/octospacc/archivioctt/archive/refs/heads/gh-pages.zip">https://github.com/octospacc/archivioctt/archive/refs/heads/gh-pages.zip</a>! (NON abusatene.) 💣️💣️</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Per ora in realtà vengono duplicati solo i contenuti <a href="/microblog-mirror/2024/06/03/memocto-momentocto/">dei miei Memos</a>, e del #microblog <strong>fritto misto</strong>. Pensare che quest'ultimo <a href="https://octospacc.github.io/microblog-mirror/">esisteva già da mesi, con Jekyll</a>... credevo di averne parlato ma non riesco a ritrovare nessun post a riguardo, quindi... ops. Quello continuerà ad esistere, tanto mi costa più fatica toglierlo di mezzo, che semplicemente lasciare che continui ad aggiornarsi. ☺️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Dovrò allora vedere di integrare il backuppaggio anche dei miei profili di Pixelfed e Spacc BBS, nonché di roba vecchissima (post Telegram e social di anni fa), e questo mi darà altre sfide, ma... Lo mio #archivio è per ora venuto sorprendentemente bene come UX, usando un tema+generatore generico, <a href="https://squidfunk.github.io/mkdocs-material/" target="_blank" rel="noreferrer noopener">Material for MkDocs</a>. (Dopo averne provati tipo 5 o 10 che out-of-the-box non andavano bene, ma ci sta.) 📦️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Dettagli per chi non tocca erba li avrete la prossima volta, <a href="/microblog-mirror/2024/02/14/finalmente-backup-veri/">anche perché quelli di base li dissi già</a>, e da lì è cambiato poco: lo script di backup sul server è sempre quello, semplicemente ora #copia i post Markdown da WordPress anche sull'altra repo Git, li patcha con uno script shell quasi identico a quello per Jekyll, e con poche righe in più + un altro script <code>sh</code> prepara anche i #memos. 🧞‍♀️️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>(Ricordate che l'entropia digitale è una costante sempre più reale, che ogni giorno più del precedente mangia tutto ciò che trova sul suo percorso, con il rischio di eliminare dalla faccia della terra me e le mie cose, voi e le vostre cose, se non prendete i dovuti accorgimenti... <em><strong>he comes</strong></em>.)</p>
<!-- /wp:paragraph -->