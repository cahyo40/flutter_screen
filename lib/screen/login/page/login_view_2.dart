import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:yo_styles/color.dart';
import 'package:yo_styles/radius.dart';
import 'package:yo_styles/style.dart';

class LoginPage2 extends StatelessWidget {
  const LoginPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                YoColor.sky.shade700,
                YoColor.teal.shade200,
              ],
            ),
          ),
          child: Center(
            child: Container(
              padding: YoPadding.a4,
              width: MediaQuery.of(context).size.width * 0.85,
              decoration: BoxDecoration(
                color: YoColor.stone.shade50,
                borderRadius: YoRadius.arLG,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const YoSpace(
                        v: true,
                        tSpace: TSpace.xxl,
                      ),
                      Text(
                        "Welcome Back",
                        style: TextStyle(
                          color: YoColor.stone.shade800,
                          fontSize: YoFSize.text2XL,
                          fontWeight: YoFWeight.bold,
                        ),
                      ),
                      const YoSpace(
                        v: true,
                        tSpace: TSpace.sm,
                      ),
                      Text(
                        "Sign in using your registered account",
                        style: TextStyle(
                          color: YoColor.stone.shade500,
                          fontSize: YoFSize.textBASE,
                          fontWeight: YoFWeight.normal,
                        ),
                      ),
                    ],
                  ),
                  const YoSpace(
                    v: true,
                    tSpace: TSpace.xxl,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      prefixIcon: const Icon(Icons.email_outlined),
                      hintStyle: TextStyle(
                        color: YoColor.stone.shade300,
                        fontSize: YoFSize.textBASE,
                        fontWeight: YoFWeight.semiBold,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: YoRadius.arLG,
                        borderSide: BorderSide(
                          color: YoColor.stone.shade300,
                          style: BorderStyle.solid,
                          width: 1.5,
                        ),
                      ),
                    ),
                  ),
                  const YoSpace(
                    v: true,
                    tSpace: TSpace.sm,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Password",
                      prefixIcon: const Icon(Icons.lock_outline),
                      hintStyle: TextStyle(
                        color: YoColor.stone.shade300,
                        fontSize: YoFSize.textBASE,
                        fontWeight: YoFWeight.semiBold,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: YoRadius.arLG,
                        borderSide: BorderSide(
                          color: YoColor.stone.shade300,
                          style: BorderStyle.solid,
                          width: 1.5,
                        ),
                      ),
                    ),
                  ),
                  const YoSpace(
                    v: true,
                    tSpace: TSpace.lg,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        "Forgot Password",
                        style: TextStyle(
                          color: YoColor.sky,
                          fontSize: YoFSize.textBASE,
                          fontWeight: YoFWeight.semiBold,
                        ),
                      ),
                    ],
                  ),
                  const YoSpace(
                    v: true,
                    tSpace: TSpace.lg,
                  ),
                  YoButton(
                    yoButtonSize: YoButtonSize.medium,
                    onTap: () {},
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        color: YoColor.stone.shade50,
                        fontSize: YoFSize.textLG,
                        fontWeight: YoFWeight.semiBold,
                      ),
                    ),
                  ),
                  const YoSpace(
                    v: true,
                    tSpace: TSpace.lg,
                  ),
                  Center(
                    child: Text(
                      "or sign in with",
                      style: TextStyle(
                        color: YoColor.stone.shade700,
                        fontSize: YoFSize.textBASE,
                        fontWeight: YoFWeight.normal,
                      ),
                    ),
                  ),
                  const YoSpace(
                    v: true,
                    tSpace: TSpace.lg,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      YoButtonIcon(
                        yoButtonStyle: YoButtonStyle.outline,
                        yoButtonSize: YoButtonSize.small,
                        buttonColor: YoColor.sky.shade700,
                        icon: Icon(
                          Iconsax.add,
                          color: YoColor.sky.shade700,
                        ),
                        onTap: () {},
                        child: Text(
                          "Google",
                          style: TextStyle(
                            color: YoColor.sky.shade700,
                            fontSize: YoFSize.textSM,
                            fontWeight: YoFWeight.normal,
                          ),
                        ),
                      ),
                      YoButtonIcon(
                        yoButtonStyle: YoButtonStyle.outline,
                        yoButtonSize: YoButtonSize.small,
                        buttonColor: YoColor.sky.shade700,
                        icon: Icon(
                          Iconsax.add,
                          color: YoColor.sky.shade700,
                        ),
                        onTap: () {},
                        child: Text(
                          "Facebook",
                          style: TextStyle(
                            color: YoColor.sky.shade700,
                            fontSize: YoFSize.textSM,
                            fontWeight: YoFWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const YoSpace(
                    v: true,
                    tSpace: TSpace.xl,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account? ",
                        style: TextStyle(
                          color: YoColor.stone.shade700,
                          fontSize: YoFSize.textBASE,
                          fontWeight: YoFWeight.normal,
                        ),
                      ),
                      Text(
                        "Sign Up",
                        style: TextStyle(
                          color: YoColor.sky,
                          fontSize: YoFSize.textBASE,
                          fontWeight: YoFWeight.normal,
                        ),
                      ),
                    ],
                  ),
                  const YoSpace(
                    v: true,
                    tSpace: TSpace.xxl,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
