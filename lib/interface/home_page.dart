import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const nameRoute = '/homepage';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(

      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: const Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height *0.2,
          child: Stack(
            children: [
              Container(
                height: size.height*0.2 -27,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xff010101),
                        Color(0xff4b4b4b)
                      ],
                    ),
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(36),
                      bottomRight: Radius.circular(36),
                    )
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 27),
                  padding: const EdgeInsets.symmetric(horizontal: 27),
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                        )
                      ]
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: "S e a r c h",
                        hintStyle: TextStyle(
                          color: Color(0xff696969),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

