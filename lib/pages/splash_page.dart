import 'dart:async';

import 'package:flutter/material.dart';
import 'package:realapp/pages/home_page.dart';
import 'package:realapp/pages/signin_page.dart';
class SplashPage extends StatefulWidget {

  static String id = 'splash_page';

  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  _initTimer(){
    Timer(const Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, SignInPage.id);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Stack(
          children: [
            const Padding(padding: EdgeInsets.all(20)),
            Center(
              child: Image.asset('assets/images/AmazonLogo1.png',height: 100,width: 100,),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Center(

                    child: Text('From Amazon', style: TextStyle(color: Colors. black87, fontSize: 17),),
                  )
                ],
              ) ,
            )

          ],
        )
    );
  }
}
