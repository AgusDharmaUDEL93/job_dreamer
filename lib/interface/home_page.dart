import 'package:flutter/material.dart';
import 'package:job_dreamer/constant/color.dart';

class HomePage extends StatelessWidget {
  static const nameRoute = '/homepage';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(

      ),
      appBar: AppBar(
        backgroundColor: primaryColor,
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
        Container(
          height: size.height * 0.2,
          child: Stack(
            children: [
              Container(
                height: size.height * 0.2 - 27,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      primaryColor,
                      secondaryColor
                    ]
                  ),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36)
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
                  child: TextFormField(
                    decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.search),
                      suffixIconColor: textHint,
                      hintText: "S e a r c h",
                      hintStyle: TextStyle(
                        color: textHint
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none
                    ),
                  ),
                  height: 45,
                  decoration: BoxDecoration(
                    color: netralColor,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50
                      )
                    ]
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