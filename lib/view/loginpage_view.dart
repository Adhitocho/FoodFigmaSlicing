import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicing_test/view/signinpage_view.dart';
import 'package:slicing_test/view/signuppage_view.dart';

class LoginPageView extends StatelessWidget {
  const LoginPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 90),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Image(image: AssetImage('assets/hamburger.png')),
                    ), // Hamburger
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: OutlinedButton(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_context) => const SignInPageView())),
                        style: ButtonStyle(
                            fixedSize: MaterialStateProperty.resolveWith(
                                (states) => Size(300.0, 40.0)),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xffD35400)),
                            shape: MaterialStateProperty.all(
                                const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(30.0))))),
                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ), // Sign In Button
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: OutlinedButton(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_context) => const SignUpPageView())),
                        style: ButtonStyle(
                            fixedSize: MaterialStateProperty.resolveWith(
                                (states) => Size(300.0, 40.0)),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xffECF0F1)),
                            shape: MaterialStateProperty.all(
                                const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(30.0))))),
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ), // Sign Up Button
                  ],
                ),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 30, 10),
                      child:
                          const Image(image: AssetImage('assets/textline.png')),
                    ), // Text Line
                    Row(
                      children: const [
                        Image(
                            image: AssetImage(
                                'assets/gambarkiribawah.png')), // Gbr Makanan
                        Padding(
                          padding: EdgeInsets.fromLTRB(61, 0, 0, 72),
                          child: Image(
                              image: AssetImage('assets/logofbdangplus.png')),
                        ), // Logos
                      ],
                    ),
                  ],
                ),
              ), // Bottom
            ],
          ),
        ),
      ),
    );
  }
}
