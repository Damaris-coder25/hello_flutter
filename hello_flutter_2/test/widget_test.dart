// Un test de widget: pornește aplicația într-un mediu de test și verifică ce apare pe ecran.
// Se rulează cu `flutter test`.

import 'package:flutter_test/flutter_test.dart';
import 'package:hello_flutter_2/jokes.dart';
import 'package:hello_flutter_2/main.dart' as app;

/// Rulează testele aplicației.
void main() {
  testWidgets('Afișează una dintre glumele din listă', (WidgetTester tester) async {
    // Pornește aplicația și desenează primul cadru.
    app.main();
    await tester.pump();

    // Gluma este aleasă la întâmplare, așa că verificăm că apare textul uneia dintre ele.
    final shown = builtInJokes.where(
      (joke) => find.textContaining(joke.text).evaluate().isNotEmpty,
    );
    expect(shown, hasLength(1));
  });
}
