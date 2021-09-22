import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicing_test/view/profile_settings/payment_setting.dart';

class AddPayment extends StatefulWidget {
  const AddPayment({Key? key}) : super(key: key);

  @override
  _AddPaymentState createState() => _AddPaymentState();
}

class _AddPaymentState extends State<AddPayment> {
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
                            'Add Credit Card',
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
                Image(image: AssetImage('assets/creditcard.png')),
                SizedBox(
                  height: 20,
                ),
                Container(
                    width: 350,
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        SizedBox(height: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                flex: 2,
                                child: Text(
                                  'Bank Name',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 17),
                                )),
                            Expanded(
                                flex: 1,
                                child: Text(
                                  'Azraen Bank',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 17),
                                )),
                          ],
                        ), // Nama Bank
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                flex: 2,
                                child: Text(
                                  'Your Name',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 17),
                                )),
                            Expanded(
                                flex: 1,
                                child: Text(
                                  'Itoh',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 17),
                                )),
                          ],
                        ), // Nama Nasabah
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                flex: 1,
                                child: Text(
                                  'Card Number',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 17),
                                )),
                            Expanded(
                                flex: 1,
                                child: Text(
                                  '4444 3784 1380 6739',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 17),
                                )),
                          ],
                        ), // Nomor CC
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                flex: 2,
                                child: Text(
                                  'Expired Date',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 17),
                                )),
                            Expanded(
                                flex: 1,
                                child: Text(
                                  '02/22',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 17),
                                )),
                          ],
                        ), // Expired Date
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                flex: 2,
                                child: Text(
                                  'CVV',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 17),
                                )),
                            Expanded(
                                flex: 1,
                                child: Text(
                                  '877',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 17),
                                )),
                          ],
                        ), // CVV
                        SizedBox(height: 100,),
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
                            'Add',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ), // Change Password
    );
  }
}
