---
ID: 17188
post_title: >
  in finestra piratanza protezionata in
  vista del gran gaming
post_name: >
  in-finestra-piratanza-protezionata-in-vista-del-gran-gaming
author: minioctt
post_date: 2025-02-21 15:54:19
layout: post
link: >
  https://octospacc.altervista.org/2025/02/21/in-finestra-piratanza-protezionata-in-vista-del-gran-gaming/
published: true
tags:
  - pirateria
  - sandbox
  - Sandboxie
  - Windows
categories:
  - Senza categoria
title: >
date: 2025-02-21 15:54:19
canonical_url:   https://octospacc.altervista.org/2025/02/21/in-finestra-piratanza-protezionata-in-vista-del-gran-gaming/
---
<!-- wp:paragraph -->
<p>Ora che sul PC fisso sono di nuovo definitivamente su <strong>Windows, piattaforma dove la #pirateria è molto più facile</strong> che su Linux (perché con Steam e compagnia problemi di dipendenze non ce ne sono, ma con i vari repack si salvi chi può), ho lievemente rivisitato il mio setup a riguardo, per <strong>navigare i sette mari abbattendo brutalmente la superficie di attacco...</strong> 🏴‍☠️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Generiche applicazioni <em>privatate</em> non ne uso, uso principalmente software libero, ma i giochi chiaramente sono giochi, quindi non sussiste il concetto di alternative per quelli. Forse anche per questo è già molto più facile <strong>piratare giochi senza beccarsi malware</strong>, rispetto a qualunque altro tipo di software per #Windows; e infatti sarà un decennio che pirato e non ho mai avuto problemi, però <strong>la sicurezza non è mai troppa</strong>, persino per chi come me sa dove scaricare e ha giustamente pure dei pirati di fiducia. 👻</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>L'idea sarebbe quella di installare ed <strong>eseguire i giochi in una <em>scatolina di sabbia</em></strong>, di modo che eventuale codice malevolo non possa né sovrascrivere file (ransomware), né rubare i miei dati (stealer), né piantare cacche che si integrano nel sistema e si nascondono per rimanere lì sempre attive e fare schifezze (cazzinculware, in certi casi cryptominer)... però Flatpak (anzi, Bubblewrap, la tecnologia di container usata da esso) e chroot su Windows non ci stanno. 🙀</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Tuttavia, si possono unire <strong>funzioni di sicurezza</strong> integrate nell'OS a programmi di terze parti per <strong>creare una anti-bomba...</strong> e quindi, la mia nuova combinazione è: utente Windows separato (ovviamente non-admin) + #Sandboxie (strumento open-source di isolamento selle risorse, che non è una macchina virtuale, quindi non ha nessuno dei contro di una VM):</p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul class="wp-block-list"><!-- wp:list-item -->
<li>L'<strong>utente secondario</strong> garantisce che i programmi non possano proprio accedere alla cartella del mio utente principale, dove faccio tutto il resto delle mie cose, o modificare cose riservate del sistema, quindi <strong>i miei file sono protetti</strong> (a meno che un malware non usi <code>runas</code> per elevarsi a me, ma ciò innanzitutto richiederebbe la password, e poi...) 🧨</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li><strong>Sandboxie</strong> blocca l'<strong>accesso alla rete</strong> quando questo non serve e, oltre a bloccare a sua volta la cartella del mio utente principale (<strong>doppia protezione!</strong>), blocca l'<strong>accesso in lettura</strong> a vari altri percorsi non di sistema (tra cui dischi secondari), e blocca l'<strong>accesso in scrittura</strong> per tutto fuori dalla scatolina. Inoltre, fa credere ai programmi di essere admin senza passargli effettivamente i permessi, quindi posso <strong>avviare gli installer in sicurezza</strong>. Infine, <strong>blocca un sacco di altre cose</strong> che non sto ad elencare, tra cui anche il servizio RPC per elevarsi ad altri utenti! 💥</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:paragraph -->
<p>Nonostante questo apparente casino, il modo in cui <strong>avvio i giochi sarebbe semplicissimo</strong>! Non faccio login nell'utente secondario, bensì <strong>uso sempre il mio primario,</strong> anche perché nel frattempo posso voler usare le mie normali applicazioni; per avviare qualcosa, quindi, <strong>prendo l'identità dell'utente secondario </strong>tramite <code>PsExec</code> (che è come <code>runas</code>, eccetto che mi fa specificare la password come argomento, quindi posso avere una comoda scorciatoia), e con quella avvio la #sandbox; più precisamente, dico a <strong>Sandboxie di avviare Explorer++ nella sabbioscatola</strong> dedicata ai giochi (Windows Explorer non funziona se eseguito a nome di un utente che non ha un desktop attivo), e quindi ho <strong>una finestra con cui posso lanciare i programmi</strong>. 🤩</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":17193,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="{{site.cdnurl}}/assets/uploads/2025/02/image-53-960x542.png" alt="Schermata del desktop con evidenziati i punti chiave." class="wp-image-17193"/><figcaption class="wp-element-caption"><code>PsExec64 -u USERNAME -p PASSWORD -i "C:\Program Files\Sandboxie-Plus\Start.exe" /box:SANDBOX Explorer++</code>... super ganzo. Notare come le finestre che girano sotto Sandboxie si differenziano in quanto hanno una parte <code>[#]</code> nel titolo, e che se girano sotto l'identità dell'altro utente hanno la barra del titolo di colore diverso, perché su quello è impostato il tema chiaro mentre sul mio normale c'è il tema scuro. Vabbè, se non sapevate questi <strong>trucchi di <em>Windoe</em></strong>, beh... ora sapevateli! 💡</figcaption></figure>
<!-- /wp:image -->