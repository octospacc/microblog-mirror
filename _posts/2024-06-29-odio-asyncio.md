---
ID: 7030
post_title: od(io) async(io)
post_name: odio-asyncio
author: minioctt
post_date: 2024-06-29 22:19:10
layout: post
link: >
  https://octospacc.altervista.org/2024/06/29/odio-asyncio/
published: true
tags:
  - async
  - asyncio
  - codice
  - piangere
  - problemi
  - programmazione
  - Python
  - rant
  - WinDog
categories:
  - Senza categoria
title: od(io) async(io)
date: 2024-06-29 22:19:10
canonical_url:   https://octospacc.altervista.org/2024/06/29/odio-asyncio/
---
<!-- wp:paragraph -->
<p>Oggi #rant allucinante, è la prima volta che Python mi fa venire così tanta voglia di #piangere... mi farebbe proprio molto piacere conoscere chi sono i PAZZI pazzoidi che hanno completamente ROVINATO il linguaggio introducendo <code>asyncio</code>. Maremma trogolaia, è un merdaio allucinante secondo me, un'implementazione apparentemente furba di async/await, che però è estremamente malata: nel momento in cui si hanno davanti problemi reali, la presenza di anche un solo po' di codice <code>asyncio</code> va a contaminare tutto il resto che ne dipende, ed è un incubo... Sento già il "<em>beh, se fa schifo questa funzione di Piton allora non usarla...</em>"; peccato che tutte le librerie di terze parti che adottano questa maledizione per il loro funzionamento, puntualmente, vanno a deprecare il vecchio codice normale. Quindi si può solo piangere, concedetemelo. Fortunatamente, <a href="https://www.ecosia.org/search?q=python%20asyncio%20bad&amp;addon=opensearch">sembra che io non sia l'unica ad odiarlo</a>... 😭️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Apparentemente, <code>asyncio</code> sembra appunto simile all'asincronicità che si ha su JavaScript da ES6, ma è molto, molto peggio. Il problema più grosso è che costringe alla propagazione, cioè: funzioni <code>async</code> possono essere chiamate solo usando <code>await</code>, ma la parola <code>await</code> può essere specificata solo dentro funzioni <code>async</code>... quindi, tutto un dato stack di chiamata deve essere fatto tenendo conto di <code>asyncio</code>, e questo significa dover ristrutturare per intero vecchi programmi (mentre, su JavaScript, funzioni asincrone possono essere richiamate anche senza attenderle, semplicemente omettendo <code>await</code>). Io il restructuring non la farò, perché non andrò a perdere ore solo per il risultato di rendere il mio codice ancora più complicato da mantenere, quindi... Per fortuna, esiste il metodo <code>.create_task()</code> per avviare qualcosa di asincrono da un contesto asincrono e lavarsene le mani... però, aspetta, esiste anche <code>.ensure_future()</code>, e... non se ne esce... 🥴️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Ecco un altro problema di <code>asyncio</code> che, coincidentalmente, fa anche rendere conto di quanto brutta di una hack sia la sua implementazione... è letteralmente costruita alla bene e meglio al di sopra di parti già esistenti di Python e che non avrebbero mai dovuto accomodare niente di simile. E, nel corso dei vari major update, questo modulo ha accumulato così tanta roba, teoricamente tutta diversa ma nella pratica indistinguibile per le differenze troppo sottili, che a questo punto non mi stupisco di come mai ho perso ore e ore appresso al mio problema oggi. Non ho letto il codice che ci sta dietro eh, mi risparmierò questa tortura, ma ho come il presentimento che sarà proprio la sagra del lasagna code... persino <a href="https://docs.python.org/3/library/asyncio.html">la documentazione ufficiale</a> fa parecchio paura, e ciò fa pensare, perché in genere quella di Python mi pare tutto sommato buona — ho visto di meglio eh, però certamente non è malvagia. ⛏️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Addirittura <code>asyncio</code> avrebbe tecnicamente una specie di stato globale (bad!!!), al di sopra di cui è costruito un event loop. È per questo motivo che ha una serie spaventosa di metodi globali per gestirne il funzionamento (che non posso realisticamente elencare nella totalità), ed è questo che poi fa scaturire i problemi pratici nel mischiare codice asincrono con tradizionale. Soprattutto quando, come nel mio caso, il codice tradizionale gira molto attorno all'uso di thread secondari (perché deve lavorare in un modo che è sempre non bloccante, che non ha mai da awaitare niente). Vi giuro, ci ho provato in tutti i modi più strani letti da una decina di discussioni online diverse, ma no, non c'è verso di richiamare metodi gestiti da <code>asyncio</code> da un thread diverso da quello in cui questi risiedono (o partono errori, oppure addirittura comportamento indefinito). Su #Python non si può abusare il sistema degli eventi come su JavaScript per mettere una pezza a ciò, quindi la situazione è nera. 🕋️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Mi disp, dovevo sfogarmi, visto che tutto questo è stato semplicemente per... mettere le fondamenta per il bridging dei messaggi tra piattaforme diverse in #WinDog... nello specifico, verso Matrix (<a href="https://matrix.to/#/@windog:matrix.org">@windog:matrix.org</a>), perché è con la libreria <a href="https://github.com/matrix-nio/matrix-nio">matrix-nio</a> che sto sclerando. <a href="https://github.com/matrix-nio/matrix-nio/issues/404">Maledetti loro che hanno fatto a pezzi il vecchio <code>HttpClient</code></a>, continuando a mantenere solo l'<code>AsyncClient</code>. Ancora non ho caricato il nuovo commit, ma comunque, questo è il codice che alla fine ho scritto per risolvere il problema... bruttissimo, non volevo davvero ricorrere a ciò, ma non voglio nemmeno ristrutturare l'intero bot, né tantomeno buttare questa libreria e reimplementare a manina in HTTP le tantissime API che mi servono. Quindi, la mia soluzione è stata usare una coda in cui inserire i dati che vengono da thread separati, e questa poi verrà gestita dall'unico thread dove gira il #codice di Matrix... tutto con un uso molto specifico dei vari metodi di <code>asyncio</code>. È dolore. 👇️</p>
<!-- /wp:paragraph -->

<!-- wp:code -->
<pre class="wp-block-code"><code>def handler(...):
  async def queue_handler():
    asyncio.ensure_future(queue_handler())
    if not len(queue):
      # evitare che la CPU vada al 100% ☠️
      time.sleep(0.01)
    while len(queue):
      sender(*queue.pop(0))
  async def client():
    # &#91;...]
    asyncio.ensure_future(queue_handler())
    # &#91;...]

def sender(...):
  try:
    asyncio.get_event_loop()
  except RuntimeError:
    queue.append(...)
    return None
  asyncio.create_task(...room_send(...))</code></pre>
<!-- /wp:code -->