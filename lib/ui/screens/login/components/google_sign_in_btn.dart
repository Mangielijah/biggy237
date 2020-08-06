import 'package:biggy237/services/firebase_auth.service.dart';
import 'package:biggy237/strings.dart';
import 'package:flutter/material.dart';

class GoogleSignInButton extends StatelessWidget {
  FirebaseAuthService onTap;
  GoogleSignInButton({Key key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () => onTap.signInWithGoogle(),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey[300]),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              height: 24,
              image: AssetImage("assets/images/google.png"),
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              Strings.googleText,
              style: TextStyle(
                  fontSize: 17, letterSpacing: 0.25, color: Colors.grey[300]),
            ),
          ],
        ),
      ),
    );
  }
}
