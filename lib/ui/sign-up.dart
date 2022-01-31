import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'app_routh_path.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passController = TextEditingController();
    FirebaseAuth auth = FirebaseAuth.instance;
    return Scaffold(
      appBar: AppBar(title: Text('Sign Up Page')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('Sign Up Page Body'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  // hintText: 'User Name'
                  label: Text('Email/Full Name'),
                  prefixIcon: Icon(Icons.email), suffixIcon: Icon(Icons.search),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: passController,
                obscureText: true,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Password'),
                    suffixIcon: Icon(Icons.visibility_off)),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                print(emailController.text);
                print(passController.text);
                try {
                  final User = await auth.createUserWithEmailAndPassword(
                      email: emailController.text.toString(),
                      password: passController.text.toString().trim());
                  if (User != null) {
                    Navigator.pushNamed(context, AppRoutesPath.MyHomePage);
                  }
                } on FirebaseAuthException catch (error) {
                   print(error.message);
                      final snackBar =
                          SnackBar(content: Text('${error.message}'));

                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              },
              child: Text('Submit'),
            ),
            // SizedBox(height: 20.0),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: <Widget>[
            //     Flexible(
            //       child: TextField(
            //         decoration: InputDecoration(
            //             contentPadding: EdgeInsets.all(10),
            //             border: OutlineInputBorder(),
            //             label: Text('First Name')),
            //       ),
            //     ),
            //     SizedBox(
            //       width: 05.0,
            //     ),
            //     Flexible(
            //       child: TextField(
            //           decoration: InputDecoration(
            //               contentPadding: EdgeInsets.all(10),
            //               border: OutlineInputBorder(),
            //               label: Text('Middle Name'))),
            //     ),
            //     SizedBox(
            //       width: 05.0,
            //     ),
            //     Flexible(
            //       child: TextField(
            //           decoration: InputDecoration(
            //               contentPadding: EdgeInsets.all(10),
            //               border: OutlineInputBorder(),
            //               label: Text('Last Name'))),
            //     ),
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
