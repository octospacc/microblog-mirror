---
ID: 7098
post_title: mbviewer a casissimo
post_name: mbviewer-a-casissimo
author: minioctt
post_date: 2024-07-02 17:20:08
layout: post
link: >
  https://octospacc.altervista.org/2024/07/02/mbviewer-a-casissimo/
published: true
tags:
  - MBViewer
  - MicroBlog
  - RSS
  - UX
categories:
  - Senza categoria
title: mbviewer a casissimo
date: 2024-07-02 17:20:08
canonical_url:   https://octospacc.altervista.org/2024/07/02/mbviewer-a-casissimo/
---
<!-- wp:paragraph -->
<p>Mezzo secolo fa avevo fatto <a href="2024/01/12/devo-aggregare-i-microblog/">una modifica al frontend del mio FreshRSS per renderlo più piacevole per i microblog</a>... e poi però ho smesso di usarlo per quello, perché era comunque abbastanza scomodo, molto clunky e legnoso, la UI tutta rotta. Altri client per FreshRSS che ci sono, e ce ne sono tanti, purtroppo non li ho mai visti affatto ottimizzati per post senza titolo, corti, che sono tanti di fila, ecc... quindi, comunque la mia soluzione aveva un motivo di fondo per esistere, ma il problema è che, appunto, non è buona, ahimé. 🥴️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:video {"id":7123} -->
<figure class="wp-block-video"><video controls loop muted src="{{site.cdnurl}}/assets/uploads/2024/07/simplescreenrecorder-2024-07-02_16.29.02.mp4"></video><figcaption class="wp-element-caption">Quindi, tipo l'altro giorno mi è tornato in mente il fatto, e ho pensato che a questo punto mi serve il mio client... ho già una app che può mostrare messaggi con lo stile giusto, #MBViewer, quindi ho aggiornato già quella per, se non integrare con la API di FreshRSS, almeno aggiungere una lista di sorgenti permanente, a cui se ne possono aggiungere di nuove aprendole e poi premendo il tastino. Per il resto funziona come prima, quindi non ha neanche alcun tipo di sincronizzazione dei messaggi, e quindi nemmeno contatori di messaggi non letti (piangere a riguardo di ciò). <a href="https://hub.octt.eu.org/MBViewer/">hub.octt.eu.org/MBViewer</a>. 🤗️</figcaption></figure>
<!-- /wp:video -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>C'è però un piccolissimo problema che avevo dimenticato, non avendo toccato il codice di quel coso per mesi: è talmente spaghetti che non credo di poter fare un buon lavoro, se ora lo usassi come base per aggiungere anche quest'ennesimo caso d'uso. Purtroppo l'ho totalmente riciclato dalla webapp di anteprima di t.me, espandendolo costruendoci da sopra e non dentro, quindi era inevitabile che finisse così, ma, non so perché, ci spero ogni volta... e invece puntualmente deve dimostrarsi solo poco più di un proof-of-concept. Vabbè, ci si goda il pochissimo nuovo che ora fa in più di prima. 😪️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Mi sa che piuttosto, non volendo fare una nuova cosa da zero (perché mi sembra molto superfluo), conviene un'altra cosa che avevo in programma ma poi non ho mai fatto, cioè aggiungere funzioni di visualizzazione, oltre che di scrittura, ad un altro programma che non tocco da mesi, <a href="2024/02/09/test-wuppimini/">WuppìMini</a>, che invece non è spagoot. Sicuramente, parte della logica di gestione dei dati la posso riciclare da MBViewer comunque, quindi non sono totalmente rovinata... 😾️ (E, essendo quella una app ibrida solo-server e solo-client, sarebbe anche più versatile, è anche per questo che l'avevo fatta così.)</p>
<!-- /wp:paragraph -->