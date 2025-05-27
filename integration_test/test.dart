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

  group('Student', () {
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

    testWidgets('falsePasswordStudentLogin', (WidgetTester tester) async {
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
          find.byKey(const ValueKey('password_2gj6')), 'matkhausai');
      await tester.tap(find.byKey(const ValueKey('Button_c3fi')));
      await tester.pumpAndSettle();
      expect(find.byKey(const ValueKey('Button_c3fi')), findsWidgets);
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

    testWidgets('trueStudentSignUp', (WidgetTester tester) async {
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
          'vinh250412311@gmail.com');
      await tester.enterText(
          find.byKey(const ValueKey('password_Create_kd1q')), 'vinh25042005');
      await tester.enterText(
          find.byKey(const ValueKey('passwordConfirm_4brj')), 'vinh25042005');
      await tester.tap(find.text('Student'));
      await tester.tap(find.byKey(const ValueKey('Button_s25p')));
      await tester.pumpAndSettle();
      expect(find.byKey(const ValueKey('Button_h3wc')), findsWidgets);
    });

    testWidgets('studentShowClass', (WidgetTester tester) async {
      _overrideOnError();
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: 'vinh25041234@gmail.com', password: 'vinh25042005');
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: const MyApp(),
      ));
      await GoogleFonts.pendingFonts();

      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.menu_book));
      await tester.pumpAndSettle();
      expect(find.byKey(const ValueKey('Button_a5n6')), findsWidgets);
    });

    testWidgets('studentToDo', (WidgetTester tester) async {
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
      await tester.tap(find.text('Lớp 1'));
      await tester.pumpAndSettle();
      expect(find.byKey(const ValueKey('Text_0mtt')), findsWidgets);
    });

    testWidgets('chooseToDo', (WidgetTester tester) async {
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
      await tester.tap(find.text('Lớp 1'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Quizz1'));
      await tester.pumpAndSettle();
      expect(find.byKey(const ValueKey('Text_8ibd')), findsWidgets);
    });

    testWidgets('doTask', (WidgetTester tester) async {
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
      await tester.tap(find.text('Lớp 1'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Quizz1'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Take the Task'));
      await tester.pumpAndSettle();
      await tester.enterText(
          find.byKey(const ValueKey('TextField_4hjs')), 'tra loi cau 1');
      await tester.tap(find.byKey(const ValueKey('Button_h4es')));
      await tester.pumpAndSettle();
      expect(find.byKey(const ValueKey('Text_5290')), findsWidgets);
    });

    testWidgets('showNotification', (WidgetTester tester) async {
      _overrideOnError();
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: 'vinh25041234@gmail.com', password: 'vinh25042005');
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: StudentHomePageWidget(),
        ),
      ));
      await GoogleFonts.pendingFonts();

      await tester.pumpAndSettle();
      await tester.tap(find.text('Notification'));
      await tester.pumpAndSettle();
      expect(find.byKey(const ValueKey('Text_amz7')), findsWidgets);
    });

    testWidgets('goToProfileStudent', (WidgetTester tester) async {
      _overrideOnError();
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: 'vinh25041234@gmail.com', password: 'vinh25042005');
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: StudentHomePageWidget(),
        ),
      ));
      await GoogleFonts.pendingFonts();

      await tester.pumpAndSettle();
      await tester.tap(find.text('Profile'));
      await tester.pumpAndSettle();
      expect(find.byKey(const ValueKey('Text_nmcz')), findsWidgets);
    });

    testWidgets('trueChangePasswordStudent', (WidgetTester tester) async {
      _overrideOnError();
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: 'vinh25041234@gmail.com', password: 'vinh25042005');
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: ChangePasswordWidget(),
        ),
      ));
      await GoogleFonts.pendingFonts();

      await tester.pumpAndSettle();
      await tester.enterText(
          find.byKey(const ValueKey('TextField_5ig3')), 'vinh25042005');
      await tester.enterText(
          find.byKey(const ValueKey('TextField_8xtz')), '123456');
      await tester.enterText(
          find.byKey(const ValueKey('TextField_jop1')), '123456');
      await tester.tap(find.byKey(const ValueKey('Button_idny')));
      expect(find.byKey(const ValueKey('Text_tx4i')), findsWidgets);
    });

    testWidgets('newPasswordEmpty', (WidgetTester tester) async {
      _overrideOnError();
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: 'vinh25041234@gmail.com', password: 'vinh25042005');
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: ChangePasswordWidget(),
        ),
      ));
      await GoogleFonts.pendingFonts();

      await tester.pumpAndSettle();
      await tester.enterText(
          find.byKey(const ValueKey('TextField_5ig3')), 'vinh25042005');
      await tester.enterText(
          find.byKey(const ValueKey('TextField_jop1')), '123');
      await tester.tap(find.byKey(const ValueKey('Button_idny')));
      expect(find.byKey(const ValueKey('Text_e4ut')), findsWidgets);
    });

    testWidgets('newPassAndConfirmNotMatch', (WidgetTester tester) async {
      _overrideOnError();
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: 'vinh25041234@gmail.com', password: 'vinh25042005');
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: ChangePasswordWidget(),
        ),
      ));
      await GoogleFonts.pendingFonts();

      await tester.pumpAndSettle();
      await tester.enterText(
          find.byKey(const ValueKey('TextField_5ig3')), 'vinh25042005');
      await tester.enterText(
          find.byKey(const ValueKey('TextField_8xtz')), '123');
      await tester.enterText(find.byKey(const ValueKey('TextField_jop1')), '1');
      await tester.tap(find.byKey(const ValueKey('Button_idny')));
      expect(find.byKey(const ValueKey('Text_e4ut')), findsWidgets);
    });
  });

  group('Teacher', () {
    testWidgets('trueTeacherLogin', (WidgetTester tester) async {
      _overrideOnError();

      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: RegistWidget(),
        ),
      ));
      await GoogleFonts.pendingFonts();

      await tester.pumpAndSettle(const Duration(milliseconds: 1));
      await tester.enterText(find.byKey(const ValueKey('emailAddress_9bos')),
          'vinh2504123@gmail.com');
      await tester.enterText(
          find.byKey(const ValueKey('password_2gj6')), 'vinh25042005');
      await tester.tap(find.byKey(const ValueKey('Button_c3fi')));
      await tester.pumpAndSettle();
      expect(find.byKey(const ValueKey('Text_7aqk')), findsWidgets);
    });

    testWidgets('falsePasswordTeacherLogin', (WidgetTester tester) async {
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

    testWidgets('addStudent', (WidgetTester tester) async {
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

      await tester.tap(find.byKey(const ValueKey('Container_kiks')));
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const ValueKey('Button_3mrj')));
      await tester.pumpAndSettle();
      expect(find.byKey(const ValueKey('Button_3mrj')), findsWidgets);
    });

    testWidgets('manageQuizz', (WidgetTester tester) async {
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
      await tester.tap(find.byKey(const ValueKey('Tab_di05')));
      expect(find.byKey(const ValueKey('Column_acer')), findsWidgets);
    });

    testWidgets('showStudentAnswer', (WidgetTester tester) async {
      _overrideOnError();
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: 'vinh2504123@gmail.com', password: 'vinh25042005');
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: StudentSubmitDetailWidget(
            quizID: 'OohdanKUCeTVVqbOBKuG',
            userID: '',
            studenID: '76Mbk5F17dacEubcPfFnyQ39keC3',
          ),
        ),
      ));
      await GoogleFonts.pendingFonts();

      await tester.enterText(
          find.byKey(const ValueKey('TextField_tpi9')), '10');
      await tester.tap(find.byKey(const ValueKey('Button_0f2f')));
      await tester.pumpAndSettle();
      expect(
          find.byKey(const ValueKey('StudentSubmitDetail_xu75')), findsWidgets);
    });

    testWidgets('goToProfile', (WidgetTester tester) async {
      _overrideOnError();
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: 'vinh2504123@gmail.com', password: 'vinh25042005');
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: TeacherHomePageWidget(),
        ),
      ));
      await GoogleFonts.pendingFonts();

      await tester.pumpAndSettle();
      await tester.tap(find.text('Settings'));
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const ValueKey('Container_88ax')));
      expect(find.byKey(const ValueKey('Text_sd0b')), findsWidgets);
    });

    testWidgets('AiTest', (WidgetTester tester) async {
      _overrideOnError();
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: 'vinh2504123@gmail.com', password: 'vinh25042005');
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: AICopyWidget(),
        ),
      ));
      await GoogleFonts.pendingFonts();

      await tester.pumpAndSettle();
      await tester.enterText(
          find.byKey(const ValueKey('TextField_4j4c')), '1+1');
      await tester.enterText(find.byKey(const ValueKey('TextField_61qh')), '2');
      await tester.tap(find.byKey(const ValueKey('Button_kv9h')));
      await tester.pumpAndSettle();
      expect(find.byKey(const ValueKey('Markdown_a25a')), findsWidgets);
    });

    testWidgets('trueChangePasswordTeacher', (WidgetTester tester) async {
      _overrideOnError();
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: 'vinh2504123@gmail.com', password: 'vinh25042005');
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: ChangePasswordWidget(),
        ),
      ));
      await GoogleFonts.pendingFonts();

      await tester.pumpAndSettle();
      await tester.enterText(
          find.byKey(const ValueKey('TextField_5ig3')), 'vinh25042005');
      await tester.enterText(
          find.byKey(const ValueKey('TextField_8xtz')), '123456');
      await tester.enterText(
          find.byKey(const ValueKey('TextField_jop1')), '123456');
      await tester.tap(find.byKey(const ValueKey('Button_idny')));
      expect(find.byKey(const ValueKey('Text_tx4i')), findsWidgets);
    });

    testWidgets('createQuestionWithoutName', (WidgetTester tester) async {
      _overrideOnError();
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: 'vinh2504123@gmail.com', password: 'vinh25042005');
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: CreatingEssayQuesWidget(
            title: 'Quizz',
            quizID: '313123123',
          ),
        ),
      ));
      await GoogleFonts.pendingFonts();

      await tester.pumpAndSettle();
      await tester.enterText(
          find.byKey(const ValueKey('QuestionField_wq63')), 'Empty');
      await tester.tap(find.byKey(const ValueKey('Container_fof1')));
      expect(find.byKey(const ValueKey('Text_bels')), findsWidgets);
    });

    testWidgets('currenPasswordEmpty', (WidgetTester tester) async {
      _overrideOnError();
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: 'vinh2504123@gmail.com', password: 'vinh25042005');
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: ChangePasswordWidget(),
        ),
      ));
      await GoogleFonts.pendingFonts();

      await tester.pumpAndSettle();
      await tester.enterText(
          find.byKey(const ValueKey('TextField_8xtz')), '123');
      await tester.enterText(
          find.byKey(const ValueKey('TextField_jop1')), '123');
      await tester.tap(find.byKey(const ValueKey('Button_idny')));
      expect(find.byKey(const ValueKey('Text_e4ut')), findsWidgets);
    });

    testWidgets('currentPasswordNotMatch', (WidgetTester tester) async {
      _overrideOnError();
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: 'vinh2504123@gmail.com', password: 'vinh25042005');
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: ChangePasswordWidget(),
        ),
      ));
      await GoogleFonts.pendingFonts();

      await tester.pumpAndSettle();
      await tester.enterText(
          find.byKey(const ValueKey('TextField_5ig3')), 'matkhausai');
      await tester.enterText(
          find.byKey(const ValueKey('TextField_8xtz')), '123');
      await tester.enterText(
          find.byKey(const ValueKey('TextField_jop1')), '123');
      await tester.tap(find.byKey(const ValueKey('Button_idny')));
      expect(find.byKey(const ValueKey('Text_e4ut')), findsWidgets);
    });

    testWidgets('newPassAndConfirmNotMatch', (WidgetTester tester) async {
      _overrideOnError();
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: 'vinh2504123@gmail.com', password: 'vinh25042005');
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: ChangePasswordWidget(),
        ),
      ));
      await GoogleFonts.pendingFonts();

      await tester.pumpAndSettle();
      await tester.enterText(
          find.byKey(const ValueKey('TextField_5ig3')), 'vinh25042005');
      await tester.enterText(
          find.byKey(const ValueKey('TextField_8xtz')), '123');
      await tester.enterText(find.byKey(const ValueKey('TextField_jop1')), '1');
      await tester.tap(find.byKey(const ValueKey('Button_idny')));
      expect(find.byKey(const ValueKey('Text_e4ut')), findsWidgets);
    });

    testWidgets('newPasswordEmpty', (WidgetTester tester) async {
      _overrideOnError();
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: 'vinh2504123@gmail.com', password: 'vinh25042005');
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: ChangePasswordWidget(),
        ),
      ));
      await GoogleFonts.pendingFonts();

      await tester.pumpAndSettle();
      await tester.enterText(
          find.byKey(const ValueKey('TextField_5ig3')), 'vinh25042005');
      await tester.enterText(
          find.byKey(const ValueKey('TextField_jop1')), '123');
      await tester.tap(find.byKey(const ValueKey('Button_idny')));
      expect(find.byKey(const ValueKey('Text_e4ut')), findsWidgets);
    });

    testWidgets('teacherLogOut', (WidgetTester tester) async {
      _overrideOnError();
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: 'vinh2504123@gmail.com', password: 'vinh25042005');
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: SettingsWidget(),
        ),
      ));
      await GoogleFonts.pendingFonts();

      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const ValueKey('Container_r5sv')));
      expect(find.byKey(const ValueKey('emailAddress_9bos')), findsWidgets);
    });

    testWidgets('confirmPasswordEmpty', (WidgetTester tester) async {
      _overrideOnError();
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: 'vinh2504123@gmail.com', password: 'vinh25042005');
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: ChangePasswordWidget(),
        ),
      ));
      await GoogleFonts.pendingFonts();

      await tester.pumpAndSettle();
      await tester.enterText(
          find.byKey(const ValueKey('TextField_5ig3')), 'vinh25042005');
      await tester.enterText(
          find.byKey(const ValueKey('TextField_8xtz')), '123');
      await tester.tap(find.byKey(const ValueKey('Button_idny')));
      expect(find.byKey(const ValueKey('Text_e4ut')), findsWidgets);
    });

    testWidgets('createClassWithoutName', (WidgetTester tester) async {
      _overrideOnError();
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: 'vinh2504123@gmail.com', password: 'vinh25042005');
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: AddClassWidget(),
        ),
      ));
      await GoogleFonts.pendingFonts();

      await tester.pumpAndSettle();
      await tester.enterText(
          find.byKey(const ValueKey('description_0s30')), 'Hello World');
      await tester.tap(find.byKey(const ValueKey('addClas_qbrv')));
      await tester.pumpAndSettle();
      expect(find.byKey(const ValueKey('Button_5wpb')), findsWidgets);
    });

    testWidgets('createClassWithoutDescription', (WidgetTester tester) async {
      _overrideOnError();
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: 'vinh2504123@gmail.com', password: 'vinh25042005');
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: AddClassWidget(),
        ),
      ));
      await GoogleFonts.pendingFonts();

      await tester.pumpAndSettle();
      await tester.enterText(
          find.byKey(const ValueKey('nameClass_n3bo')), 'Hello World');
      await tester.tap(find.byKey(const ValueKey('addClas_qbrv')));
      await tester.pumpAndSettle();
      expect(find.byKey(const ValueKey('Button_5wpb')), findsWidgets);
    });

    testWidgets('createClass', (WidgetTester tester) async {
      _overrideOnError();
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: 'vinh2504123@gmail.com', password: 'vinh25042005');
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: AddClassWidget(),
        ),
      ));
      await GoogleFonts.pendingFonts();

      await tester.pumpAndSettle();
      await tester.enterText(
          find.byKey(const ValueKey('nameClass_n3bo')), 'Hello World');
      await tester.enterText(
          find.byKey(const ValueKey('description_0s30')), 'Hello World');
      await tester.tap(find.byKey(const ValueKey('addClas_qbrv')));
      await tester.pumpAndSettle();
      expect(find.byKey(const ValueKey('Button_5wpb')), findsWidgets);
    });

    testWidgets('trueCreateQuestion', (WidgetTester tester) async {
      _overrideOnError();
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: 'vinh2504123@gmail.com', password: 'vinh25042005');
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: CreatingEssayQuesWidget(
            title: 'Quizz',
            quizID: '3112222',
          ),
        ),
      ));
      await GoogleFonts.pendingFonts();

      await tester.pumpAndSettle();
      await tester.enterText(
          find.byKey(const ValueKey('QuestionField_wq63')), 'Not Empty');
      await tester.tap(find.byKey(const ValueKey('Container_fof1')));
      expect(find.byKey(const ValueKey('Text_bels')), findsWidgets);
    });

    testWidgets('submitQuizz', (WidgetTester tester) async {
      _overrideOnError();
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: 'vinh2504123@gmail.com', password: 'vinh25042005');
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: CreatingEssayQuesWidget(
            title: 'Quizz',
            quizID: '12123123',
          ),
        ),
      ));
      await GoogleFonts.pendingFonts();

      await tester.pumpAndSettle();
      await tester.enterText(
          find.byKey(const ValueKey('QuestionField_wq63')), 'Not Empty');
      await tester.tap(find.byKey(const ValueKey('Container_7fua')));
      expect(find.byKey(const ValueKey('TeacherSideBar_iy3d')), findsWidgets);
    });

    testWidgets('showClassTeacher', (WidgetTester tester) async {
      _overrideOnError();
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: 'vinh2504123@gmail.com', password: 'vinh25042005');
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: TeacherHomePageWidget(),
        ),
      ));
      await GoogleFonts.pendingFonts();

      await tester.pumpAndSettle(const Duration(milliseconds: 3));
      await tester.tap(find.text('Classes'));
      await tester.pumpAndSettle(const Duration(milliseconds: 3));
      expect(find.byKey(const ValueKey('Button_5wpb')), findsWidgets);
    });
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

  testWidgets('forgetPassword', (WidgetTester tester) async {
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
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('emailAddress_9bos')), findsWidgets);
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
