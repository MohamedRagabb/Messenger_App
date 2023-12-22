import 'package:flutter/material.dart';
import 'package:messenger_app/screens/sign_in_screen.dart';
import 'package:messenger_app/screens/sign_up_screen.dart';
import 'package:messenger_app/theme/theme.dart';
import 'package:messenger_app/widgets/custom_scaffold.dart';
import 'package:messenger_app/widgets/welcome_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 45.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.center,
              child: Container(
                child: Text(
                  "Enter personal details to your employee account",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Flexible(
              flex: 1,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Row(

                    children: [
                    const Expanded(child: WelcomeButton(
                      buttonText: 'sign in',
                      onTap: SignInScreen(),
                      color: Colors.transparent,
                      textColor: Colors.white,

                    ),),
                    Expanded(child: WelcomeButton(
                      buttonText: 'sign up',
                      onTap: const SignUpScreen(),
                      color: Colors.white,
                      textColor: lightColorScheme.primary,

                    ),)

                  ],),
                )
            )
          ],

        ),
      ),
    );
  }
}
