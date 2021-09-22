import 'package:flutter/material.dart';
import 'package:slicing_test/view/homepage_view.dart';
import 'package:slicing_test/view/profile_settings/payment_settings/addpayment.dart';
import 'package:slicing_test/view/profile_settings/payment_settings/paypal_setting.dart';

class PaymentSetting extends StatefulWidget {
  const PaymentSetting({Key? key}) : super(key: key);

  @override
  _PaymentSettingState createState() => _PaymentSettingState();
}

class _PaymentSettingState extends State<PaymentSetting> {
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
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (_context) => HomePageView())),
                  child: Container(
                    width: 350,
                    child: Stack(
                      children: [
                        Center(
                          child: Text(
                            'Payment Settings',
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
                ), // Header Payment Settings
                SizedBox(
                  height: 30,
                ),
                TextButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_context) => PaypalSetting())),
                  child: Container(
                      width: 350,
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Image(
                                  image: AssetImage('assets/logopaypal.png'))),
                          Expanded(
                              flex: 4,
                              child: Text(
                                'Paypal',
                                textAlign: TextAlign.left,
                                style: TextStyle(color: Colors.black),
                              )),
                          Expanded(
                              flex: 4,
                              child: Text('******cho@gmail.com',
                                  textAlign: TextAlign.left,
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
                ), // Paypal Setting
                SizedBox(
                  height: 20,
                ),
                Container(
                    width: 350,
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child:
                                Image(image: AssetImage('assets/logocc.png'))),
                        Expanded(
                            flex: 5,
                            child: Text(
                              'Credit Card',
                              textAlign: TextAlign.left,
                            )),
                        Expanded(
                            flex: 4,
                            child: Text(
                              '4444 **** **** 6739',
                              textAlign: TextAlign.left,
                            )),
                        Expanded(
                            flex: 1,
                            child: Icon(Icons.arrow_forward_ios_rounded,
                                size: 20)),
                      ],
                    )), // Credit Card Setting
                SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (_context) => AddPayment())),
                  child: Container(
                      width: 350,
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Icon(
                                Icons.credit_card,
                                color: Colors.black,
                              )),
                          Expanded(
                              flex: 9,
                              child: Text(
                                'Add new payment method',
                                textAlign: TextAlign.left,
                                style: TextStyle(color: Colors.black),
                              )),
                          Expanded(
                              flex: 1,
                              child: Icon(
                                Icons.add_box_rounded,
                                size: 30,
                                color: Colors.grey,
                              )),
                        ],
                      )),
                ), // Credit Card Setting
              ],
            ),
          ),
        ),
      ), // Change Password
    );
  }
}
