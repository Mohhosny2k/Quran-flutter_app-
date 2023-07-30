import 'package:flutter/material.dart';
import 'package:yt_quran/index.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool first = true;
  @override
  void didChangeDependencies() async {
    if (first) {
      first = false;
      await Future.delayed(Duration(seconds: 3), () async {
      //  Navigator.pushNamed(context, 'boarding');
      Navigator.push(context, MaterialPageRoute(builder: (_)=>IndexPage()));
      });
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.green,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Image.asset(
                  'assets/images/quran.png',
                  height: 100,
                ),
                const SizedBox(height: 5,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'المُصحف الشَّريف',
                      //  textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 32,
                          color: Colors.white,
                         ),
                    ),
                  ],
                ),
       
     
        ],
      ),
    );
  }
}
