import 'package:flutter/material.dart';
import 'package:movilcare/home.dart';
import 'package:movilcare/inicio.dart';
import 'package:movilcare/splashlogparamedico.dart';

class LoginParamedico extends StatefulWidget {
  static String id = 'loginparamedico';

  @override
  _LoginParamedicoState createState() => _LoginParamedicoState();
}

class _LoginParamedicoState extends State<LoginParamedico> {
  List<DropdownMenuItem<String>> listDrop = [];
  String? selected = null;
  void loadData() {
    listDrop = [];
    listDrop.add(new DropdownMenuItem(
      child: new Text('Paciente'),
      value: 'Paciente',
    ));
    listDrop.add(new DropdownMenuItem(
      child: new Text('Paramedico'),
      value: 'Paramedico',
    ));
  }

  String ced = '0602797334';
  String contra = 'paramedico1';
  String mensaje = 'a';
  final cedcontroller = TextEditingController();
  final contraController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    loadData();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false, 
          title: Text(
            '            CLÍNICA VANCUVER',
            style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          /*width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                const Color(0xff9e9e9e),
                const Color(0xffeeeeee),
              ]              
              )),*/
          //padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Image.asset(
                  'images/logo2.png',
                  height: 250.0,
                ),
              ),
              SizedBox(
                height: 55.0,
              ),
              _userTextField(),
              SizedBox(
                height: 15.0,
              ),
              _passwordTextField(),
              SizedBox(
                height: 5.0,
              ),
              //_rolDownField(),
              /*Expanded(
                  child: new Center(
                child: new DropdownButton(
                  dropdownColor: Color(0xffd6d6d6),
                  value: selected,
                  items: listDrop,
                  hint: new Text('Rol'),
                  onChanged: (value) {
                    selected = value as String?;
                    setState(() {});
                  },
                ),
              )),*/
              SizedBox(
                height: 5.0,
              ),
              _bottonLogin(),
              SizedBox(
                height: 5.0,
              ),
              _bottonInicio(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _userTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 35.0),
        child: TextField(
          controller: cedcontroller,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            icon: Icon(Icons.email),
            hintText: '***********',
            labelText: 'CI usuario',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _passwordTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 35.0),
        child: TextField(
          controller: contraController,
          keyboardType: TextInputType.emailAddress,
          obscureText: true,
          decoration: InputDecoration(
            icon: Icon(Icons.lock),
            hintText: '**********',
            labelText: 'Contraseña',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _bottonLogin() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 70.0, vertical: 15.0),
            child: Text(
              'Iniciar sesión',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 10.0,
          color: Colors.lightBlueAccent,
          onPressed: () {
            if (ced == cedcontroller.text && contra == contraController.text) {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (_) => SplashAppLPM(),
              ));
            } else {
              showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Aviso"),
                      content: Text("Usuario y/o contraseña son incorrectos"),
                      actions: [
                        TextButton(
                            onPressed: () => {
                                  Navigator.pop(context, false),
                                  _cleartext(context)
                                },
                            child: Text("Aceptar")),
                      ],
                      elevation: 24,
                      backgroundColor: Colors.brown[200],
                    );
                  });
            }
          });
    });
  }

  Widget _bottonInicio() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Text(
              'Atrás',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          elevation: 20.0,
          color: Color(0xff7cb342),
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (_) => Inicio(),
            ));
          });
    });
  }

  void _cleartext(BuildContext context) {
    cedcontroller.clear();
    contraController.clear();
  }
}
