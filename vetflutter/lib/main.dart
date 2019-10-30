import 'package:flutter/material.dart';
import 'pages/Homepage.dart';
import 'styles/fonts.dart';
import 'styles/colors.dart';
import 'pages/Homepage.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//           primarySwatch: Colors.blue,
//           textTheme: TextTheme(
//               title: DashboardTitle,
//               display1: DashboardTitle,
//               display2: ArticleTitle,
//               body1: ArticleText,
//               subtitle: ArticleSubtitle)),
//       home: ListView(children: <Widget>[MyHomePage(title: 'vetevo')]),
//     );
//   }
// }



void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MaterialApp(
    title: 'Vetevo App',
    theme: ThemeData(
      primaryColor: PrimaryColor,
    ),
    initialRoute:  '/',
    routes: {
      '/': (context) => MyHomePage(),
    }
  ));
}
