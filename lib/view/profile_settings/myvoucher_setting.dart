import 'package:flutter/material.dart';

class MyVoucherSetting extends StatefulWidget {
  const MyVoucherSetting({Key? key}) : super(key: key);

  @override
  _MyVoucherSettingState createState() => _MyVoucherSettingState();
}

class _MyVoucherSettingState extends State<MyVoucherSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Column(
              children: [
                Container(
                  width: 350,
                  child: Stack(
                    children: [
                      Center(
                        child: Text(
                          'My Voucher',
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
                      ),
                    ],
                  ),
                ), // Header My Voucher
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: 350,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              width: 90,
                              height: 90,
                              decoration: BoxDecoration(
                                color: Color(0xffECF0F1),
                                borderRadius: BorderRadius.circular(15),
                              ),
                                child: Image(image: AssetImage('assets/voucherimg.png'))
                            ),
                          ), // Gambar Voucher
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Sale Off 30% for Pizza',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ), // Nama Diskon
                                  SizedBox(height: 8,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(Icons.access_time_rounded, size: 20,),
                                      SizedBox(width: 5,),
                                      Text('Apr 10 - Apr 30')
                                    ],
                                  ), // Masa Waktu Diskon
                                  SizedBox(height: 8,),
                                  Text(
                                    '11 days left',
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.red,
                                        fontWeight: FontWeight.w500),
                                  ), // Harga
                                ],
                              ),
                            ),
                          ), // Keterangan Voucher
                          Expanded(
                            flex: 1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.orange,
                                      shape: BoxShape.circle,),
                                  child: Icon(Icons.check, color: Colors.white,),
                                ),
                              ],
                            ),
                          ) // Check Button
                        ],
                      ), // Voucher
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                                width: 90,
                                height: 90,
                                decoration: BoxDecoration(
                                  color: Color(0xffECF0F1),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Image(image: AssetImage('assets/voucherimg.png'))
                            ),
                          ), // Gambar Voucher
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Sale Off 30% for Pizza',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ), // Nama Diskon
                                  SizedBox(height: 8,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(Icons.access_time_rounded, size: 20,),
                                      SizedBox(width: 5,),
                                      Text('Apr 10 - Apr 30')
                                    ],
                                  ), // Masa Waktu Diskon
                                  SizedBox(height: 8,),
                                  Text(
                                    '11 days left',
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.red,
                                        fontWeight: FontWeight.w500),
                                  ), // Harga
                                ],
                              ),
                            ),
                          ), // Keterangan Voucher
                          Expanded(
                            flex: 1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Color(0xffECF0F1),
                                    shape: BoxShape.circle,),
                                ),
                              ],
                            ),
                          ) // Check Button
                        ],
                      ), // Voucher
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                                width: 90,
                                height: 90,
                                decoration: BoxDecoration(
                                  color: Color(0xffECF0F1),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Image(image: AssetImage('assets/voucherimg.png'))
                            ),
                          ), // Gambar Voucher
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Sale Off 30% for Pizza',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ), // Nama Diskon
                                  SizedBox(height: 8,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(Icons.access_time_rounded, size: 20,),
                                      SizedBox(width: 5,),
                                      Text('Apr 10 - Apr 30')
                                    ],
                                  ), // Masa Waktu Diskon
                                  SizedBox(height: 8,),
                                  Text(
                                    '11 days left',
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.red,
                                        fontWeight: FontWeight.w500),
                                  ), // Harga
                                ],
                              ),
                            ),
                          ), // Keterangan Voucher
                          Expanded(
                            flex: 1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Color(0xffECF0F1),
                                    shape: BoxShape.circle,),
                                ),
                              ],
                            ),
                          ) // Check Button
                        ],
                      ), // Voucher
                    ],
                  ),
                ), // Orders
                SizedBox(
                  height: 220,
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
                    'Send',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ), // Order Page,
    );
  }
}