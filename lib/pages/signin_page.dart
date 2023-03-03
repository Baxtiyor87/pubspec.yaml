import 'package:flutter/material.dart';
import 'package:realapp/pages/home_page.dart';
import 'package:realapp/pages/signup_page.dart';
import 'package:simple_animations/simple_animations.dart';


class SignInPage extends StatefulWidget {

  static const String id = 'signin_page';

  const SignInPage({Key? key}) : super(key: key);




  @override
  State<SignInPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SignInPage> with AnimationMixin{

  late Animation<double> size;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  _doLogin(){
    String email = emailController.text;
    String password = passwordController.text;

    if(email.isNotEmpty && password.isNotEmpty){
      Navigator.pushReplacementNamed(context, HomePage.id);
    }
  }

  @override
  void initState() {

    size = Tween(begin: 0.0, end: 120.0).animate(controller);

    // Start the animation playback
    controller.play();
    super.initState();
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
              SizedBox(
                width: size.value,
                height: size.value,
                child: const Text('Amazon', style: TextStyle(fontSize: 45, fontFamily:'Billabong'),
                )
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
                  _doLogin();
                },

                    child: const Text('Log In', style: TextStyle(fontSize: 16),)),
              ),
            //  SignUp
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children:  [
                    const Text("Don't have an account?", style: TextStyle(color: Colors.grey, fontSize: 16),),
                    const SizedBox(width: 10,),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushReplacementNamed(context, SignUpPage.id);
                      },
                      child: const Text('Sign Up',style: TextStyle(color: Colors.black, fontSize: 16),),
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
