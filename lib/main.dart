import 'package:flutter/material.dart';
import 'package:flutter_playground/screens/dashboard_screen.dart';
import 'package:flutter_playground/screens//login_screen.dart';
import 'package:flutter_playground/screens/loading_screen.dart';

void main() => runApp(
      const MaterialApp(
        home: Center(
          child: LoadingScreen(),
        ),
      ),
    );

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       initialRoute: '/',
//       routes: {
//         '/': (context) => LoginScreen(),
//         '/loading': (context) => LoadingScreen(),
//         '/dashboard': (context) => DashboardScreen(),
//       },
//     );
//   }
// }
