import 'package:biggy237/services/firebase_auth.service.dart';
import 'package:biggy237/strings.dart';
import 'package:biggy237/style.dart';
import 'package:biggy237/ui/screens/login/components/facebook_sign_in_btn.dart';
import 'package:biggy237/ui/screens/login/components/google_sign_in_btn.dart';
import 'package:biggy237/ui/screens/login/components/login_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FirebaseAuthService firebaseAuth =
        Provider.of<FirebaseAuthService>(context);
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          LoginImage(
            "Cameroons Number One Reality Show",
            "assets/images/logo.png",
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
            height: (MediaQuery.of(context).size.height * 1) / 4 + 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  Strings.login_reg_text,
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.3),
                ),
                SizedBox(
                  height: 12.0,
                ),
                GoogleSignInButton(
                  onTap: firebaseAuth,
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  Strings.or,
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.75,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                FaceBookSignInBtn(
                  onTap: firebaseAuth,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
