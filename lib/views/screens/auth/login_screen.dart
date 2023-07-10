import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiktok_clone/constants.dart';
import 'package:tiktok_clone/views/screens/auth/signup_screen.dart';
import 'package:tiktok_clone/views/widgets/text_input_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "TikTok Clone",
            style: TextStyle(
              fontSize: 34,
              color: buttonColor,
              fontWeight: FontWeight.w900,
            ),
          ),
          const Text(
            "Login",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 26,
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: TextInputField(
              textEditingController: _emailController,
              labelText: "Email",
              icon: Icons.person,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: TextInputField(
                textEditingController: _passwordController,
                labelText: "Password",
                icon: Icons.lock,
                isObscure: true),
          ),
          const SizedBox(
            height: 40,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              width: MediaQuery.of(context).size.width - 40,
              height: 50,
              decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              ),
              child: const Center(
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Don't have an acoount? "),
              InkWell(
                onTap: () {
                  Get.to(SignupScreen());
                },
                child: Text(
                  "Register",
                  style: TextStyle(color: buttonColor),
                ),
              )
            ],
          )
        ],
      ),
    )));
  }
}
