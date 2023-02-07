import 'package:flutter/material.dart';
import 'package:introproj/chat_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:Form(
          child: ListView(
            children: [
              Column(
                children: [
                  SizedBox(height: 150,),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("Welcome Back", style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("login with your Email and password\n       or continue with social media" ,style: TextStyle(
                          color: Colors.grey[500]
                      ),),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                    child: TextFormField(


                        cursorColor: Colors.grey[500],
                        decoration: InputDecoration(
                            hintText: "enter your email",
                            hintStyle: TextStyle(
                                color: Colors.grey
                            ),
                            border:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),),

                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Color(0xFFB3AFF3),width: 2),

                            ),
                            suffixIcon: Icon(Icons.email,color: Color(0xFFB3AFF3),),
                            label: Text("Email",style: TextStyle(color: Color(0xFFB3AFF3)),)
                        )

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                    child: TextFormField(
                        obscureText: true,
                        cursorColor: Colors.grey[500],
                        decoration: InputDecoration(
                            hintText: "Enter your password",
                            hintStyle: TextStyle(
                                color: Colors.grey
                            ),
                            border:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),),

                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Color(0xFFB3AFF3),width: 2),

                            ),
                            suffixIcon: Icon(Icons.password,color: Color(0xFFB3AFF3),),
                            label: Text("Password",style: TextStyle(color: Color(0xFFB3AFF3)),)
                        )

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20, left: 140),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account? ", style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[500],
                        ),),
                        const Text("Sign Up", style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFFB3AFF3),
                        ),)
                      ],
                    ),
                  ),
                  ElevatedButton(

                      style: ButtonStyle(
                          padding: MaterialStateProperty.all(EdgeInsets.only(top :20, left: 110 , right: 110 , bottom: 20)),
                          backgroundColor: MaterialStateProperty.all(Color(0xFFB3AFF3)) ,
                          shape: MaterialStateProperty.all(

                              RoundedRectangleBorder(
                                  borderRadius:BorderRadius.all(Radius.circular(30))
                              )
                          ) ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatPage()));
                      },
                      child: Text(
                        "LOGIN",
                        style: TextStyle(color: Colors.white),
                      )
                  )
                ],
              ),
            ],
          ),
        )
    );
  }
}
