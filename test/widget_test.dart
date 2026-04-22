import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:prakash_agro_app/main.dart';

void main() {

  testWidgets("App loads Splash Screen", (WidgetTester tester) async {

    await tester.pumpWidget(PrakashAgroApp());

    expect(find.text("Prakash Agro Services"), findsOneWidget);

  });

  testWidgets("Login Screen appears after splash", (WidgetTester tester) async {

    await tester.pumpWidget(PrakashAgroApp());

    await tester.pump(Duration(seconds: 3));

    expect(find.text("Login"), findsOneWidget);

  });

  testWidgets("Login button navigates to Home", (WidgetTester tester) async {

    await tester.pumpWidget(PrakashAgroApp());

    await tester.pump(Duration(seconds: 3));

    await tester.tap(find.text("Login"));

    await tester.pump();

    expect(find.text("Welcome to Prakash Agro Services"), findsOneWidget);

  });

  testWidgets("Bottom Navigation appears", (WidgetTester tester) async {

    await tester.pumpWidget(PrakashAgroApp());

    await tester.pump(Duration(seconds: 3));

    await tester.tap(find.text("Login"));

    await tester.pump();

    expect(find.byIcon(Icons.home), findsOneWidget);
    expect(find.byIcon(Icons.agriculture), findsOneWidget);
    expect(find.byIcon(Icons.phone), findsOneWidget);
    expect(find.byIcon(Icons.person), findsOneWidget);

  });

}