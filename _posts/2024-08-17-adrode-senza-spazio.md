---
ID: 8633
post_title: 'adrode senza spazio&#8230;'
post_name: adrode-senza-spazio
author: minioctt
post_date: 2024-08-17 17:48:45
layout: post
link: >
  https://octospacc.altervista.org/2024/08/17/adrode-senza-spazio/
published: true
tags:
  - Android
  - APK
  - archiviazione
  - dalvik
  - DEX
  - memoria
  - ottimizzazione
  - problemi
  - rogna
  - spazio
  - spreco
  - storage
  - trucchi
  - tweak
  - VDEX
  - VM
categories:
  - Senza categoria
title: 'adrode senza spazio&#8230;'
date: 2024-08-17 17:48:45
canonical_url:   https://octospacc.altervista.org/2024/08/17/adrode-senza-spazio/
---
<!-- wp:paragraph -->
<p>In questi giorni sono un po' meno salata del solito riguardo #Android, forse perché <a href="/microblog-mirror/2024/08/15/androide-ricacato/">i trucchi dell'altro giorno</a> hanno risolto la #rogna che più di tutte mi faceva incazzare... ma i #problemi restano!!! Sto usando abbastanza il telefono di recente, quindi tra le mie robe hackerine l'archiviazione mi si è riempita di nuovo, e di file da cancellare al volo non ne ho... però, mi ricordo che su Android le app finiscono (quasi) sempre ad occupare più spazio del loro peso di #APK, quindi buona parte del mio #storage è sprecata! L'ho accennato qualche volta, ma mai discusso, ma in pratica in <code>/data/app/&lt;pacchetto>/</code> vengono memorizzate le seguenti cose extra dal sistema, che le fabbrica a partire dagli APK. ⛏️</p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li><code>./oat/base.{odex,vdex,art}</code> (link interessanti su <a href="https://memos.octt.eu.org/m/bHLZbc9LLVmkehsLxfoVSn">memos.octt.eu.org/m/bHLZbc9LLVmkehsLxfoVSn</a>): file di compilazione <em>-Of-Ahead-Time</em> della runtime Android, praticamente il codice DalvikEXecutable ricompilato come nativo... Senza spiegare tutti i dettagli, servirebbero per velocizzare avvio ed esecuzione, però per certe app questi diventano letteralmente enormi; soprattutto il VDEX, che (stando a Google) conterrebbe copie 1:1 (di parti?) del #DEX assieme al codice aggiuntivo... sul mio Ximi per CapCut era 130 MB solo lui (quindi, tutta la cartella non-dati della app aveva superato i 500 MB!). 💣️</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li><code>./lib/*.so</code>: librerie native estratte dall'APK per l'architettura del proprio sistema... certo, queste servono, ma il punto è stanno anche nell'APK, quindi spazio buttato. In realtà, da Marshmallow in su, per un APK con una flag particolare nel manifest, e librerie conservate senza compressione, queste non vengono estratte, ma vedo ben poche app in giro che fanno così (ancora, <a href="https://memos.octt.eu.org/m/LBwtRWgGA5gbTVi8N97eXq">memos.octt.eu.org/m/LBwtRWgGA5gbTVi8N97eXq</a>). 📦️</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:paragraph -->
<p>Beh, in realtà si può risolvere qualcozina. Precisamente, avendo il root si può sia cambiare il comportamento di Android RunTime, che di default punta all'ottimizzazione delle prestazioni, ma può essere spinto alla #ottimizzazione dello spazio... sia inibire l'ottimizzazione per specifiche app. Le differenze in negativo che io ho notato con questa cosa sono sempre state minime, in realtà, però personalmente, avendo 64 GB e non 16 come un tempo, preferisco tenere le ottimizzazioni default per le app che uso giornalmente (o quasi), ma risparmiare spazio per quelle che tengo installate per "quando mi servono" (...che apro per davvero eh, ma solo qualche volta al mese o all'anno; ecco perché quando posso preferisco le webapp, ma non sempre posso). 🤭️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Ecco, ho testato e visto che basta cancellare la cartella <code>oat</code>, e rimpiazzarla con un file (vuoto) dallo stesso nome, e pare Android non vada più a rigenerare i file ottimizzati per quella app, la farà invece sempre girare con l'interprete JIT (che ripeto, io 'sta differenza la vedo solo nell'avvio che dura 2-5 secondi in più). Facendo questo procedimento anche solo per la prima decina scarsa di app ordinate per peso della cartella, escluse quelle che uso di continuo, ho guadagnato circa 1 GB, che... non è tanto... ma, dato che non ho alcun vero svantaggio, è tanto. Ora, se volessi levare l'ottimizzazione per tutte le app, che non farò anche se mi farebbe guadagnare 1 altro GB quasi tondo... è più complicato, per questo lascio i link, ma in breve si setta la sysprop <code>dalvik.vm.dex2oat-filter=space</code>, e le cartelle <code>oat</code> non verranno mai più ricreate (ma non so se debbano essere cancellate a mano o no). 👻️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Purtroppo, per le librerie native una soluzione così bella non c'è... procuratevi APK con le librerie non compresse (ad esempio, Chromium da <a href="https://download-chromium.appspot.com">download-chromium.appspot.com</a> le ha così), rompete le palle agli sviluppatori affinché buildino i loro APK nel modo giusto, o altrimenti riassemblatevi voi gli APK delle app più grosse che avete, se la situazione vi turba (io questo non lo farò, dovrei pure cambiare la firma sennò...). Insomma, ancora una volta Adrod è per chi vuole smanettare; chi vuole un telefono che funziona e basta se ne compri uno con KaiOS! 💖️</p>
<!-- /wp:paragraph -->