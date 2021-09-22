import 'package:flutter/material.dart';
import 'package:slicing_test/view/homepage_view.dart';

class ChangePasswordSetting extends StatefulWidget {
  const ChangePasswordSetting({Key? key}) : super(key: key);

  @override
  _ChangePasswordSettingState createState() => _ChangePasswordSettingState();
}

class _ChangePasswordSettingState extends State<ChangePasswordSetting> {
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
                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_context) => HomePageView())),
                  child: Container(
                    width: 350,
                    child: Stack(
                      children: [
                        Center(
                          child: Text(
                            'Change Password',
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
                ), // Header Change Password
                SizedBox(
                  height: 70,
                ),
                Container(
                    width: 350,
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Enter Old Password',
                      textAlign: TextAlign.left,
                    )), // Enter Old Password
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 350,
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Color(0xffECF0F1),
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40)),
                        labelText: 'Old Password'),
                  ),
                ), // Old Pass Text Field
                SizedBox(
                  height: 20,
                ),
                Container(
                    width: 350,
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Enter New Password',
                      textAlign: TextAlign.left,
                    )), // Enter New Password
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 350,
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Color(0xffECF0F1),
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40)),
                        labelText: 'New Password'),
                  ),
                ), // New Pass Text Field
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 350,
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Color(0xffECF0F1),
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40)),
                        labelText: 'Re-enter New Password'),
                  ),
                ), // Re-enter New Pass Text Field
                SizedBox(
                  height: 250,
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
                    'Save',
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
      ), // Change Password
    );
  }
}
