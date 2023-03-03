import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  static String id= 'home_page';

  const HomePage({Key? key}) : super(key: key);


  @override
  State<HomePage> createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Amazon',style: TextStyle(fontSize: 40, fontFamily: 'Billabong'),),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Welcome to Amazon', style: TextStyle(fontSize: 25),),
      )
    );
  }
}
