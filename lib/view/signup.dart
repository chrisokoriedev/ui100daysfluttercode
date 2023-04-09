import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helloworld/view/main_screen.dart';
import '../reuseable_component/styles.dart';
import '../reuseable_component/widget.dart';
import 'homepage.dart';
import 'login.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final emailController = TextEditingController();
  final password = TextEditingController();
  final confrimPassword = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    emailController.dispose();
    password.dispose();
    confrimPassword.dispose();
    super.dispose();
  }

  Future signUp() async {
    final isVaild = formKey.currentState!.validate();
    if (!isVaild) return;
    showDialog(
        context: context,
        builder: (context) => const Center(
              child: CircularProgressIndicator(),
            ));
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text.trim(), password: password.text.trim());
    } on FirebaseAuthException catch (e) {
      Get.snackbar('Status', e.message!.toString());
    }
    Get.back();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBack,
      body: Form(
        key: formKey,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: Get.height * 0.1,
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xff3e4784)),
                  child: const FlutterLogo(
                    size: 80,
                  ),
                ),
                const SizedBox(height: 50),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) =>
                      value != null && !EmailValidator.validate(value)
                          ? 'Enter value email'
                          : null,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 15),
                      hintText: 'Email',
                      hintStyle: TextStyle(fontSize: 16, color: Colors.black),
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.black45,
                      ),
                      suffixIcon: Icon(Icons.remove_red_eye)),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: password,
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.next,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) => value != null && value.length < 6
                      ? 'Enter min 6 character'
                      : null,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 15),
                      hintText: 'Password',
                      hintStyle: TextStyle(fontSize: 16, color: Colors.black),
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.black45,
                      ),
                      suffixIcon: Icon(Icons.remove_red_eye)),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: confrimPassword,
                  textInputAction: TextInputAction.done,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) =>
                      value != null && confrimPassword.text != password.text
                          ? 'Password dont match'
                          : null,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 15),
                      hintText: 'Confrim Password',
                      hintStyle: TextStyle(fontSize: 16, color: Colors.black),
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.black45,
                      ),
                      suffixIcon: Icon(Icons.remove_red_eye)),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () => Get.to(const MainScreen()),
                  child: Container(
                    width: double.infinity,
                    height: Get.height * 0.1 - 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: primaryColor),
                    child: const Center(
                      child: Text(
                        'Reigster',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ),
                heightsize(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account?',
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                    TextButton(
                      onPressed: () => Get.off(const LoginPage()),
                      child: const Text('Login'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
