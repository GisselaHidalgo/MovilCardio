import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:movilcare/loginpaciente.dart';

import 'cita_medica.dart';
import 'homepaciente.dart';

class SplashAppAC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        color: Colors.white,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            //primaryColor: Colors.purple,
            //primarySwatch: Colors.purple,
            fontFamily: 'FIRSNEUE'),
        home: SplashScreenAC());
  }
}

class SplashScreenAC extends StatefulWidget {
  @override
  SplashScreenState createState() => new SplashScreenState();
}

class SplashScreenState extends State<SplashScreenAC>
    with SingleTickerProviderStateMixin {
  var _visible = true;

  late AnimationController animationController;
  late Animation<double> animation;

  startTime() async {
    var _duration = new Duration(seconds: 1); //SetUp duration here
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CitaMedicaScreen()));
  }

  @override
  void initState() {
    super.initState();
    animationController = new AnimationController(
        vsync: this, duration: new Duration(seconds: 1));
    animation =
        new CurvedAnimation(parent: animationController, curve: Curves.easeOut);

    animation.addListener(() => this.setState(() {}));
    animationController.forward();

    setState(() {
      _visible = !_visible;
    });
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Guardado exitosamente',
                style: TextStyle(fontSize: 25),
              ),
              new Image.asset(
                'images/cora.jpg',
                width: animation.value * 100,
                height: animation.value * 100,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
