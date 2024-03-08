---
ID: 2824
post_title: melodsi camera mobile!
post_name: melodsi-camera-mobile
author: minioctt
post_date: 2024-03-05 18:52:33
layout: post
link: >
  https://octospacc.altervista.org/2024/03/05/melodsi-camera-mobile/
published: true
tags:
  - "1288"
  - Android
  - app
  - applicazione
  - console
  - crash
  - DSi
  - DSiWare
  - emulatore
  - emulatori
  - emulazione
  - firmware
  - fotocamera
  - FotocameraDSi
  - melonDS
  - melondsAndroid
  - NDS
  - Nintendo
  - NintendoDSi
  - porting
  - Samsung
  - sfizio
  - smartphone
  - soluzione
  - tablet
  - Xiaomi
categories:
  - Senza categoria
title: melodsi camera mobile!
date: 2024-03-05 18:52:33
canonical_url:   https://octospacc.altervista.org/2024/03/05/melodsi-camera-mobile/
---
<!-- wp:paragraph -->
<p>Parlando di #emulatori non morti, forse saprete che ne esistono tipo solo 2 che emulano il #NintendoDSi (oltre alla versione base del #NDS), e #melonDS è quello che funziona meglio. 💫️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Mi sta essendo utile l' #emulazione #DSiWare per controllare cose e catturare schermate sulla #FotocameraDSi senza dover per forza usare la #console reale, per quell'articolo che sto finendo*. Però, per quello non mi serve davvero scattare foto, e quindi mi è stata comoda la funzione per impostare come flusso della camera immagini salvate sul PC (Config &gt; Camera Settings &gt; Image file), che avevo generato al volo con Bing AI per averne della tipologia che mi serviva e con un'aspetto un po' stock, dimostrative appunto. 🎁️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Però, questo #emulatore <a href="https://melonds.kuribo64.net/comments.php?id=174">supporta le fotocamere reali dalla versione 0.9.5</a>, e oggi ho scoperto che il suo #porting per #Android fa lo stesso da non so quanto tempo! Per lo #sfizio, ho provato sul mio #Xiaomi in tutti i modi, ma purtroppo va in #crash (ho creato la <a href="https://github.com/rafaelvcaetano/melonDS-android/issues/1288">issue #1288</a> a riguardo); invece, sul mio #tablet #Samsung funziona da dio, sia obiettivo interno che esterno, e con la giusta rotazione. 👇️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":2826,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="{{site.cdnurl}}/assets/uploads/2024/03/photo_2024-03-05_18-47-10-864x1440.jpg" alt="Screenshot di melonDS-android sul tablet che esegue la camera DSi, che punta alla mia scrivania con la tastiera e il n3DSXL." class="wp-image-2826"/><figcaption class="wp-element-caption"><a href="https://t.me/Nlhlehde/178364">https://t.me/Nlhlehde/178364</a></figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Io ho ben 2 3DS, quindi a poco mi serve questa cosa; soprattutto dato che usare i sensori ottici di uno #smartphone moderno fa venire le foto troppo bene, e senza quell'aspetto retro che a me serve... però idk, se volete usare a tutti i costi le funzioni fighe della #fotocamera #Nintendo, e non avete l'hardware reale, allora questa è una bella #soluzione:</p>
<!-- /wp:paragraph -->

<!-- wp:list {"ordered":true} -->
<ol><!-- wp:list-item -->
<li>Installate #melondsAndroid, <a href="https://github.com/rafaelvcaetano/melonDS-android/releases/download/nightly-release/app-gitHub-nightly-release.apk">preferibilmente la nightly</a></li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li>Preparate il #firmware DSi (che vi consiglio di <a href="https://archive.org/details/ds-firmware-european-dsi-nand-and-firmware">scaricare da qui</a>, è il dump che uso io e confermo che funziona) da dare all'emulatore, creando due cartelle separate per i file DS e #DSi, e rinominando i file in modo preciso, altrimenti la #app si lamenta:<!-- wp:list -->
<ul><!-- wp:list-item -->
<li><code>biosdsi7.bin</code> =&gt; <code>dsi/bios7.bin</code></li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li><code>biosdsi9.bin</code> =&gt; <code>dsi/bios9.bin</code></li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li><code>biosnds7.bin</code> =&gt; <code>nds/bios7.bin</code></li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li><code>biosnds9.bin</code> =&gt; <code>nds/bios9.bin</code></li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li><code>dsfirmware.bin</code> =&gt; <code>nds/firmware.bin</code></li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li><code>dsifirmware.bin</code> =&gt; <code>dsi/firmware.bin</code></li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li><code>dsinand.bin</code> =&gt; <code>dsi/nand.bin</code></li>
<!-- /wp:list-item --></ul>
<!-- /wp:list --></li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li>Fate "Boot firmware &gt; DSi", da lì si può avviare la magica #applicazione fotografica, date il permesso quando richiesto, e se tutto va bene potete godere. ❤️‍🔥️</li>
<!-- /wp:list-item --></ol>
<!-- /wp:list -->

<!-- wp:paragraph -->
<p>*(Sto facendo progressi per l'articolone, ma troppo lentamente, nonostante io abbia scritto ben <em>settemila parole</em> vedo che mi mancano ancora troppe cose... la mente è pazza, questa situazione è assurda. 😵‍💫️)</p>
<!-- /wp:paragraph -->