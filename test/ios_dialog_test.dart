import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:ios_dialog/ios_dialog.dart';

void main() {
  testWidgets('CupertinoBlurDialog has a title and content', (WidgetTester tester) async {
    // Build the MaterialApp with the CupertinoBlurDialog.
    await tester.pumpWidget(
      MaterialApp(
        home: Builder(
          builder: (BuildContext context) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              // Trigger the CupertinoBlurDialog.
              showCupertinoBlurDialog(
                context: context,
                title: const Text('Dialog Title'),
                content: const Text('This is the dialog content'),
              );
            });
            return Container(); // Return a dummy widget.
          },
        ),
      ),
    );

    // Let the dialog animate.
    await tester.pumpAndSettle();

    // Verify the title and content are displayed.
    expect(find.text('Dialog Title'), findsOneWidget);
    expect(find.text('This is the dialog content'), findsOneWidget);
  });
}
