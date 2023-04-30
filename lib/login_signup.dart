import 'package:firebase_core/firebase_core.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'login.dart';


class SignUp extends StatelessWidget {
  SignUp({super.key});

    final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();


  void dispose() {
    nameController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: /*Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),

      )*/
      Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'SignUp',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                        fontSize: 30),
                  )),

              Container(
                padding: const EdgeInsets.all(10),
                child: const TextField(
                  // controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: const TextField(
                  obscureText: true,
                  // controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: const TextField(
                  // controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Mobile Number',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: const TextField(
                  obscureText: true,
                  // controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: const TextField(
                  obscureText: true,
                  // controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Confirm Password',
                  ),
                ),
              ),
              Container(
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    child: const Text('Sign Up'),
                    onPressed: () {
                      // print(nameController.text);
                      // print(passwordController.text);
                    },
                  )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('Already have an Account ?'),
                  TextButton(
                    child: const Text(
                      'Login',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  const Login()), // return login
                      );
                    },
                  )
                ],
              ),

            ],
          )),
    );
  }
}




//
//
// class Login extends StatelessWidget {
//   Login({super.key});
//
//    final TextEditingController nameController = TextEditingController();
//    final TextEditingController passwordController = TextEditingController();
//
//
//   void dispose() {
//     nameController.dispose();
//     passwordController.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Login'),
//       ),
//       body: /*Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: const Text('Go back!'),
//         ),
//
//       )*/
//       Padding(
//           padding: const EdgeInsets.all(10),
//           child: ListView(
//             children: <Widget>[
//               Container(
//                   alignment: Alignment.center,
//                   padding: const EdgeInsets.all(10),
//                   child: const Text(
//                     'Login',
//                     style: TextStyle(
//                         color: Colors.blue,
//                         fontWeight: FontWeight.w500,
//                         fontSize: 30),
//                   )),
//
//               Container(
//                 padding: const EdgeInsets.all(10),
//                 child: const TextField(
//                   controller: nameController,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: 'User Name',
//                   ),
//                 ),
//               ),
//
//               Container(
//                 padding: const EdgeInsets.all(10),
//                 child: const TextField(
//                   obscureText: true,
//                    //controller: passwordController,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: 'Password',
//                   ),
//                 ),
//               ),
//
//               Container(
//                   height: 50,
//                   padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
//                   child: ElevatedButton(
//                     child: const Text('Login'),
//                     onPressed: () {
//                       print(nameController.text);
//                        print(passwordController.text);
//                       //FirebaseAuth.instance.signInWithEmailAndPassword(email: nameController.text.trim(), password: passwordController.text.trim());
//                       FirebaseAuth.instance.createUserWithEmailAndPassword(email: nameController.text.trim(), password: passwordController.text.trim());
//                     },
//                   )
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   const Text('Dont have an account ?'),
//                   TextButton(
//                     child: const Text(
//                       'Signup',
//                       style: TextStyle(fontSize: 20),
//                     ),
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) =>  SignUp()), // return login
//                       );
//                     },
//                   )
//                 ],
//               ),
//
//             ],
//           )),
//     );
//   }
// }
//
