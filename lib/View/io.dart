import 'dart:async';
import 'package:crypto/View/splash.dart';
import 'package:flutter/material.dart';

class IO extends StatefulWidget {
  const IO({Key? key}) : super(key: key);

  @override
  State<IO> createState() => _IOState();
}

class _IOState extends State<IO> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 4),
      () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Splash()));
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFBC700),
        body: Container(
          height: myHeight,
          width: myWidth,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: myHeight * 0.05),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(''),
                Text(
                  'IO Crypto',
                  style: TextStyle(
                      fontSize: 60,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Creat by',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(
                          width: myWidth * 0.02,
                        ),
                        Image.asset(
                          'assets/image/io.png',
                          height: myHeight * 0.03,
                          color: Colors.black,
                        )
                      ],
                    ),
                    SizedBox(
                      height: myHeight * 0.005,
                    ),
                    Image.asset(
                      'assets/image/loading1.gif',
                      height: myHeight * 0.015,
                      color: Colors.black,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
