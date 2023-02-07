import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:introproj/login_page.dart';

import 'chat_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 700,
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: "Search",
              body: "Create your own ecommerce shop",
              image: Padding(
                padding: const EdgeInsets.only(top: 120, left: 20, right: 20),
                child: Image(image:AssetImage("assets/undraw_Online_shopping_re_k1sv.png")),
              )

            ),
            PageViewModel(
              title: "Think",
              body: "Create your own ecommerce shop new",
              image: Padding(
                padding: const EdgeInsets.only(top: 120, left: 20, right: 20),
                child: Image(image:AssetImage("assets/undraw_shopping_app_flsj.png")),
              )

            ),
            PageViewModel(
              title: "Get",
              body: "Get your own ecommerce shop",
              image: Padding(
                padding: const EdgeInsets.only(top: 120, left: 20, right: 20),
                child: Image(image:AssetImage("assets/undraw_Shopping_re_hdd9.png")),
              )

            ),
          ],
          done: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
                color: Color(0xFFB3AFF3),
              borderRadius: BorderRadius.circular(15)
            ),
            child: Icon(Icons.arrow_forward, color: Colors.white,),
          ),

          dotsDecorator: DotsDecorator(
            activeColor: Color(0xFFB3AFF3),
            color: Colors.grey,
            size: Size.square(5),
            activeSize: Size(15, 5),
            spacing: EdgeInsets.symmetric(horizontal: 3),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),

          ),
          showBackButton: false,
          showNextButton: false,
          onDone: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
          },
        ),
      ),

    );
  }
}
