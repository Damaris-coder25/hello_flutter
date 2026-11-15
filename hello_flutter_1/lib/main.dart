// Pachetul Material: widget-uri de bază și culori predefinite (Colors).
import 'package:material_ui/material_ui.dart';

/// Punctul de intrare al aplicației, ca metoda `main` din Java.
void main() {
  // runApp afișează pe tot ecranul widget-ul primit, rădăcina arborelui de widget-uri.
  runApp(
    // Fundalul galben al ecranului.
    ColoredBox(
      color: Colors.yellow,
      // Center așază child-ul în mijlocul ecranului.
      child: Center(
        // Container: un fel de <div> din HTML, cu decorație, padding și un child.
        child: Container(
          decoration: BoxDecoration(
            // Roșu cu opacitate 20%, prin care se vede fundalul galben.
            color: Colors.redAccent.withValues(alpha: 0.2),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.red.withValues(alpha: 0.3), width: 1.5),
            // Umbra, mutată 4 pixeli în jos, face caseta să pară ridicată deasupra fundalului.
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.1),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          padding: const EdgeInsets.all(20),
          child: const Text(
            'World Hello',
            // Fără MaterialApp, trebuie să spunem noi direcția textului: de la stânga la dreapta.
            textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.black, letterSpacing: 20, fontSize: 60),
          ),
        ),
      ),
    ),
  );
}
