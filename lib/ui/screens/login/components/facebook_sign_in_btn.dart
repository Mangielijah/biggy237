import 'package:biggy237/services/firebase_auth.service.dart';
import 'package:biggy237/strings.dart';
import 'package:flutter/material.dart';

class FaceBookSignInBtn extends StatelessWidget {
  final FirebaseAuthService onTap;
  FaceBookSignInBtn({Key key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () => onTap.signInWithFacebook(),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      splashColor: Colors.blueGrey,
      fillColor: Color(0xff3b5998),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[300]),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              height: 24,
              image: AssetImage("assets/images/fbp.png"),
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              Strings.facebookText,
              style: TextStyle(
                fontSize: 17,
                letterSpacing: 0.25,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
