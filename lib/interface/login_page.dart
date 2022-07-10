import 'package:flutter/material.dart';
import 'package:job_dreamer/constant/color.dart';
import 'package:job_dreamer/interface/home_page.dart';
import 'package:job_dreamer/interface/register_page.dart';

class LoginPage extends StatelessWidget {
  static const nameRoute = '/loginpage';
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: Image.asset('assets/img/Logo Mockup.png'),
                width: 100,
                height: 100,
              ),
              const SizedBox(
                height: 15,
              ),
              Form(
                child: Container(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    children: [
                      TextFormField(
                        style: TextStyle(
                          color: primaryColor,
                        ),
                        decoration: InputDecoration(
                          labelStyle: TextStyle(
                            color: primaryColor
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: primaryColor
                            )
                          ),
                          labelText: "Username",
                          icon: Icon(Icons.people, color: primaryColor,),
                        ),
                      ),
                      TextFormField(
                        obscureText: true,
                        style: TextStyle(
                          color: primaryColor
                        ),
                        decoration: InputDecoration(
                          labelStyle: TextStyle(
                            color: primaryColor,
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: primaryColor
                            )
                          ),
                          labelText: "Password",
                          icon: Icon(Icons.lock_outline_rounded, color: primaryColor,)
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                     SizedBox(
                       width: 193,
                       height: 34,
                       child: TextButton(
                         onPressed: (){
                           Navigator.of(context).pushReplacementNamed(HomePage.nameRoute);
                         },
                         child: const Text(
                           "Sign In"
                         ),
                         style: TextButton.styleFrom(
                           primary: netralColor,
                           backgroundColor: primaryColor,
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(18.0),
                           ),
                         ),
                       ),
                     ),
                      const SizedBox(
                        height: 100,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don't have account ?"
                          ),
                          TextButton(
                            onPressed: (){
                              Navigator.of(context).pushNamed(RegisterPage.nameRoute);
                            },
                            style: TextButton.styleFrom(
                              onSurface: netralColor,
                              primary: alternativeColor
                            ),
                            child: const Text(
                              "Sign Up",
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
