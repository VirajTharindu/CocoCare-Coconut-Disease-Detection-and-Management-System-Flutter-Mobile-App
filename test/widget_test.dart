import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Dummy Widget Test proves test framework is working', (WidgetTester tester) async {
    // Build a simple material app widget just to test the widget test framework
    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('CocoCare App Testing'),
        ),
      ),
    ));

    // Find the text in the widget tree
    expect(find.text('CocoCare App Testing'), findsOneWidget);
    
    // Ensure we don't accidentally find some other text
    expect(find.text('Missing Text'), findsNothing);
  });
}
