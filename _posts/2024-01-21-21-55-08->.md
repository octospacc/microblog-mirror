---
ID: 1223
post_title: '#Investigazione della app PostePay senza radice!'
post_name: >
  investigazione-della-app-postepay-senza-radice
author: minioctt
post_date: 2024-01-21 21:55:08
layout: post
link: >
  https://octospacc.altervista.org/2024/01/21/investigazione-della-app-postepay-senza-radice/
published: true
tags:
  - Android
  - APK
  - app
  - applicazione
  - BuildProps
  - busybox
  - codice
  - controllo
  - dipendenza
  - dispositivo
  - funzioni
  - idee
  - indovinare
  - interessante
  - ipotesi
  - Italia
  - lib
  - libreria
  - Magisk
  - malamente
  - messaggio
  - mistero
  - MotoE
  - OEM
  - OpenSource
  - post
  - Poste
  - PostePay
  - programma
  - provare
  - ReverseEngineering
  - ricerca
  - root
  - rootato
  - RootBeer
  - SafetyNet
  - SlaveryNet
  - smartphone
  - software
  - source
  - statale
  - telefoni
  - telefono
  - test
categories:
  - Senza categoria
title: '#Investigazione della app PostePay senza radice!'
date: 2024-01-21 21:55:08
canonical_url:   https://octospacc.altervista.org/2024/01/21/investigazione-della-app-postepay-senza-radice/
---
<!-- wp:paragraph -->
<p>Scrivo questo #post in risposta al seguente:</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":1321,"sizeSlug":"full","linkDestination":"none"} -->
<figure class="wp-block-image size-full"><img src="{{site.cdnurl}}/assets/uploads/2024/01/image-7.png" alt="&quot;App postepay — chiaramente c'è qualcosa che non va&quot;" class="wp-image-1321"/><figcaption class="wp-element-caption"><a href="https://t.me/journalctl_micro/3193">https://t.me/journalctl_micro/3193</a></figcaption></figure>
<!-- /wp:image -->

<!-- wp:html -->
<!--<iframe id="telegram-post-journalctl_micro-3193" src="https://t.me/journalctl_micro/3193?embed=1&amp;mode=tme" width="100%" height="" frameborder="0" scrolling="no" style="overflow: hidden; color-scheme: light dark; border: medium; min-width: 320px; height: 629px;"></iframe>-->
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>Molto funny: la #app #Android di PostePay rileva modifiche di sistema ad un #telefono che passerebbe #SafetyNet, col bootloader bloccato, e suppongo quindi senza #root. 😁️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Ho preso 5 minuti (uhmm, no, magari) per un breve #ReverseEngineering di quella parte della #applicazione, arrivando a questa sezione del file (<em>baksmaliato</em> dall'<a href="https://www.apkmirror.com/apk/poste-italiane-s-p-a/postepay/postepay-11-390-15-release/postepay-11-390-15-android-apk-download/">ultima versione presente su APKMirror</a>) <code>smali_classes6/posteitaliane/posteapp/apppostepay/ui/activity/SplashActivity.smali</code>, che invoca il dialogo di avviso in foto: 🤓️</p>
<!-- /wp:paragraph -->

<!-- wp:code -->
<pre class="wp-block-code"><code># riga 4358
.method public final e()V

# ... inizializzazione di altra roba

# riga 4503
new-instance v1, Lcom/scottyab/rootbeer/b;
invoke-direct {v1, v0}, Lcom/scottyab/rootbeer/b;-&gt;&lt;init&gt;(Landroid/content/Context;)V
invoke-virtual {v1}, Lcom/scottyab/rootbeer/b;-&gt;a()Z
move-result v1
if-eqz v1, :cond_2

# ... visualizza il dialogo se il codice sopra non ha saltato

# riga 4542
:cond_2
# ... ritorna e termina il metodo</code></pre>
<!-- /wp:code -->

<!-- wp:paragraph -->
<p>Detto in italiano, questo #codice invoca un metodo (dal nome offuscatino?) presente in una certa classe "<code>com.scottyab.rootbeer</code>"... ed esce fuori, con una #ricerca sul web, che questa è una #libreria #OpenSource (evidentemente integrata dagli sviluppatori di #PostePay) per controllare se un #dispositivo Android è #rootato. (Non se passa o meno #SlaveryNet, attenzione.) 🍻️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>È un po' troppo rubatempo mettersi a capire quale effettivamente è nel codice Java quella funzioncina <code>b;-&gt;a()Z</code> ora, quindi tiriamo a #indovinare. Ci sono, in <a href="https://github.com/scottyab/rootbeer/blob/091a157959a2de58abc4b51b99fb9189ecd284e2/rootbeerlib/src/main/java/com/scottyab/rootbeer/RootBeer.java">RootBeer.java</a>, tante #funzioni <code>boolean</code>, di cui varie ausiliarie, e 2 principali: <code>isRooted</code>[<code>With</code>/<code>Without</code>]<code>BusyBoxCheck()</code>. Queste due principali restituiscono un valore positivo qualora anche solo una delle ausiliari chiamate restituisca <code>true</code>, l'unica differenza tra le due è il fare anche il controllo per la presenza del binario <code>busybox</code>, oppure no... E quindi le opzioni sono le seguenti: 📜️</p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li><code>checkForBinary(BINARY_SU)</code>, <code>checkSuExists()</code>, <code>checkForRootNative()</code>, <code>checkForMagiskBinary()</code>: controllo effettivo del root; <strong>escludo</strong>, da quel che ricordo il suo telefono non è rootato, ed avendo il bootloader bloccato direi che possiamo stare tranquilli.</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li><code>detectRootManagementApps()</code>: <strong>scarto</strong>, se il telefono non è rootato non avrebbe senso tenere <a href="https://github.com/scottyab/rootbeer/blob/091a157959a2de58abc4b51b99fb9189ecd284e2/rootbeerlib/src/main/java/com/scottyab/rootbeer/Const.java#L15">app di gestione del root</a>.</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li><code>detectPotentiallyDangerousApps()</code>: controlla se sono installate <a href="https://github.com/scottyab/rootbeer/blob/091a157959a2de58abc4b51b99fb9189ecd284e2/rootbeerlib/src/main/java/com/scottyab/rootbeer/Const.java#L30">app "a umma umma"</a>; <strong>escludo</strong> perché credo nessuna sia utile senza il root, e qualcuna forse è pure malware... eccetto Lucky Patcher, che però ad oggi si auto-spoofa.</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li><code>checkForRWPaths()</code>: <strong>scarto</strong>, controlla se alcuni <a href="https://github.com/scottyab/rootbeer/blob/091a157959a2de58abc4b51b99fb9189ecd284e2/rootbeerlib/src/main/java/com/scottyab/rootbeer/Const.java#L91">percorsi sensibili</a> sono scrivibili, immagino di no col bootloader bloccato e senza root.</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li><code>checkForDangerousProps()</code>: <strong>da verificare</strong>, controlla se <a href="https://github.com/scottyab/rootbeer/blob/091a157959a2de58abc4b51b99fb9189ecd284e2/rootbeerlib/src/main/java/com/scottyab/rootbeer/RootBeer.java#L262">alcune #BuildProps di Android</a> sono particolari.</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li>detectTestKeys(): inizialmente sospettavo, ma lo abbiamo verificato (con <code>getprop | grep build.tags</code>), e pare <strong>non sia il caso</strong> (tutto è listato come "<code>release-keys</code>").</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li><code>checkForBinary(BINARY_BUSYBOX)</code>: questa <strong>potrebbe essere</strong>, ed è #interessante, controlla come ho detto prima la presenza del binario <code>busybox</code>, ma da <a href="https://github.com/scottyab/rootbeer/commit/0ff04d397ee8f7d336dcc29c5717d996552f5f2c">questo commit del 2020</a> non è più usata nel check predefinito perché — come detto nel commento in quella parte di #source, e alla sezione "<a href="https://github.com/scottyab/rootbeer/blob/091a157959a2de58abc4b51b99fb9189ecd284e2/README.md#false-positives">False positives</a>" del readme — alcuni #OEM lo lasciano quando non dovrebbero (io credevo fosse normale tralaltro, non un'anomalia!).</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:paragraph -->
<p>Quest'ultima #ipotesi mi cattura perché innanzitutto, te micro hai proprio un #MotoE <a href="https://t.me/journalctl_micro/1641?embed=1&amp;mode=tme">da quello che ricordo</a>, che è uno dei #telefoni listati esplicitamente sul readme... certo, se la #lib usata nella app fosse stata aggiornata, questo non sarebbe dovuto succedere, a meno che i programmatori delle #Poste non abbiano stupidamente usato la funzione di #controllo aggressiva. Però tbh, considerando la qualità del #software #statale o semi-statale qui in #Italia, secondo me semplicemente quella #dipendenza non è mai stata aggiornata (da un lato però, come biasimarli... "se funziona, non toccare"...). Al momento però non riesco a #provare ciò, perché non trovo #APK abbastanza vecchi di PostePay, quindi lancio solo #idee al vento. 😩️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Io punto su #busybox per risolvere questo #mistero. Lo #smartphone non è il mio, quindi io ora posso solo aspettare, se dovessero uscire novità farò un banale edit. (Sperando non siano così grosse da necessitare di un nuovo #messaggio). 😼️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p><strong>Edit</strong>: non ci ho beccato nemmeno per il cavolo: dalla regia, che ha ora testato con <a href="https://apkcombo.com/rootbeer-sample/com.scottyab.rootbeer.sample/">il #programma di #test di #RootBeer</a>, vengo a scoprire #malamente che le mie opzioni tecnicamente più plausibili si sono rivelate sbagliate. <a href="https://t.me/K6lKm8ZD7BAxNTg8/5907?embed=1&amp;mode=tme">"Root Management Apps" è cosa fa scattare gli allarmi</a>, cosa che io giustamente ho escluso a priori, ma la regia mi fa appunto sapere che aveva #Magisk Manager installato (soltanto a prendere polvere perché, questo l'ho pensato bene, non ha il root nell'effettivo); e, come previso, <a href="https://t.me/K6lKm8ZD7BAxNTg8/5911?embed=1&amp;mode=tme">la disinstallazione mette a tacere i falsi positivi</a>. Vabbè oh, non potevo immaginarmelo... 🤕️</p>
<!-- /wp:paragraph -->