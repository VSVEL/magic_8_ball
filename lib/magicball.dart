import 'dart:math';

import 'package:flutter/material.dart';

class Magicball extends StatefulWidget {
  const Magicball({Key? key}) : super(key: key);

  @override
  State<Magicball> createState() => _MagicballState();
}

class _MagicballState extends State<Magicball> {

  int imgNumber = 1;

  void changeImage(){
    setState(() {
      imgNumber = Random().nextInt(5)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueAccent.shade700,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey.shade700,
          title: const Text(
            'Ask me Anything',
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                  child:
                  TextButton(
                    child: Image.asset('images/ball$imgNumber.png'),
                    onPressed: (){
                      changeImage();
                    },
                  )
              )
            ],
          ),
        ),
      ),
    ) ;
  }
}
