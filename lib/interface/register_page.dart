import 'package:flutter/material.dart';
import 'package:job_dreamer/interface/home_page.dart';

class RegisterPage extends StatelessWidget {
  static const nameRoute = '/registerpage';

  const RegisterPage({Key? key}) : super(key: key);

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
                height: 25,
              ),
              Form(
                child: Container(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    children: [
                      TextFormField(
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                        decoration: const InputDecoration(
                          labelStyle: TextStyle(
                            color: Colors.black
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black
                            )
                          ),
                          labelText: "Email",
                          icon: Icon(Icons.people, color: Colors.black,),
                        ),
                      ),
                      TextFormField(
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                        decoration: const InputDecoration(
                          labelStyle: TextStyle(
                            color: Colors.black
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black
                            )
                          ),
                          labelText: "Username",
                          icon: Icon(Icons.people, color: Colors.black,),
                        ),
                      ),
                      TextFormField(
                        obscureText: true,
                        style: const TextStyle(
                          color: Colors.black
                        ),
                        decoration: const InputDecoration(
                          labelStyle: TextStyle(
                            color: Colors.black,
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black
                            )
                          ),
                          labelText: "Password",
                          icon: Icon(Icons.lock_outline_rounded, color: Colors.black,)
                        ),
                      ),
                      TextFormField(
                        obscureText: true,
                        style: const TextStyle(
                          color: Colors.black
                        ),
                        decoration: const InputDecoration(
                          labelStyle: TextStyle(
                            color: Colors.black,
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black
                            )
                          ),
                          labelText: "Confirm Password",
                          icon: Icon(Icons.lock_outline_rounded, color: Colors.black,)
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
                           "SIGN UP"
                         ),
                         style: TextButton.styleFrom(
                           primary: Colors.white,
                           backgroundColor: Colors.black,
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(18.0),
                           ),
                         ),
                       ),
                     ),
                      const SizedBox(
                        height: 75,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Already have an account ?"
                          ),
                          TextButton(
                            onPressed: (){
                              Navigator.of(context).pop();
                            },
                            style: TextButton.styleFrom(
                              onSurface: Colors.white,
                              primary: Colors.amber
                            ),
                            child: const Text(
                              "SIGN IN",
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
