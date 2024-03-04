---
ID: 2630
post_title: haiku dolore e dolore, poca gioia
post_name: haiku-dolore-e-dolore-poca-gioia
author: minioctt
post_date: 2024-02-29 23:08:24
layout: post
link: >
  https://octospacc.altervista.org/2024/02/29/haiku-dolore-e-dolore-poca-gioia/
published: true
tags:
  - BeOS
  - bug
  - Haiku
  - HaikuOS
  - inutilizzabile
  - mancanze
  - Mannaggia
  - OS
  - portatili
  - potenziale
  - problema
  - problemin
  - problemon
  - rotta
  - rotto
  - sistema
  - sistemaoperativo
  - sorprese
  - supporto
categories:
  - Senza categoria
title: haiku dolore e dolore, poca gioia
date: 2024-02-29 23:08:24
canonical_url:   https://octospacc.altervista.org/2024/02/29/haiku-dolore-e-dolore-poca-gioia/
---
<!-- wp:paragraph -->
<p>[sc name=quote-embed-post]2024/02/27/haiku-os-belin[/sc]</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Uffa, #HaikuOS ancora non funziona bene... so che è già tanto che funzioni in generale, e penso che il #potenziale sia altissimo, però che palle tutti quei #bug anche parecchio gravi e le mancanze assurde, lo rendono #inutilizzabile, magari fosse davvero daily-drivable! 🥶️</p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Ho scoperto che in realtà l'immagine live è anche persistente; in effetti tutto ciò che l'installer fa è copiare su una nuova partizione i file del sistema correntemente in esecuzione... molto figo, vuol dire che in realtà si può usare già solo flashandolo su chiavetta, e installarlo al momento opportuno dopo un po' di uso così. 🖋️</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li>Purtroppo però, la partizione di sistema della ISO è piccolina, e non esiste un modo per ridimensionarla essendo in BeFS (il partizionatore di Haiku non lo fa, e Linux l'unica cosa che riesce a fare è leggere i file, nemmeno scrivere), quindi nella pratica va fatta l'installazione per installare app e fare aggiornamenti (volendo, anche sullo spazio libero dello stesso drive di installazione, lol, a patto di cancellare la partizione di avvio piccola dopo o altrimenti il boot continuerà ad avvenire in quella). 🙄️</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li>In realtà, volevo installarlo per bene sulla chiavetta, ma mi seccavo di farne una seconda intermedia o di masterizzare un DVD-RW, quindi inizialmente ho provato da VirtualBox... però lì dentro l'accesso alla penna USB non sembra fargli piacere, e dopo un po' che scrive o il processo va in qualche errore oppure si pianta indefinitamente. <a href="https://discuss.haiku-os.org/t/solved-need-help-putting-finishing-touches-on-a-bare-metal-install/8401/4">Sembra essere un problema comune</a>, pazienza, ho fatto con il mio metodino originale allora. 😎️</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Ho notato belle #sorprese in termini di applicazioni, ce ne sono anche di insospettabili per un #OS sperimentale... anche emulatori di console (c'è anche PPSSPP...) e vari giochini, sia liberi che semi-open (c'è VVVVVV bello lì), addirittura BoxedWine, e pare anche OpenVPN. E l'app store (Haiku Depot) funziona davvero bene, mentre su Linux non ho mai trovato alcun gestore di pacchetti GUI davvero ben fatto. Molte crashano in strani momenti per motivi a me ignoti, sarà il kernel #rotto che si cringia a gestire la roba, o boh, essendo tutto in beta, ma bene o male funzionano correttamente. 💣️</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li>Purtroppo il #supporto hardware no, non è 'sto granché... confermo quello che ho già detto l'altro giorno per l'Acer, ma ho voluto anche provare sull'altro portatile (quello vecchio di mio padre che mi ha passato), HP Pavillion 15-cw1000nl, e lì parte e funziona, ma: niente WiFi (la scheda Ethernet invece è riconosciuta ma non l'ho provata) e niente audio, oltre ai problemi generali già detti. Ah, e non avevo detto che sull'Acer funziona il Secure Boot (perché non lo avevo notato), ma qui sull'HP invece non va. 🧱️</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:list -->
<ul><!-- wp:list-item -->
<li>Lato UX ribadisco che è il #sistemaoperativo è curato ottimamente, non ci sono le inconsistenze che si trovano in piattaforme potenti come Windows o Linux, ma allo stesso tempo non è un giocattolino (...se non fosse rotto). Nonostante sia un bel po' diversa da quei 2 sistemi (anche le scorciatoie son tutte sminchiate, aiut), non è un #problema insormontabile perché <a href="https://www.haiku-os.org/documents/">la documentazione</a> c'è e mi sembra fatta veramente bene, concisa e ordinata ma non lacunosa, e con la giusta quantità di schermate, icone, testo colorato, e tutto. E in effetti questi sembrano essere alcuni principi fondanti dello sviluppo. 🎁️</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li>Ci sono però certe #mancanze che vanno dal "oh, mi sembra grave questa cosa ma realisticamente non mi serve", al "cazzo, questo è un #problemin". Innanzitutto, #Haiku non è un sistema multi-utente, nel senso che non esiste proprio il concetto di utenti multipli, cosa ok per workstation personali ma terribile per computer condivisi (e #BeOS doveva essere un multimedia OS, ed il concetto di multimedia PC mi sa che prevede anche la condivisione, quindi #problemon). Poi, non sembra esserci nemmeno modo di bloccare gli accessi: non c'è una password di avvio, e non c'è un blocco schermo a comando, c'è solo un'inutilissima password per dopo l'attivazione dello screensaver (che tra l'altro non può essere manuale, parte solo con il tempo di inattività). Ah, e non c'è nemmeno la sospensione, divertitevi a usarlo sui #portatili in giro sapendo di dover arrestare e riavviare il #sistema di continuo per posarlo e riprenderlo. 🐌️</li>
<!-- /wp:list-item --></ul>
<!-- /wp:list -->

<!-- wp:paragraph -->
<p>Però ora a parte tutto ciò c'è stato il colpo di grazia: dopo averlo avviato sull'HP, ed aver correttamente arrestato il sistema, andando a mettere la pennetta di nuovo nel vecchio portatile si avvia si il bootloader di Haiku, che dice però che la partizione di sistema non è avviabile, o è #rotta, o qualcosa del genere (anche se fino a prima ha funzionato), sia da UEFI che da BIOS legacy. Quindi probabilmente posso solo riflashare e sperare di essere più fortunata la prossima volta (forse conviene la nightly?). #Mannaggia, ma come può un OS rompersi così? Mi sembra di star riprovando ReactOS, non mi piace. 😩️</p>
<!-- /wp:paragraph -->