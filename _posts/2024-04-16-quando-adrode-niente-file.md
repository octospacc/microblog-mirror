---
ID: 4564
post_title: quando adrode niente file
post_name: quando-adrode-niente-file
author: minioctt
post_date: 2024-04-16 12:23:04
layout: post
link: >
  https://octospacc.altervista.org/2024/04/16/quando-adrode-niente-file/
published: true
tags:
  - Android
  - API
  - APK
  - app
  - browser
  - browserini
  - HTML
  - Mannaggia
  - navigatori
  - permessi
  - problema
  - soluzione
  - storage
  - WebView
categories:
  - Senza categoria
title: quando adrode niente file
date: 2024-04-16 12:23:04
canonical_url:   https://octospacc.altervista.org/2024/04/16/quando-adrode-niente-file/
---
<!-- wp:paragraph -->
<p>Ieri <em>non ho assolutamente</em> portato a zero la batteria del tablet per tutto il tempo che ci ho messo a provare #app diverse e a vedere cose per risolvere l'ennesimo problema causato dalle nuove versioni di #Android... ok, in tutta onestà la batteria l'ho finita nel bus più tardi, però comunque, una buona parte della carica è sparita solo nel tempo perso prima. 😶‍🌫️️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Un altro po' mi sembrava di star usando iOS per non riuscire a fare una cosa così banale come: aprire un file #HTML direttamente nel #browser, ed averlo funzionante, con anche il caricamento di tutte le risorse embeddate, senza ricorrere ad un webserver locale che causa solo rogne in più... <a href="https://t.me/OTIdroid/629851">come ho detto su OTIDroid</a>, questa cosa sembra una cazzata, ma è sorprendente quanto è difficile da Android 11 in su:</p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Firefox Fenix non ha mai supportato i percorsi <code>file:///</code>, #mannaggia a te Mozilla</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li><a href="https://stackoverflow.com/questions/72649676/how-do-i-set-permissions-to-open-a-local-file-in-a-browser-on-an-android-12-phon/76199132#76199132">Firefox legacy funzionerebbe</a>, solo che la versione più recente (v68.11.0) è comunque antica e quindi molte nuove #API web non vanno</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li>I #navigatori Chromium, da quando sono aggiornati per targettare le nuove API Android, non riescono più a vedere qualsiasi file su <code>/sdcard/</code>, ma solo quelli multimediali (utilissimo eh?); e si, hackerare il manifest per portare indietro l'API target rompe la app</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li>La più recente versione di Chromium precedente a tutte queste novità che ho trovato (~<a href="https://github.com/bromite/chromium/releases/tag/79.0.3945.94">v79.0.3945.94</a>) è comunque molto vecchia, stesso problema di Firefox</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:paragraph -->
<p>Evidentemente nessuno ha voglia di creare un browser che funziona correttamente, (nemmeno io, in quel momento volevo solo fare un po' di <em><s>programmazione</s> HTML</em>), maremma maiala... ma, per fortuna mi torna in mente che una #soluzione ci sarebbe: le app che usano la #WebView di sistema funzionano ancora normalmente (senza codice aggiornato per lo #storage) se hanno un target SDK vecchio ma, proprio perché il motore che usano è quello di sistema aggiornato, la compatibilità con gli standard è massima. 😤️</p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Sorprendentemente, di #browserini così che siano allo stesso tempo non mezzi rotti, abbiano un target vecchio, e il permesso di lettura dell'archiviazione, non ce ne sono molti. L'unico che ho trovato è "<a href="https://f-droid.org/en/packages/org.tint/">Tint Browser</a>", che funzionerebbe già così senza fatica, e stavo per usare quello... ma ha uno strano bug che fa sparire tutte le schede aperte sia alla chiusura della app, che la rotazione dello schermo... e non viene aggiornata da 10 anni, quindi mi sa mi sa che il #problema non sarà risolto. 🕸️</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Ho però notato che virtualmente qualunque altra app WebView browser non si rompe se subisce quelle modifiche che ho detto all'<code>AndroidManifest.xml</code>, probabilmente perché sono così semplici che non hanno codice chissà quanto specifico a certe versioni delle API... quindi ne ho semplicemente scelto uno che mi piaceva, ho usato un editor di #APK per portare indietro il valore <code>android:targetSdkVersion</code> del blocco <code>&lt;uses-sdk></code> (mentre il permesso <code>READ_EXTERNAL_STORAGE</code> c'era già quindi non ho dovuto scriverlo io), e in mezzo minuto il problema è risolto. 🌚️<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Tra gli infiniti che si trovano ho preso questo "<a href="https://f-droid.org/packages/com.cookiegames.smartcookie/">SmartCookieWeb</a>" comunque, ha delle funzioni avanzate carine. L'APK già modificato, in caso ne aveste bisogno, l'ho caricato <a href="https://hlb0it.blogspot.com/?path=/Drive/Misc/SmartCookieWeb%20%28com.cookiegames.smartcookie%29%20v16.3%20Manifest%20API%2028%20Mod.apk">qui sul mio server</a>.</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list --></li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:paragraph -->
<p>Una cosa strana però: teoricamente è stato Android 11, cioè target 30, ad introdurre lo spacc più totale dei #permessi di accesso all'archiviazione locale, quindi a regola impostare il 29 (Android 10) sarebbe sufficiente a visualizzare il permesso di gestire tutti i file nelle impostazioni al posto di quello per soltanto i media... eppure io ho dovuto scrivere 28 (Android Pie). Sarà un fatto del mio Android 12 forse, boh, anyways the fog is coming fuck you Google. 👁️</p>
<!-- /wp:paragraph -->