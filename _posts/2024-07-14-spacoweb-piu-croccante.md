---
ID: 7640
post_title: spacoweb più croccante
post_name: spacoweb-piu-croccante
author: minioctt
post_date: 2024-07-14 00:24:28
layout: post
link: >
  https://octospacc.altervista.org/2024/07/14/spacoweb-piu-croccante/
published: true
tags:
  - applicazione
  - cookie
  - cookies
  - demo
  - framework
  - HTTP
  - JavaScript
  - programmazione
  - server
  - SpaccDotWeb
  - webapp
categories:
  - Senza categoria
title: spacoweb più croccante
date: 2024-07-14 00:24:28
canonical_url:   https://octospacc.altervista.org/2024/07/14/spacoweb-piu-croccante/
---
<!-- wp:video {"id":7639} -->
<figure class="wp-block-video"><video controls src="{{site.cdnurl}}/assets/uploads/2024/07/lv_0_20240713223917.mp4"></video><figcaption class="wp-element-caption">Possibile impiegare una mezza giornata sana a implementare delle funzioni in JavaScript molto particolari riguardo i cookie, e sistemarne alcune già esistenti, solo per sistemare due cose apparentemente stupide come: far aggiornare subito un contatore in una app di esempio, e far fungere il cambio di lingua in una app vera? ...Evidentemente si. 😊</figcaption></figure>
<!-- /wp:video -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>È un maleficio e una benedizione avere <a href="/microblog-mirror/2024/02/26/spac-web-semper-ovunquer/">il mio mini-framework</a> per le webapp multi-pagina (aka, vecchio stile e non cosiddette single-page)... chiaramente, è lavoro in più concesso al letterale etere, che mi risparmierei se altre librerie mi andassero bene. Dall'altro lato, però, se ho questo robo è perché non trovai proprio nient'altro che funzionasse alla base nel modo in cui mi serviva, e quindi ceppa. A distanza di mesi di non-lavoro però devo confermare che l'idea è stata geniale (il che è molto dire, in genere il mio codice marcisce peggio), e davvero la API che ho ideato è l'ibrido migliore possibile per app che automagicamente girano sia senza script lato client che senza un server di backend. 🤑</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Però, ecco, se c'è una rogna del comunicare tra client e server senza script lato client... sono i cookie ("biscuit" per i britannici). Si vede che sono del millennio precedente, con le loro stringhe marce da parsare in un certo modo. Vabbè, avevo già implementato funzioni di lettura e scrittura dei biscotti più o meno base ma, via via, sono uscite fuori difficoltà così scomode, che oggi ho dovuto implementare una tale serie di cosi di [de]serializzazione, che la mia stima per #HTTP esplode un pochino. Principalmente: come faccio a rinnovare un cookie arbitrario, ossia di cui potrei non prendere il riferimento di durata all'interno del codice (perché voglio una funzione di utilità che rinnova un qualunque cookie conoscendone solo il nome), se il client da specifica non ha modo di inviare al server le flag usate per piantare i cookie? 🤯</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Ho trovato giusto qualche utente online che piangeva di questa cosa, nemmeno tantissimi, e quindi giustamente neanche nessuno che proponeva soluzioni; probabilmente, molti si arrendono all'hardcodare le flag dei cookie da qualche parte e riutilizzarle ogni volta, oppure allo scrivere codice verboso, per rinnovare a mano ogni volta. ...Io non ci sto, quindi me la sono inventata io la soluzione: uso un "metacookie", aggiornato automaticamente dal server ogni volta che tramite la API è settato un qualunque cookie, che semplicemente contiene come suo valore le flag extra per ogni cookie, e che quindi il server può ripescare da lì per rinfrescare i cookie in maniera perfetta. Ci posso conservare dentro anche informazioni non-standard, ad esempio data ed ora di scrittura di un cookie per poterlo rinnovare solo se è più vecchio di un tot... senza esagerare, però, perché (da standard?) un singolo biscottino non può essere più grosso di 4KB, quindi se questo si ingrossa succede un patatrac. 🤗</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Concettualmente credo sia semplice, ma a livello pratico mi ci sono comunque volute una caterva di funzioni, perché, tracciando la logica... Quando il server vuole settare un cookie: lo manda al client senza problemi, ma intanto deve serializzarlo ottenendone le varie parti (o, viceversa se è già un oggetto e non una stringa), quindi (se necessario) serializzare anche i dati dal metacookie per aggiornare i campi lì e poi deserializzarlo per inviare anche quello di nuovo al client, nel frattempo conservando i nuovi dati sul cookie per eventuali operazioni successive nella stessa richiesta (prima non avveniva, quindi i dati non si aggiornavano senza una nuova richiesta). Quando il server riceve biscotti: ovviamente deve serializzare quelli, altrimenti non sarebbe possibile prendere e poi aggiornare tutti i datelli, e praticamente ripeti cosa è già fatto ma con meno giri. E... nonostante questo, ancora non ho la perfezione in mano, ma mi manca pochissimo. E... anche oggi, l'aggiornamento di WuppìMini esce domani. 🤭</p>
<!-- /wp:paragraph -->