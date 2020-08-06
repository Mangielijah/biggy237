import 'package:biggy237/style.dart';
import 'package:flutter/material.dart';

class LoginImage extends StatelessWidget {
  final String imgPath;
  final String text;
  const LoginImage(this.text, this.imgPath, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: (screenHeight(context) / 4) * 3 - 100,
        padding: EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  height: (screenHeight(context) / 4) * 2 - 25,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        text,
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.grey,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: screenHeight(context) / 4 + 10,
                        decoration: BoxDecoration(
                          color: Colors.grey[50],
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(imgPath),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ]),
        ));
  }
}
