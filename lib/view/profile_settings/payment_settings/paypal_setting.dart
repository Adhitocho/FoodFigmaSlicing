import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicing_test/view/profile_settings/payment_setting.dart';

class PaypalSetting extends StatefulWidget {
  const PaypalSetting({Key? key}) : super(key: key);

  @override
  _PaypalSettingState createState() => _PaypalSettingState();
}

class _PaypalSettingState extends State<PaypalSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Column(
              children: [
                TextButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_context) => PaymentSetting())),
                  child: Container(
                    width: 350,
                    child: Stack(
                      children: [
                        Center(
                          child: Text(
                            'Paypal',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.arrow_back_ios_rounded,
                          size: 20,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ), // Header Add Credit Card
                SizedBox(
                  height: 30,
                ),
                Container(
                    width: 350,
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Image(
                                image: AssetImage('assets/logopaypal.png'))),
                        Expanded(
                            flex: 3,
                            child: Text(
                              'Paypal',
                              textAlign: TextAlign.left,
                              style: TextStyle(color: Colors.black),
                            )),
                        Expanded(
                            flex: 4,
                            child: Text('Adhitocho@gmail.com',
                                textAlign: TextAlign.right,
                                style: TextStyle(color: Colors.black))),
                        Expanded(
                            flex: 1,
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 20,
                              color: Colors.black,
                            )),
                      ],
                    )),
                SizedBox(
                  height: 420,
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      fixedSize: MaterialStateProperty.resolveWith(
                              (states) => const Size(300.0, 40.0)),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xffD35400)),
                      shape: MaterialStateProperty.all(
                          const RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(30.0))))),
                  child: const Text(
                    'Make as Default',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      fixedSize: MaterialStateProperty.resolveWith(
                              (states) => const Size(300.0, 40.0)),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xffECF0F1)),
                      shape: MaterialStateProperty.all(
                          const RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(30.0))))),
                  child: const Text(
                    'Remove',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ), // Change Password
    );
  }
}
