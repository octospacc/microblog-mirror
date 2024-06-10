---
ID: 6131
post_title: memocto momentocto
post_name: memocto-momentocto
author: minioctt
post_date: 2024-06-03 15:41:18
layout: post
link: >
  https://octospacc.altervista.org/2024/06/03/memocto-momentocto/
published: true
tags:
  - appunti
  - custom
  - fix
  - free
  - istanza
  - Markdown
  - Memocto
  - Memos
  - note
  - OAuth
  - personalizzazione
  - public
  - registrazione
  - selfhost
  - sfondo
  - social
  - SSO
  - test
  - usememos
  - webapp
categories:
  - Senza categoria
title: memocto momentocto
date: 2024-06-03 15:41:18
canonical_url:   https://octospacc.altervista.org/2024/06/03/memocto-momentocto/
---
<!-- wp:image {"id":6211,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="{{site.cdnurl}}/assets/uploads/2024/06/image-3-960x506.png" alt="" class="wp-image-6211"/><figcaption class="wp-element-caption">TLDR: ho aperto le registrazioni sull'istanza #Memos, la <a href="https://octospacc.altervista.org/2024/05/31/app-note-con-buco-sorpresa/">app di note dell'altro ieri</a>, e quindi obbligatorio dirvi di provarla. Ho anche messo (...ma non testato) login con GitHub, GitLab, e Google, quindi la scusa di scocciarsi per email e password non esiste... Ripeto che ha funzioni social insolite (dette sul vecchio post), quindi più utenti ci sono più è divertente; ma, se vi doveste scocciare, potete sempre esportare tutto in <strong>Markdown</strong> in un colpo solo e scappare. <a href="https://memos.octt.eu.org/auth">memos.octt.eu.org/auth</a> 🔥️</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Forse è presto per parlare, ma sento comunque che forse questo stile di note è utile e molto workabile, per i motivi che ho spiegato già. A tempo totalmente perso, ho già copiato più link e scritto più promemoria su 'sto robo rispetto a quanto riuscirei a fare sulla TiddlyWiki con la stessa quantità di lavoro, ma lì fatta invece a tempo impegnato... non male. Sicuramente ciò è dovuto anche al fatto che: qui banalmente scrivo nella casella di testo in alto, invece lì ogni volta (per non rompere l'utilità della struttura) dovrei aprire le specifiche pagine e scrivere sotto le specifiche sezioni... un bel macello. In più, se (su mobile) la pagina mi viene uccisa, si ricarica comunque velocemente e senza farmi perdere il testo, è proprio di lusso! 🪙️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Intanto ho continuato a tentare di personalizzare l'interfaccia della webapp, e per il momento credo resterò con questa estetica: dettagli generali della UI lasciati circa stock, ma con uno sfondo di blocchi di Minecraft (come nei menu di Minecraft stesso)... perché boh si, quelli monocromatici bianco e nero sono una noia mortale. Per il tema scuro blocchi di ossidiana, e per quello chiaro lascerò a voi lo sfizio di indovinare (ma vi dico che, se per l'ossidiana ho fatto una buona scelta al primo colpo, quest'altro blocco non è stato facile sceglierlo, fin troppi tentativi con altri bianchi stonavano). ⛏️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Ovviamente... la vulnerabilità di cui parlai non è stata messa a posto. Ci sono continui commit sulla repo, ma nulla che sembri relativo a quello, e sul mio rapporto tace ancora tutto. Ho inviato anche una mail per sicurezza, sia mai che semplicemente non abbiano notato la mia segnalazione, essendo separata dalle normali issue, ma niente da fare. Stamane la pazienza è finita, volevo aprire ad altri utenti, quindi a modo mio ho modificato la funzionalità incriminata per tappare il bucone al volo, al costo di un pochino di funzionalità (ma non tutta). Avendo scoperto che è tutto nel frontend il problema, però, dovrei riuscire anche a sistemarlo correttamente se avrò qualche minuto in più, e in quel caso inverò una pull request. (Non mi pare furbissimo dare in pubblico il codice modificato così ora, ma, se vi serve, chiedetemelo e ve lo invio nel rispetto della AGPL.) 🦜</p>
<!-- /wp:paragraph -->