## abacoMinimal

------

- **[Requisiti e comandi](#Requisiti)**
- **[Screenshot](#Screenshot)**
------                         

## Requisiti
<p>
L'applicazione si propone come uno strumento didattico dalla grafica minimale per imparare intuitivamente a contare in <em>binario</em> | <em>esadecimale</em> | <em>decimale</em>.
La gestione dell'applet avviene attraverso 3 pulsanti: Add, Clear, Switch.

:heavy_plus_sign: <strong>Add</strong>: Permette di aggiungere un'unità all'abaco selezionato.
<br>:recycle: <strong>Clear</strong>: Permette di svuotare l'abaco selezionato.
<br>:wrench: <strong>Switch</strong>: Permette di cambiare l'abaco selezionato tra quelli presenti.

<br>
In basso è sempre presente un contatore che indica il numero in <em>base 10</em>.

</p>


## Note

<p>
L'applicazione non utilizza alcun algoritmo in particolare per calcolare il numero in base <em>n</em>, semplicemente conta il numero di anelli dentro un palo e rappresenta il numero attraverso posizione notazionale. È stata fatta questa scelta per mantenere coerenza tra il concept del programma e la sua implementazione. Il limite di numeri rappresentabili dipende dal numero di pali, considerato <strong>b</strong> = <em>base abaco</em> e <strong>n</strong> = <em>numero di pali</em>, abbiamo che il <strong>numero massimo rappresentabile</strong> è dato da <img src="https://latex.codecogs.com/gif.latex?b^n-1" title="b^n-1" />
</p>

                                                
## Screenshot

 <img
       src="https://raw.githubusercontent.com/v0lp3/abacoMinimal/master/screenshot.png"
       alt="abacoMinimal"
       width="516"
       height="644"  
      style="width:50%;"
 /> 
