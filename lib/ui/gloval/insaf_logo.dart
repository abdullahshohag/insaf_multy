import 'package:flutter/material.dart';

class InsafLogo extends StatelessWidget {
  const InsafLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 150.0,
          child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text: 'INSAF',
                  style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 40,
                      fontWeight: FontWeight.w900),
                  children: [
                    TextSpan(
                        text: 'MULTY',
                        style: TextStyle(color: Colors.blueAccent)),
                    TextSpan(
                        text: 'PARPAS', style: TextStyle(color: Colors.black)),
                  ])),
        ),
        Container(
          height: 120.0,
          width: double.infinity,
          alignment: Alignment.center,
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              color: Colors.cyanAccent.shade400,
              border: Border.all(color: Colors.amberAccent, width: 20.0),
              borderRadius: BorderRadius.circular(100.0)),
          child: Text(
            'আজকের পুঁজি  আগামীর  ভবিষ্যৎ ',
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
