import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/routes/app_pages.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            const SizedBox(
              height: 80,
            ),
            Image.network(
              "https://cdn0.iconfinder.com/data/icons/user-interface-vol-5-4/66/6-512.png",
              height: 100,
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: controller.cEmail,
              decoration: const InputDecoration(
                labelText: "Email",
              ),
            ),
            TextField(
              controller: controller.cUname,
              decoration: const InputDecoration(
                labelText: "Username",
              ),
            ),
            const TextField(
              // controller: controller.cPass,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 105, 150, 34),
                foregroundColor: Colors.white,
              ),
              child: const Text("Sign Up"),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Sudah Punya Akun ?"),
                TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.LOGIN);
                  },
                  child: const Text("Masuk Disini"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
