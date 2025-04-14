import 'dart:io';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:integration_test/integration_test.dart';
import 'package:study_app/flutter_flow/flutter_flow_drop_down.dart';
import 'package:study_app/flutter_flow/flutter_flow_icon_button.dart';
import 'package:study_app/flutter_flow/flutter_flow_radio_button.dart';
import 'package:study_app/flutter_flow/flutter_flow_widgets.dart';
import 'package:study_app/flutter_flow/flutter_flow_theme.dart';
import 'package:study_app/index.dart';
import 'package:study_app/main.dart';
import 'package:study_app/flutter_flow/flutter_flow_util.dart';

import 'package:provider/provider.dart';
import 'package:study_app/backend/firebase/firebase_config.dart';
import 'package:study_app/auth/firebase_auth/auth_util.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    await initFirebase();

    await FlutterFlowTheme.initialize();
  });

  setUp(() async {
    await authManager.signOut();
    FFAppState.reset();
    final appState = FFAppState();
    await appState.initializePersistedState();
  });

  group('Test', () {
    testWidgets('badEmailSignUp', (WidgetTester tester) async {
      _overrideOnError();

      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: RegistWidget(),
        ),
      ));
      await GoogleFonts.pendingFonts();

      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const ValueKey('Tab_bm1x')));
      await tester.enterText(
          find.byKey(const ValueKey('emailAddress_Create_1bpj')), 'vinh2594@@');
      await tester.enterText(
          find.byKey(const ValueKey('password_Create_kd1q')), 'vinh25042005');
      await tester.enterText(
          find.byKey(const ValueKey('passwordConfirm_4brj')), 'vinh25042005');
      await tester.tap(find.byKey(const ValueKey('Button_s25p')));
      await tester.pumpAndSettle();
      expect(find.byKey(const ValueKey('Button_s25p')), findsWidgets);
    });
  });

  testWidgets('trueTeacherLoginTest', (WidgetTester tester) async {
    _overrideOnError();

    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: MyApp(
        entryPage: RegistWidget(),
      ),
    ));
    await GoogleFonts.pendingFonts();

    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const ValueKey('emailAddress_9bos')),
        'vinh2504123@gmail.com');
    await tester.enterText(
        find.byKey(const ValueKey('password_2gj6')), 'vinh25042005');
    await tester.tap(find.byKey(const ValueKey('Button_c3fi')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('Column_e10e')), findsWidgets);
  });

  testWidgets('falsePasswordTeacherLoginTest', (WidgetTester tester) async {
    _overrideOnError();

    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: MyApp(
        entryPage: RegistWidget(),
      ),
    ));
    await GoogleFonts.pendingFonts();

    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const ValueKey('emailAddress_9bos')),
        'vinh2504123@gmail.com');
    await tester.enterText(
        find.byKey(const ValueKey('password_2gj6')), 'matkhausai');
    await tester.tap(find.byKey(const ValueKey('Button_c3fi')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('Button_c3fi')), findsWidgets);
  });

  testWidgets('falseEmailLogin', (WidgetTester tester) async {
    _overrideOnError();

    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: MyApp(
        entryPage: RegistWidget(),
      ),
    ));
    await GoogleFonts.pendingFonts();

    await tester.pumpAndSettle();
    await tester.enterText(
        find.byKey(const ValueKey('emailAddress_9bos')), 'emailsai@gmail.com');
    await tester.enterText(
        find.byKey(const ValueKey('password_2gj6')), 'vinh25042005');
    await tester.tap(find.byKey(const ValueKey('Button_c3fi')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('Button_c3fi')), findsWidgets);
  });

  testWidgets('passwordNotMatchSignUpTest', (WidgetTester tester) async {
    _overrideOnError();

    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: MyApp(
        entryPage: RegistWidget(),
      ),
    ));
    await GoogleFonts.pendingFonts();

    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('Tab_bm1x')));
    await tester.pumpAndSettle();
    await tester.enterText(
        find.byKey(const ValueKey('emailAddress_Create_1bpj')),
        'vinh25041234@gmail.com');
    await tester.enterText(
        find.byKey(const ValueKey('password_Create_kd1q')), 'vinh25042005');
    await tester.enterText(
        find.byKey(const ValueKey('passwordConfirm_4brj')), 'passkhongtrung');
    await tester.tap(find.byKey(const ValueKey('Button_s25p')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('Button_s25p')), findsWidgets);
  });

  testWidgets('goToSelectClass', (WidgetTester tester) async {
    _overrideOnError();
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: 'vinh2504123@gmail.com', password: 'vinh25042005');
    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: MyApp(
        entryPage: ClassesTeacherWidget(),
      ),
    ));
    await GoogleFonts.pendingFonts();

    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('Container_kiks')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('Tab_rfgl')), findsWidgets);
  });

  testWidgets('trueTeacherSignUp', (WidgetTester tester) async {
    _overrideOnError();

    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: MyApp(
        entryPage: RegistWidget(),
      ),
    ));
    await GoogleFonts.pendingFonts();

    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('Tab_bm1x')));
    await tester.pumpAndSettle();
    await tester.enterText(
        find.byKey(const ValueKey('emailAddress_Create_1bpj')),
        'vinh2504123@gmail.com');
    await tester.enterText(
        find.byKey(const ValueKey('password_Create_kd1q')), 'vinh25042005');
    await tester.enterText(
        find.byKey(const ValueKey('passwordConfirm_4brj')), 'vinh25042005');
    await tester.tap(find.text('Teacher'));
    await tester.tap(find.byKey(const ValueKey('Button_s25p')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('Button_fi7w')), findsWidgets);
  });

  testWidgets('trueStudentLogin', (WidgetTester tester) async {
    _overrideOnError();

    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: MyApp(
        entryPage: RegistWidget(),
      ),
    ));
    await GoogleFonts.pendingFonts();

    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const ValueKey('emailAddress_9bos')),
        'vinh25041234@gmail.com');
    await tester.enterText(
        find.byKey(const ValueKey('password_2gj6')), 'vinh25042005');
    await tester.tap(find.byKey(const ValueKey('Button_c3fi')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('StudentSideBar_d0vh')), findsWidgets);
  });

  testWidgets('infoTaskToTask', (WidgetTester tester) async {
    _overrideOnError();
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: 'vinh25041234@gmail.com', password: 'vinh25042005');
    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: MyApp(
        entryPage: ClassesStudentWidget(),
      ),
    ));
    await GoogleFonts.pendingFonts();

    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('Container_6j98')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('Card_d30l')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('Button_6qm5')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('Column_5h2s')), findsWidgets);
  });
}

// There are certain types of errors that can happen during tests but
// should not break the test.
void _overrideOnError() {
  final originalOnError = FlutterError.onError!;
  FlutterError.onError = (errorDetails) {
    if (_shouldIgnoreError(errorDetails.toString())) {
      return;
    }
    originalOnError(errorDetails);
  };
}

bool _shouldIgnoreError(String error) {
  // It can fail to decode some SVGs - this should not break the test.
  if (error.contains('ImageCodecException')) {
    return true;
  }
  // Overflows happen all over the place,
  // but they should not break tests.
  if (error.contains('overflowed by')) {
    return true;
  }
  // Sometimes some images fail to load, it generally does not break the test.
  if (error.contains('No host specified in URI') ||
      error.contains('EXCEPTION CAUGHT BY IMAGE RESOURCE SERVICE')) {
    return true;
  }
  // These errors should be avoided, but they should not break the test.
  if (error.contains('setState() called after dispose()')) {
    return true;
  }

  return false;
}
