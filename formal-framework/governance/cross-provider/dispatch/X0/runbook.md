# X0 — runbook del operador (escrito para que tu único trabajo sea copiar y pegar)

```text
modo por defecto = CHAT RELAY (asumido: el agente externo es una sesión
  de chat sin acceso a ficheros). Si algún día tiene filesystem, mejor,
  pero NADA depende de eso.
escriba = EL LEAD (yo). Tú nunca actualizas ledgers ni creas archivos:
  me pegas la respuesta del agente en nuestro chat y yo la aterrizo
  VERBATIM en verdicts/, actualizo el ledger y triago. Tu papel =
  mensajero fiel; el mío = toda la contabilidad.
```

## Tu procedimiento completo (por item)

1. Yo te doy UN bloque de texto ("PROMPT X-n") cuando toque.
2. Lo pegas en una sesión NUEVA del agente externo (sesión nueva por
   item — importante en los items ciegos; el prompt ya lo dice todo,
   no añadas nada tuyo).
3. Cuando el agente termine, copias su respuesta COMPLETA y me la pegas
   en nuestro chat. Fin de tu trabajo.

Si el agente pide algo a mitad (un archivo, una aclaración): me lo
pegas, yo te doy el siguiente bloque. Nunca improvises contenido.

## Checklist de capacidades (lo compruebo yo con el PROMPT X-0)

El primer prompt que te daré hace que el propio agente declare: su
identidad de modelo, si puede leer documentos largos, y si tiene acceso
web/literatura (necesario para X4; si no lo tiene, X4 se re-tipa y
sigo con el resto — nada se bloquea).

## Estimación de tus minutos

Por item: ~5 minutos (abrir sesión, pegar, esperar, copiar de vuelta).
Items totales: 10 (X0-X9). Algunos largos (X3, X4) pueden necesitar
2-3 intercambios. Total estimado de TU tiempo en toda la cola:
1-2 horas repartidas como quieras. Todo lo demás es mío.

## El día que tengas el agente

Di "acceso listo" en nuestro chat. Yo re-verifico los inputs
preparados contra origin (regla de frescura) y te doy el PROMPT X-0.
No hay nada más que recordar: este runbook y el ledger llevan la
cuenta.
