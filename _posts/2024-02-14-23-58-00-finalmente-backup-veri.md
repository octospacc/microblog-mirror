---
ID: 2034
post_title: finalmente backup veri.
post_name: finalmente-backup-veri
author: minioctt
post_date: 2024-02-14 23:58:00
layout: post
link: >
  https://octospacc.altervista.org/2024/02/14/finalmente-backup-veri/
published: true
tags:
  - AlterVista
  - backup
  - bug
  - codice
  - debugging
  - esportazione
  - MicroBlog
  - modifiche
  - plugin
  - post
  - problemino
  - REST
  - rogna
  - script
  - server
  - sincronizzazione
  - tempo
  - WordPress
  - XML
  - XRSS
categories:
  - Senza categoria
title: finalmente backup veri.
date: finalmente backup veri.
canonical_url:   https://octospacc.altervista.org/2024/02/14/finalmente-backup-veri/
---
<!-- wp:paragraph -->
<p>Ben 2 mesi fa (pensavo meno...) <a href="https://octospacc.altervista.org/2023/12/12/464/">avevo detto qualche dettaglio sul #backup del #MicroBlog</a>... la metà delle cose rimane ancora valida, ma è uscita fuori qualche #rogna nel tempo. 🕤️</p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Avevo notato che #Altervista tende ad invalidare le sessioni un po' a caso, quindi puntualmente lo #script falliva ad esportare il file #XRSS con cURL. Per un po' di #tempo non ho tentato di risolvere il problema, immaginando che ci dovesse essere un modo migliore dello scraping di farlo, ma allo stesso tempo non riuscendo a pensare a nulla, e ho fatto giusto qualche #esportazione a mano di routine. ✍️</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li>Non mi preoccupavo troppo perché (e ricordavo di averlo detto, ma temo di non averlo mai fatto, non trovo il post) avevo installato il plugin "<a href="https://github.com/litefeel/writing-on-github">Writing on GitHub</a>", che in automatico esporta i nuovi #post in Markdown <em>nel posto lì dove dice il nome</em>... sembrava perfetto, ma appena 2 settimane (meglio tardi che troppo tardi) fa ho scoperto che non fa il commit di eventuali modifiche apportate ad un post dopo la creazione (nemmeno con il tasto per forzare), che è quantomeno un #problemino. 🧨️</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:paragraph -->
<p>Troppo troppo pallose 'ste cosine qui, ma menomale che proprio oggi mi è venuto lo schiribizzo di tentare di sistemarle, un po' anche grazie alla minima ulteriore conoscenza tecnica di #WordPress accumulata in queste lunghe settimane, e quindi ecco i miei aggiustamenti: ⛏️</p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Ho fatto un #plugin mio per esporre un endpoint #REST custom che mi da il documento #XML di esportazione, quindi posso usare sempre <em>il curlo</em> o quello che è, ma senza impazzire. Ho pagato ciò con la pazzia ora, però, in quanto nonostante avessi capito subito di dover usare una certa funzione <code><a href="https://developer.wordpress.org/reference/functions/export_wp/">export_wp()</a></code>, non mi è stato subito chiaro che io dovessi includere <a href="https://github.com/WordPress/wordpress-develop/blob/7b24083859c37d8ac75b9549f458bc389610eaef/src/wp-admin/export.php#L17">un certo file di libreria</a> per poterla effettivamente chiamare; la documentazione ufficiale a riguardo è scarsa, e di quella terza non ne parliamo proprio. <a href="https://chat.openai.com/share/0972bca1-8dec-4493-bdd6-4632e77310f6">Anche ChatGPT a 'sto giro è stato fregato dalla realtà del mondo</a>. 😱️</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li>Ho invano perso po' di tempo a ravanare nel #codice di WOGH per capire come mai non prendesse in conto le #modifiche. Temevo non fosse programmato per farlo, ma in effetti lo è (e, a pensarci un attimo, sarebbe strano altrimenti), quindi è un #bug. Vabbè, dopo troppo #debugging sono arrivata alla conclusione che per qualche motivo non salva l'hash dei commit che fa, necessario per crearne di nuovi che modificano file esistenti, ma cercare di sistemarlo per bene è una grossa rogna che non voglio nemmeno iniziare a crearmi. Quindi, dato che la #sincronizzazione perfettamente istantanea non mi serve, ho banalmente aggiunto la scrittura su file in una cartella dall'URL segreto in <code>wp-content</code>, quindi poi prelevo tutto via FTP. Ahimé duplico lo spazio occupato sul #server, ma tanto in primis non ho limiti fissi, e comunque è tutto testo quindi poca roba. 👁️‍🗨️️</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->