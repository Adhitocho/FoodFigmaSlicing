import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicing_test/view/homepage_view.dart';

class SignUpPageView extends StatefulWidget {
  const SignUpPageView({Key? key}) : super(key: key);

  @override
  _SignUpPageViewState createState() => _SignUpPageViewState();
}

class _SignUpPageViewState extends State<SignUpPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 230),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 45.0),
                      child: Container(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                                fontSize: 23, fontWeight: FontWeight.bold),
                          )),
                    ), // Sign Up Text
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Container(
                        width: 300,
                        height: 40,
                        child: TextField(
                          decoration: InputDecoration(
                              fillColor: Color(0xffECF0F1),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40)),
                              labelText: 'Enter Username'),
                        ),
                      ),
                    ), // Username Box
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Container(
                        width: 300,
                        height: 40,
                        child: TextField(
                          decoration: InputDecoration(
                              fillColor: Color(0xffECF0F1),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40)),
                              labelText: 'Enter Password'),
                        ),
                      ),
                    ), // Password Box
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Container(
                        width: 300,
                        height: 40,
                        child: TextField(
                          decoration: InputDecoration(
                              fillColor: Color(0xffECF0F1),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40)),
                              labelText: 'Re-enter Password'),
                        ),
                      ),
                    ), // Re-enter Password Box
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: OutlinedButton(
                        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_context) => const HomePageView())),
                        style: ButtonStyle(
                            fixedSize: MaterialStateProperty.resolveWith(
                                (states) => const Size(300.0, 40.0)),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color(0xffD35400)),
                            shape: MaterialStateProperty.all(
                                const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(30.0))))),
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ), // Sign Up Button
                  ],
                ),
              ), // Sign In Form
              Padding(
                padding: const EdgeInsets.only(top: 123.9),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 30, 10),
                        child: Image(image: AssetImage('assets/textline.png')),
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
                ),
              ), // Bottom
            ],
          ),
        ),
      ),
    );
  }
}
