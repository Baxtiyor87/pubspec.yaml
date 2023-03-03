import 'package:flutter/material.dart';
import 'package:realapp/pages/signin_page.dart';

import 'home_page.dart';
class SignUpPage extends StatefulWidget {
  static const String id = 'signup_page';
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  _doSignUp(){
    String name = nameController.text;
    String email = emailController.text;
    String password = passwordController.text;

    if(email.isNotEmpty && password.isNotEmpty && name.isNotEmpty){
      Navigator.pushReplacementNamed(context, HomePage.id);
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Center(
          child: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                const Text('Amazon', style: TextStyle(fontSize: 45, fontFamily:'Billabong'),
                ),
                //Name
                Container(
                  margin: const EdgeInsets.only(left: 20,right: 20, top: 15),
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey[200],
                  ),
                  child:  TextField(
                    controller: nameController,
                    style: const TextStyle(fontSize: 16),
                    decoration: const InputDecoration(contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(borderSide:BorderSide(color: Colors.teal),
                      ),
                      hintText: 'Name',
                      hintStyle: TextStyle(color: Colors.grey),

                    ),
                  ),
                ),
                //Email
                Container(
                  margin: const EdgeInsets.only(left: 20,right: 20, top: 15),
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey[200],
                  ),
                  child:  TextField(
                    controller: emailController,
                    style: const TextStyle(fontSize: 16),
                    decoration: const InputDecoration(contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(borderSide:BorderSide(color: Colors.teal),
                      ),
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Colors.grey),

                    ),
                  ),
                ),
                //Password
                Container(
                  margin: const EdgeInsets.only(left: 20,right: 20, top: 15),
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey[200],
                  ),
                  child:  TextField(
                    controller: passwordController,
                    obscureText: true,
                    style: const TextStyle(fontSize: 16),
                    decoration: const InputDecoration(contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(borderSide:BorderSide(color: Colors.teal),
                      ),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.grey),

                    ),
                  ),
                ),
                //Log In
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20 , top: 15),
                  width: double.infinity,
                  height: 48,

                  child: ElevatedButton(onPressed: (){
                    _doSignUp();
                  },

                      child: const Text('Sign up', style: TextStyle(fontSize: 16),)),
                ),
                //  SignUp
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children:  [
                      const Text("Already have an account?", style: TextStyle(color: Colors.grey, fontSize: 16),),
                      const SizedBox(width: 10,),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushReplacementNamed(context, SignInPage.id);
                        },
                        child: const Text('Log in',style: TextStyle(color: Colors.black, fontSize: 16),),
                      ),

                    ],
                  ),
                )

              ],
            ),
          ),
        )
    );
  }
}
