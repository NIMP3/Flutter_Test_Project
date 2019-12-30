import 'package:flutter/material.dart';

class LayoutWidgets extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return baseLine();
  }

  Widget aligmentTest () {
    return Center(
      child: Container(
        height: 140,
        width: 140,
        color: Colors.blue[50],
        child: Align(
          /**Punto de referencia para alineación (center)**/
          alignment: Alignment(-1, 1),
          //alignment: Alignment.center,
          /**Punto de referencia para la alineación (top-left)**/
          //alignment: FractionalOffset(0.1, 0.6),
          child: FlutterLogo(
            size: 70,
          ),
        ),
      ),
    );
  }

  Widget aspectRatioTest () {
    return AspectRatio(
        aspectRatio: 4/3,
        child: Container(height: 10.0, width: 10.0, color: Colors.red)
    );
  }

  Widget baseLine () {
    return Center(
      child: Row(
        children: <Widget>[
          Text(
            "DEBIAN",
            style: TextStyle(
                fontSize: 32.0,
                color: Colors.pink
            ),
          ),
          Baseline(
            baseline: -10,
            baselineType: TextBaseline.alphabetic,
            child: Text(
              "LINUX",
              style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.deepPurple
              ),
            ),
          ),
          Text(
            " UBUNTU",
            style: TextStyle(
                fontSize: 32.0,
                color: Colors.teal
            ),
          ),
          Baseline(
            baseline: 40,
            baselineType: TextBaseline.alphabetic,
            child: Text(
              "LINUX",
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.black87
              ),
            ),
          )
        ],
      )
    );
  }
}