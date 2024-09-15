// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:food_delivery_app/services/auth/auth_service.dart';

import '../components/my_button.dart';
import '../components/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  void register() async {
    //get auth services
    final _authService = AuthService();

    //check if password is match
    if (passwordController.text == confirmPasswordController.text) {
      //try creating user
      try {
        await _authService.signInWithEmailPassword(
          emailController.text,
          passwordController.text,
        );
      }
      //display any erro
      catch (e) {
        showDialog(

          context: context,
          builder: (context) => AlertDialog(
            title: Text(
              e.toString(),
            ),
          ),
        );
      }
    }

    //if password is do not match
    else{
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("Passwords do not match!"),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

            const SizedBox(
              height: 25,
            ),

            //message, app  slogan
            Text(
              "Let's create an account for you",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),

            const SizedBox(
              height: 25,
            ),

            //email textfiled
            MyTextfield(
              controller: emailController,
              hintText: "Email",
              obscureText: false,
            ),

            const SizedBox(
              height: 25,
            ),
            //password textfiled
            MyTextfield(
              controller: passwordController,
              hintText: "Password",
              obscureText: true,
            ),

            const SizedBox(
              height: 25,
            ),
            //confirmpassword textfiled
            MyTextfield(
              controller: confirmPasswordController,
              hintText: "Confirm password",
              obscureText: true,
            ),

            const SizedBox(
              height: 25,
            ),
            //sign up button
            MyButton(
              text: "Sign Up",
              onTap: () {},
            ),

            const SizedBox(
              height: 25,
            ),
            //already have an account? Login
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "already have an account?",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                const SizedBox(
                  width: 4,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Login Now",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}




// import 'package:flutter/material.dart';
// import 'package:food_delivery_app/services/auth/auth_service.dart';
// import '../components/my_button.dart';
// import '../components/my_textfield.dart';

// class RegisterPage extends StatefulWidget {
//   final void Function()? onTap;

//   const RegisterPage({super.key, required this.onTap});

//   @override
//   State<RegisterPage> createState() => _RegisterPageState();
// }

// class _RegisterPageState extends State<RegisterPage> {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   final TextEditingController confirmPasswordController =
//       TextEditingController();

//   void register() async {
//     final _authService = AuthService();

//     if (passwordController.text == confirmPasswordController.text) {
//       try {
//         await _authService.signInWithEmailPassword(
//           // Use register method
//           emailController.text,
//           passwordController.text,
//         );
//       } catch (e) {
//         if (!mounted) return;
//         showDialog(
//           context: context,
//           builder: (context) => AlertDialog(
//             title: Text(
//               'Error',
//               style: TextStyle(color: Colors.red),
//             ),
//             content: Text(e.toString()),
//           ),
//         );
//       }
//     } else {
//       if (!mounted) return;
//       showDialog(
//         context: context,
//         builder: (context) => AlertDialog(
//           title: Text("Passwords do not match!"),
//         ),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Theme.of(context).colorScheme.surface,
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(
//                 Icons.lock_open_rounded,
//                 size: 100,
//                 color: Theme.of(context).colorScheme.inversePrimary,
//               ),
//               const SizedBox(height: 25),
//               Text(
//                 "Let's create an account for you",
//                 style: TextStyle(
//                   fontSize: 16,
//                   color: Theme.of(context).colorScheme.inversePrimary,
//                 ),
//               ),
//               const SizedBox(height: 25),
//               MyTextfield(
//                 controller: emailController,
//                 hintText: "Email",
//                 obscureText: false,
//               ),
//               const SizedBox(height: 25),
//               MyTextfield(
//                 controller: passwordController,
//                 hintText: "Password",
//                 obscureText: true,
//               ),
//               const SizedBox(height: 25),
//               MyTextfield(
//                 controller: confirmPasswordController,
//                 hintText: "Confirm password",
//                 obscureText: true,
//               ),
//               const SizedBox(height: 25),
//               MyButton(
//                 text: "Sign Up",
//                 onTap: register, // Call the register function here
//               ),
//               const SizedBox(height: 25),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     "Already have an account?",
//                     style: TextStyle(
//                         color: Theme.of(context).colorScheme.inversePrimary),
//                   ),
//                   const SizedBox(width: 4),
//                   GestureDetector(
//                     onTap: widget.onTap,
//                     child: Text(
//                       "Login Now",
//                       style: TextStyle(
//                         color: Theme.of(context).colorScheme.inversePrimary,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
