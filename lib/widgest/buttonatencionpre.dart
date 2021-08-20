import 'package:flutter/material.dart';

class ButtonAtencionPre extends StatelessWidget {
  final VoidCallback onTap;
  final String text;

  const ButtonAtencionPre({
    Key? key, 
    required this.onTap,
    required this.text,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors: <Color>[
                const Color(0xff7cb342),
                const Color(0xff7cb342),
            ]
          ),
        ), 
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
            textAlign: TextAlign.center,
          ),
        ),   
      ),      
    );
  }
}
