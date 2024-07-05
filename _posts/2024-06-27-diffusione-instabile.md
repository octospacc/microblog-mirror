---
ID: 6932
post_title: diffusione instabile
post_name: diffusione-instabile
author: minioctt
post_date: 2024-06-27 22:36:30
layout: post
link: >
  https://octospacc.altervista.org/2024/06/27/diffusione-instabile/
published: true
tags:
  - Automatic1111
  - epiCRealism
  - foto
  - GAN
  - IA
  - inpaint
  - inpainting
  - modificare
  - StabilityAI
  - StabilityMatrix
  - StableDiffusion
categories:
  - Senza categoria
title: diffusione instabile
date: 2024-06-27 22:36:30
canonical_url:   https://octospacc.altervista.org/2024/06/27/diffusione-instabile/
---
<!-- wp:paragraph -->
<p>Tra ieri e oggi ho un po' (ri)provato Stable Diffusion (1.5)... questo software è fin troppo profondo rispetto a roba come DALL-E, non si scherza, non è affatto accessibile, ma proprio per questo mi sa che, se si ha abbastanza pazienza, probabilmente lo si può usare per cose che vanno oltre il semplice generare disegnini a caso di situazioni assurde per ridere. Può essere un vero e proprio editor fotografico... se e solo se i tuoi input gli stanno simpatici. Non l'ho potuto più usare per un bel periodo prima di ora (un annetto?) perché su Google Colab, non importa quante volte io ci provassi, non girava più senza crediti. Io soldi da dare a Google non li ho (se li avessi costruirei direttamente il mio datacenter, fanculo), quindi, un po' perché configurare tutto in locale era sempre una rogna, un po' perché ho sempre immaginato sarebbe andato malissimo, non ho mai provato. 👽️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>...Però, ho trovato una bella app cross-platform, <a href="https://github.com/LykosAI/StabilityMatrix">Stability Matrix</a>, che ha una UI parecchio laggante, ma ha una UX eccellente: permette con pochi click di installare tutti i frontend, i modelli, ogni cosa che serve avere per usare Stable Diffusion. Dopo aver liberato quasi 15 GB di spazio sul PC fisso per solo il software di base con la WebUI di #Automatic1111, e aver sclerato perché a quanto pare installare il software in una dotfolder rompe tutto (bruh), in realtà mi sono stupita di quanto funzioni bene... si prende i suoi non pochi GB di RAM, e non ho capito se mi usa la GPU integrata oppure va solo con la CPU, ma è solo il doppio più lento di Colab Free, mentre io pensavo che il PC sarebbe esploso! 💖️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Solo Dio sa quanto verrà a costare ai miei la bolletta della luce per questo mese, ma comunque, quello con cui volevo giocare era l'inpainting, cioè la trasformazione di immagini in altre immagini grazie alla #IA che ci disegna sopra. La funzione si può usare per letteralmente qualsiasi cosa, ma ho iniziato subito provando qualcosa di mezzo difficile... perché francamente non me ne faccio molto di, esempio banale, aggiungere dei fiori sullo sfondo di una foto, quello lo faccio tranquillamente anche con una mano su GIMP dal telefono con la luminosità al minimo e mentre nel frattempo gioco anche a MKDS. Quindi, ho provato la trasformazione dei vestiti, leggendo questa guida: <a href="https://openaijourney.com/change-clothes-in-stable-diffusion/">openaijourney.com/change-clothes-in-stable-diffusion</a>. 🥻️</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":6933,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="{{site.cdnurl}}/assets/uploads/2024/06/image-9-960x528.png" alt="" class="wp-image-6933"/><figcaption class="wp-element-caption">La prima schermata è un risultato quasi decente avuto ieri sera, mettendo come input un'immagine generata da zero con il prompt generico lì, e non una esistente, usando il modello general-purpose DreamShaper. Ho quindi marchiato un'area di #inpaint, ho messo "hatsune miku" al posto di "goth", e l'ho messo a cucinare per circa 3 minuti... ed ecco qui. Peccato che, con virtualmente qualsiasi altro input, i risultati erano enormi miss per una richiesta simile. 🤥️</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":6937,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="{{site.cdnurl}}/assets/uploads/2024/06/lolimoment-1-960x542.png" alt="" class="wp-image-6937"/><figcaption class="wp-element-caption">Dopo un casino allucinante, solo stasera sono riuscita a modificare una mia foto, ma usando il modello #epiCRealism. A sinistra c'è l'originale con marchiata la zona di #inpainting, e a destra il risultato per il prompt che ho dato. Ho installato ControlNet con OpenPose, ma per qualche motivo non mi esce il modello e quindi non posso selezionarlo, però in questo caso non è servito, la mia posa è stata rispettata... sarebbe probabilmente utile se volessi ancora provare l'altro modello, perché oh, in questo qui non c'è proprio verso di avere i vestiti di Hatsune Miku... 💎️</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>In generale, le informazioni che quella guida da riguardo i parametri, incluso il prompt negativo che copio testualmente, sembrano essere buone, però bisogna giocare con la zona di inpainting. È facilissimo che vada a sbavare, e finché lo fa sullo sfondo (come per la mia #foto), allora ok non freca (anche se io con GIMP non farei un simile errore modificando robe a mano); ma se lo fa sui bordi dei soggetti (come per l'immagine generata), allora si vede subito il guaio. Soprattutto avendo parti del corpo sovrapposte, come le mie braccia lì (non riuscivo a mettermi in alcun'altra posa decente), bisogna avere la pazienza di rigenerare più volte, con un prompt ben descrittivo. E, come accennavo, è schizzinoso: non c'è verso di #modificare bene qualcosa includendo anche l'area dei miei capelli, o usando una foto allo specchio col telefono che copre mezza faccia. (Il peperone che urla "<em>questa foto è stata alterata usando software libero</em>", infatti, l'ho aggiunto solo qui, la mia foto in input l'ho data con la faccia coperta solo da quel poco delle manine giunte.) 😃️</p>
<!-- /wp:paragraph -->