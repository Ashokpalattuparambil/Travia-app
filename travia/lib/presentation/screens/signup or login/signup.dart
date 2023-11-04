import 'package:flutter/material.dart';
import 'package:travia/global/colors.dart';
import 'package:travia/global/dimensions.dart';
import 'package:travia/presentation/screens/signup%20or%20login/widgets/social_media_login_button.dart';
import 'package:travia/presentation/screens/signup%20or%20login/widgets/textbutton.dart';
import 'package:travia/presentation/screens/signup%20or%20login/widgets/textinputfield.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "images/logo.png",
                width: 70,
                height: 70,
              ),
              const SizedBox(
                height: GlobalDimensions.kHeight30,
              ),
              const TextInputFieldWidget(
                hintText: "username",
              ),
              const TextInputFieldWidget(
                hintText: "email",
              ),
              const TextInputFieldWidget(
                hintText: "password",
              ),
              const TextButtonWidget(text: "Sign in"),
              const TextButtonWidget(text: "Sign in"),
              const SizedBox(
                height: GlobalDimensions.kHeight20,
              ),
              const SocialMediaLoginButtonWidget(
                color: GlobalColors.fbButtonColor,
                icon: Icon(
                  Icons.facebook_sharp,
                  color: GlobalColors.kWhite,
                ),
                text: "Login with facebook",
              ),
              const SizedBox(
                height: GlobalDimensions.kHeight20,
              ),
              const SocialMediaLoginButtonWidget(
                color: GlobalColors.googleButtonColor,
                icon: Icon(
                  Icons.g_mobiledata,
                  color: GlobalColors.kWhite,
                ),
                text: "Login with google",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
