import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../widgets/text_input_field.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();

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
            "Sign Up",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 26,
          ),
          Stack(
            children: [
              const CircleAvatar(
                radius: 64,
                backgroundColor: borderColor,
                child: Icon(
                  Icons.person_2_sharp,
                  size: 60,
                ),
              ),
              Positioned(
                bottom: -10,
                left: 80,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add_a_photo,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextInputField(
              textEditingController: _usernameController,
              labelText: "Name",
              icon: Icons.person,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextInputField(
              textEditingController: _emailController,
              labelText: "Email",
              icon: Icons.mail,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
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
                  "Sign Up",
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
              const Text("Already have an acoount? "),
              InkWell(
                onTap: () {},
                child: Text(
                  "Login",
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
