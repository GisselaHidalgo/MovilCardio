import 'package:flutter/material.dart';
import 'package:movilcare/inicio.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clinica Vancuver',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: Inicio.id,
      routes: {
        Inicio.id: (context) => Inicio(),
      },
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
  class SplashScreen extends StatefulWidget {
    
  
    @override
    _SplashScreenState createState() => _SplashScreenState();
  }
  
  class _SplashScreenState extends State<SplashScreen> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.amber[700],
        body:Center(
          child: Column(children: [
            
          ],) ,
        )
        
      );
    }
  }

