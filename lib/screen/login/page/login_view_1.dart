import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:yo_styles/style.dart';

class LoginPage1 extends StatelessWidget {
  const LoginPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: YoColor.orange.shade50,
      body: SafeArea(
        child: Padding(
          padding: YoPadding.a5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 150,
              ),
              const Text(
                "Login",
                style: TextStyle(
                  color: YoColor.orange,
                  fontSize: YoFSize.text2XL,
                  fontWeight: YoFWeight.bold,
                ),
              ),
              const YoSpace(
                v: true,
                tSpace: TSpace.xl,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Username, Email & Phone Number",
                  hintStyle: TextStyle(
                    color: YoColor.stone.shade800,
                    fontSize: YoFSize.textBASE,
                    fontWeight: YoFWeight.medium,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: YoRadius.arLG,
                    borderSide: const BorderSide(
                      style: BorderStyle.none,
                    ),
                  ),
                  fillColor: YoColor.stone.shade200,
                  filled: true,
                ),
              ),
              const YoSpace(
                v: true,
                tSpace: TSpace.sm,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(
                    color: YoColor.stone.shade800,
                    fontSize: YoFSize.textBASE,
                    fontWeight: YoFWeight.medium,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: YoRadius.arLG,
                    borderSide: const BorderSide(
                      style: BorderStyle.none,
                    ),
                  ),
                  fillColor: YoColor.stone.shade200,
                  filled: true,
                ),
              ),
              const YoSpace(
                v: true,
                tSpace: TSpace.lg,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: YoPadding.x4y3,
                    child: const Text(
                      "Forgot Password ?",
                      style: TextStyle(
                        color: YoColor.orange,
                        fontSize: YoFSize.textBASE,
                        fontWeight: YoFWeight.semiBold,
                      ),
                    ),
                  ),
                ],
              ),
              const YoSpace(
                v: true,
                tSpace: TSpace.lg,
              ),
              YoButton(
                buttonColor: YoColor.orange,
                yoButtonSize: YoButtonSize.large,
                onTap: () {},
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    color: YoColor.stone.shade50,
                    fontSize: YoFSize.textLG,
                    fontWeight: YoFWeight.bold,
                  ),
                ),
              ),
              const YoSpace(
                v: true,
                tSpace: TSpace.lg,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: YoColor.orange,
                      height: 1,
                    ),
                  ),
                  Padding(
                    padding: YoPadding.x7,
                    child: Text(
                      "Or sign in with",
                      style: TextStyle(
                        color: YoColor.stone.shade800,
                        fontSize: YoFSize.textBASE,
                        fontWeight: YoFWeight.normal,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: YoColor.orange,
                      height: 1,
                    ),
                  ),
                ],
              ),
              const YoSpace(
                v: true,
                tSpace: TSpace.lg,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: YoColor.orange.shade100,
                    child: const FlutterLogo(),
                  ),
                  const YoSpace(
                    v: false,
                  ),
                  CircleAvatar(
                    backgroundColor: YoColor.orange.shade100,
                    child: const FlutterLogo(),
                  ),
                  const YoSpace(
                    v: false,
                  ),
                  CircleAvatar(
                    backgroundColor: YoColor.orange.shade100,
                    child: const FlutterLogo(),
                  ),
                ],
              ),
              const YoSpace(
                v: true,
                tSpace: TSpace.lg,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(
                      color: YoColor.stone.shade800,
                      fontSize: YoFSize.textBASE,
                      fontWeight: YoFWeight.normal,
                    ),
                  ),
                  const Text(
                    "Create account",
                    style: TextStyle(
                      color: YoColor.orange,
                      fontSize: YoFSize.textBASE,
                      fontWeight: YoFWeight.normal,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
