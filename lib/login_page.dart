import 'package:backimglogin/pallete.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroungImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(
              children: [
                Container(
                  height: 150,
                  child: Center(
                    child: Text(
                      'Foodybite',
                      style: kHeading,
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      Textinput(),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[600]?.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 20),
                            border: InputBorder.none,
                            hintText: ' Email',
                            prefixIcon: Icon(Icons.email, color: Colors.white,size: 30,),
                            hintStyle: kBodyText,
                          ),
                          style: kBodyText,
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class Textinput extends StatelessWidget {
  const Textinput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[600]?.withOpacity(0.5),
          borderRadius: BorderRadius.circular(16),
        ),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 20),
            border: InputBorder.none,
            hintText: ' Email',
            prefixIcon: Icon(Icons.email, color: Colors.white,size: 30,),
            hintStyle: kBodyText,
          ),
          style: kBodyText,
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
        ),
      ),
    );
  }
}

class BackgroungImage extends StatelessWidget {
  const BackgroungImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        colors: [Colors.black, Colors.black12],
        begin: Alignment.bottomCenter,
        end: Alignment.center
      ).createShader(bounds),blendMode: BlendMode.darken,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/new.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}