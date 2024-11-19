---
ID: 10999
post_title: androidiessedi
post_name: androidiessedi
author: minioctt
post_date: 2024-11-03 23:45:58
layout: post
link: >
  https://octospacc.altervista.org/2024/11/03/androidiessedi/
published: true
tags:
  - Android
  - API
  - archiviazione
  - hack
  - Java
  - SpaccWebView
  - storage
  - TODO
categories:
  - Senza categoria
title: androidiessedi
date: 2024-11-03 23:45:58
canonical_url:   https://octospacc.altervista.org/2024/11/03/androidiessedi/
---
<!-- wp:paragraph -->
<p>Ho realizzato tipo oggi una cosa che tecnicamente già sapevo di #Android, ma boh, non ci ho mai riflettutto. <strong>La memoria di archiviazione</strong> normale per i file <strong>è tutta una gigantesca hack!!!</strong> E programmando applicazioni si deve pagare le conseguenze di ciò... ooooooODIO ANDROID, <strong>diamine</strong>. 😩️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Anche me di 8 anni rimaneva un po' puzzled dal fatto che, sui dispositivi che avevo all'epoca, il percorso <code>/sdcard</code> non era la schedina microSD, ma la memoria interna del coso. Però, cosa doveva frecarmi? Voglio dire, a funzionare funzionava comunque tutto... E idem quando poi iniziai a vedere <code>/storage/emulated/0</code>: emulazione di non si sa che sfaccimm, ma vabbé. 😴️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>A quanto pare, storicamente gli androidi non avevano alcuna #archiviazione di file utente interna (!) standardizzata. Quindi, c'erano i dispositivi con relativamente tanta flash, che montavano una parte di questa su <code>/sdcard</code> (o simili) come succede oggi... e poi c'erano quelli sfigati con solo la partizione interna privata (<code>/data</code>), e che senza microSD fisica non facevano fare nulla, manco scattare foto (cacca). 😳️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>A leggere oggi i metodi #Java per l'ottenimento dei percorsi usciti fuori da quei tempi — che ancora non sono stati deprecati eh, e quindi ancora devono essere usati per fare determinate cose — si impazzisce per davvero. Perché si ha in sostanza roba <code>getExternal...Dir()</code> e <code>getExternalStorage...()</code> che, su qualunque dispositivo degli ultimi 10 anni (forse 15), in realtà puntano all'archiviazione interna. 😔️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Il disastro in retrospettiva non si capisce esattamente quando si è fermato, ma credo con l'arrivo di KitKat... che ha rotto un sacco le scatole all'epoca, per chi si ricorda, con i suoi permessi nuovi (quando Google rompe qualcosa, non è mai la prima volta), però intanto credo sia stata la versione che ha standardizzato la memoria fisicamente esterna come "memoria secondaria". 🤧️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>E quindi da quel momento c'è la #API <code>getExternalFilesDirs()</code> (plurale), che da in lista tutte le "memorie esterne", con la prima che è quella in realtà interna (e si chiama "primaria"), e le altre che sono in genere esterne per davvero, però si chiamano "esterne secondarie". Troppo confusionario? <strong>Immaginate di dover programmare</strong>. 😉️🗡️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>La cosa bella è che tutto questo non tiene neanche conto in primis dell'archiviazione adottabile aggiunta tempo dopo (Marshmallow), che è talmente un casino da essere buggata su molti dispositivi e infatti disattivata da molti vendor, e poi dell'archiviazione scoped introdotta ancora dopo (10-11) che come sapete da utente amo tantissimo (sarcasmo). Ma, <em>io digresso</em>. 💀️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>In realtà, a parte i lati negativi, lo scoped #storage ha un suo vantaggio, cioè che genericizza ancora di più l'accesso a memorie esterne e non solo (anche a percorsi della memoria interna privata di app programmate per condividerli, ad esempio Termux!). Lo dico semplicemente per riconoscere che, prima di lui, la API era veramente terribile, e lo sto sperimentando sulla mia pelle adesso. 🥶️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":11001,"sizeSlug":"full","linkDestination":"none"} -->
<figure class="wp-block-image size-full"><img src="{{site.cdnurl}}/assets/uploads/2024/11/image-1.png" alt="" class="wp-image-11001"/><figcaption class="wp-element-caption">Il mood è letteralmente: #TODO implementare le #hack per supportare TUTTI gli Androidz sulla terra, dai dinosauri con API level 1 e mount stranissimi per colpa di OEM scassatutto, fino ai dispositivi correnti e futuri!!! 💣️💣️</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Ho a malapena iniziato a scrivere quello che serve per supportare tutte le minchiate della memoria nella #SpaccWebView Android, e già è lollissimo, nonostante tutti i TODO ancora da sostituire. E tutto ciò serve... per via di OEM tipo Samsung (ma non solo): <a href="https://stackoverflow.com/questions/5524105/how-could-i-get-the%20%20-correct-external-storage-on-samsung-and-all-other-devices">su Stackoverflow leggo</a> che i developer dell'epoca non erano felici del fatto che la microSD fosse montata in <code>/sdcard/external_sd</code> (o simili)... 🤭️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Per chi vuole approfondire oltre: <a href="https://medium.com/@emilynguyen1212/demystifying-internal-vs-external-storage-in-modern-android-54df92bbc563">https://medium.com/@emilynguyen1212/demystifying-internal-vs-external-storage-in-modern-android-54df92bbc563</a>, <a href="https://blog.wislon.io/posts/2014/11/20/xamarin-and-android-kitkat-and-your-external-sd-card">https://blog.wislon.io/posts/2014/11/20/xamarin-and-android-kitkat-and-your-external-sd-card</a> (, e altro non so). Io ora <strong>basta</strong>. 🥴️</p>
<!-- /wp:paragraph -->