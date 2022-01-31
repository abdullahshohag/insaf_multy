import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:insaf_multiparpas/ui/gloval/doinik_sonchi.dart';
import 'package:insaf_multiparpas/ui/gloval/dps.dart';
import 'package:insaf_multiparpas/ui/gloval/fdr.dart';
import 'package:insaf_multiparpas/ui/gloval/mashik_sonchi.dart';
import 'package:insaf_multiparpas/ui/gloval/name_view.dart';
import 'package:insaf_multiparpas/ui/gloval/shaptahik_sonchi.dart';
import 'package:insaf_multiparpas/ui/gloval/sonchi.dart';
import 'ui/gloval/claint_view.dart';
import 'ui/gloval/sodosho_list.dart';
import 'ui/gloval/about_inshaf.dart';
import 'ui/gloval/web_view.dart';
import 'ui/my_homepage.dart';
import 'ui/sign-up.dart';
import 'ui/gloval/loan_page.dart';
import 'ui/insaf_multi_mainpage.dart';
import 'ui/app_routh_path.dart';

void main() async {
  // FirebaseOptions firebaseOptions = const FirebaseOptions(
  //   appId: '1:448618578101:ios:0b650370bb29e29cac3efc',
  //   apiKey: 'AIzaSyAgUhHU8wSJgO5MVNy95tMT07NEjzMOfz0',
  //   projectId: 'react-native-firebase-testing',
  //   messagingSenderId: '448618578101',
  // );

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // options: firebaseOptions,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        // home: MyHomePage(),
        initialRoute: AppRoutesPath.MyHomePage,
        routes: <String, WidgetBuilder>{
          AppRoutesPath.MyHomePage: (context) => MyHomePage(),
          AppRoutesPath.SignUpPage: (context) => SignupPage(),
          AppRoutesPath.MainPage: (context) => SecondPage(),
          AppRoutesPath.DPSPage: (context) => DpsPage(),
          AppRoutesPath.FDRPage: (context) => FdrPage(),
          AppRoutesPath.SonchiPage: (context) => SonchiPage(),
          AppRoutesPath.LoanPage: (context) => LoanPage(),
          AppRoutesPath.Doynik: (context) => DaynikSonchi(),
          AppRoutesPath.Shaptahik: (context) => ShaptahikSonchi(),
          AppRoutesPath.Mashik: (context) => MashikSonchi(),
          AppRoutesPath.AboutInshaf: (context) => AboutInshaf(),
          AppRoutesPath.ClaintList: (context) => ClaintView(),
          AppRoutesPath.SodoshoList: (context) => SodoshoList(),
          AppRoutesPath.NameList: (context) => NameView(),
          AppRoutesPath.WebView: (context) => LinkView(),
          
        });
  }
}
