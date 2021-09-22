import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:slicing_test/view/profile_settings/changepassword_setting.dart';
import 'package:slicing_test/view/profile_settings/myvoucher_setting.dart';
import 'package:slicing_test/view/profile_settings/payment_setting.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  _HomePageViewState createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final CarouselController _carController = CarouselController();

    final List<Widget> _kategoriSlide = [
      Container(
        width: 80,
        height: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 70,
              height: 70,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xffECF0F1),
                borderRadius: BorderRadius.circular(20),
                image:
                    DecorationImage(image: AssetImage('assets/coffeecup.png')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 7.0),
              child: Text('Drink', style: TextStyle(fontSize: 18)),
            )
          ],
        ),
      ),
      Container(
        width: 80,
        height: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 70,
              height: 70,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xffD35400),
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(image: AssetImage('assets/burger.png')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 7.0),
              child: Text('Food', style: TextStyle(fontSize: 18)),
            )
          ],
        ),
      ),
      Container(
        width: 80,
        height: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 70,
              height: 70,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xffECF0F1),
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage('assets/pieceofcake.png')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 7.0),
              child: Text('Cake', style: TextStyle(fontSize: 18)),
            )
          ],
        ),
      ),
      Container(
        width: 80,
        height: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 70,
              height: 70,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xffECF0F1),
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage('assets/potatochips.png')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 7.0),
              child: Text('Snack', style: TextStyle(fontSize: 18)),
            )
          ],
        ),
      ),
    ]; // Slider Kategori

    final List<Widget> _menuSlide = [
      Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Color(0xff3498DB).withOpacity(0.3),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: const [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
              child: Text(
                'BURGERS',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.white),
              ),
            ), // Teks
            Image(image: AssetImage('assets/menu_burger.png')), // Gambar
          ],
        ),
      ),
      Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Color(0xff9B59B6).withOpacity(0.3),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: const [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
              child: Text(
                'PIZZA',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.white),
              ),
            ), // Teks
            Image(image: AssetImage('assets/menu_pizza.png')), // Gambar
          ],
        ),
      ),
      Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Color(0xff3498DB).withOpacity(0.3),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: const [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
              child: Text(
                'BBQ',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.white),
              ),
            ), // Teks
            Image(image: AssetImage('assets/menu_bbq.png')), // Gambar
          ],
        ),
      ),
    ]; // Slider Menu

    TextStyle optionStyle =
        TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
    List<Widget> _widgetOptions = <Widget>[
      SafeArea(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
        child: Column(
          children: [
            Container(
              height: 60,
              child: TextField(
                decoration: InputDecoration(
                    fillColor: Color(0xffECF0F1),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40)),
                    prefixIcon: Icon(Icons.search),
                    labelText: 'Search',
                    labelStyle: TextStyle(fontSize: 20)),
              ),
            ), // Search Bar
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: const [
                    Icon(Icons.add_location),
                    Text(
                      'Bintaro, Jakarta Selatan',
                      style: TextStyle(fontSize: 17),
                    )
                  ],
                ),
              ),
            ), // Alamat
            Container(
              width: 400,
              height: 100,
              margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: CarouselSlider(
                  items: _kategoriSlide,
                  carouselController: _carController,
                  options: CarouselOptions(
                    autoPlay: false,
                    enableInfiniteScroll: false,
                    viewportFraction: 0.3,
                    pageSnapping: false,
                  )),
            ), // Kategori Slide
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Expanded(
                    flex: 5,
                    child: Text(
                      'Food Menu',
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text('View all', style: TextStyle(fontSize: 15)),
                  ),
                ],
              ),
            ), // Teks Food Menu dan View all
            Container(
              width: 400,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xff3498DB).withOpacity(0.3),
                            borderRadius: BorderRadius.circular(15),
                            shape: BoxShape.rectangle,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Padding(
                                padding: EdgeInsets.fromLTRB(10, 7, 0, 0),
                                child: Text(
                                  'BURGERS',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                child: Image(
                                  image: AssetImage('assets/menu_burger.png'),
                                  width: 75,
                                  height: 75,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color(0xff9B59B6).withOpacity(0.3),
                              borderRadius: BorderRadius.circular(15),
                              shape: BoxShape.rectangle,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(10, 7, 0, 0),
                                  child: Text(
                                    'PIZZA',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                  child: Image(
                                    image: AssetImage('assets/menu_pizza.png'),
                                    width: 75,
                                    height: 75,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color(0xff3498DB).withOpacity(0.3),
                              borderRadius: BorderRadius.circular(15),
                              shape: BoxShape.rectangle,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(10, 7, 0, 0),
                                  child: Text(
                                    'BBQ',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                  child: Image(
                                    image: AssetImage('assets/menu_bbq.png'),
                                    width: 75,
                                    height: 75,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), // Burgers, Pizza, BBQ
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xff9B59B6).withOpacity(0.3),
                            borderRadius: BorderRadius.circular(15),
                            shape: BoxShape.rectangle,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Padding(
                                padding: EdgeInsets.fromLTRB(10, 7, 0, 0),
                                child: Text(
                                  'FRUIT',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                child: Image(
                                  image: AssetImage('assets/menu_fruit.png'),
                                  width: 75,
                                  height: 75,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color(0xff3498DB).withOpacity(0.3),
                              borderRadius: BorderRadius.circular(15),
                              shape: BoxShape.rectangle,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(10, 7, 0, 0),
                                  child: Text(
                                    'SUSHI',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                  child: Image(
                                    image: AssetImage('assets/menu_sushi.png'),
                                    width: 75,
                                    height: 75,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color(0xff9B59B6).withOpacity(0.3),
                              borderRadius: BorderRadius.circular(15),
                              shape: BoxShape.rectangle,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(10, 7, 0, 0),
                                  child: Text(
                                    'NOODLE',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                  child: Image(
                                    image: AssetImage('assets/menu_noodle.png'),
                                    width: 75,
                                    height: 75,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), // Fruit, Sushi, Noodle
                ],
              ),
            ), // Menu Slide
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Expanded(
                    flex: 5,
                    child: Text(
                      'Near Me',
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text('View all', style: TextStyle(fontSize: 15)),
                  ),
                ],
              ),
            ), // Teks Near Me dan View all
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image(
                      image: AssetImage('assets/dapurijah.png'),
                      width: 100,
                      height: 100,
                    ),
                  ), // Thumbnail Resto
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dapur Ijah Restaurant',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ), // Nama Resto
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(Icons.add_location),
                              Text(
                                'Bintaro, Jakarta Selatan',
                                style: TextStyle(fontSize: 13),
                              )
                            ],
                          ),
                        ), // Alamat Resto
                        Padding(
                          padding: const EdgeInsets.fromLTRB(3, 5, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(
                                Icons.access_time_sharp,
                                size: 19,
                              ),
                              Text(
                                '3 min-1.1 km',
                                style: TextStyle(fontSize: 13),
                              )
                            ],
                          ),
                        ), // Waktu dan Jarak
                        Padding(
                          padding: const EdgeInsets.fromLTRB(3, 5, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(
                                Icons.star,
                                size: 17,
                              ),
                              Icon(
                                Icons.star,
                                size: 17,
                              ),
                              Icon(
                                Icons.star,
                                size: 17,
                              ),
                              Icon(
                                Icons.star,
                                size: 17,
                              ),
                              Icon(
                                Icons.star,
                                size: 17,
                              ),
                            ],
                          ),
                        ), // Stars
                      ],
                    ),
                  ), // Keterangan Resto
                ],
              ),
            ), //Near Me Menu
          ],
        ),
      )), // Home Page
      SafeArea(
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
                        'Food Review',
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
              ), // Header Food Review
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
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image(
                              image: AssetImage('assets/dapurijah.png'),
                              width: 80,
                              height: 80,
                            ),
                          ),
                        ), // Gambar Makanan
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Dogmie Jagong Tutung',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ), // Nama Makanan
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: const [
                                          Icon(Icons.thumb_up_outlined),
                                          Padding(
                                            padding: EdgeInsets.only(left: 5.0),
                                            child: Text(
                                              '999+',
                                              style: TextStyle(fontSize: 13),
                                            ),
                                          )
                                        ],
                                      ),
                                      Text(
                                        ' | ',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Row(
                                        children: const [
                                          Icon(Icons.thumb_down_outlined),
                                          Padding(
                                            padding: EdgeInsets.only(left: 5.0),
                                            child: Text(
                                              '999+',
                                              style: TextStyle(fontSize: 13),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ), // Rating
                                Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(3, 5, 0, 0),
                                    child: Text(
                                      r'$99.99',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold),
                                    )), // Harga
                              ],
                            ),
                          ),
                        ), // Keterangan Makanan
                        Expanded(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    shape: BoxShape.circle),
                                child: Icon(Icons.thumb_up_outlined),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Icon(Icons.thumb_down_outlined),
                            ],
                          ),
                        ) // Rate Button
                      ],
                    ), // Order
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image(
                              image: AssetImage('assets/dapurijah.png'),
                              width: 80,
                              height: 80,
                            ),
                          ),
                        ), // Gambar Makanan
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Dogmie Jagong Tutung',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ), // Nama Makanan
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: const [
                                          Icon(Icons.thumb_up_outlined),
                                          Padding(
                                            padding: EdgeInsets.only(left: 5.0),
                                            child: Text(
                                              '999+',
                                              style: TextStyle(fontSize: 13),
                                            ),
                                          )
                                        ],
                                      ),
                                      Text(
                                        ' | ',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Row(
                                        children: const [
                                          Icon(Icons.thumb_down_outlined),
                                          Padding(
                                            padding: EdgeInsets.only(left: 5.0),
                                            child: Text(
                                              '999+',
                                              style: TextStyle(fontSize: 13),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ), // Rating
                                Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(3, 5, 0, 0),
                                    child: Text(
                                      r'$99.99',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold),
                                    )), // Harga
                              ],
                            ),
                          ),
                        ), // Keterangan Makanan
                        Expanded(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.thumb_up_outlined),
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    shape: BoxShape.circle),
                                child: Icon(Icons.thumb_down_outlined),
                              ),
                            ],
                          ),
                        ) // Rate Button
                      ],
                    ), // Order
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image(
                              image: AssetImage('assets/dapurijah.png'),
                              width: 80,
                              height: 80,
                            ),
                          ),
                        ), // Gambar Makanan
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Dogmie Jagong Tutung',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ), // Nama Makanan
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: const [
                                          Icon(Icons.thumb_up_outlined),
                                          Padding(
                                            padding: EdgeInsets.only(left: 5.0),
                                            child: Text(
                                              '999+',
                                              style: TextStyle(fontSize: 13),
                                            ),
                                          )
                                        ],
                                      ),
                                      Text(
                                        ' | ',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Row(
                                        children: const [
                                          Icon(Icons.thumb_down_outlined),
                                          Padding(
                                            padding: EdgeInsets.only(left: 5.0),
                                            child: Text(
                                              '999+',
                                              style: TextStyle(fontSize: 13),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ), // Rating
                                Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(3, 5, 0, 0),
                                    child: Text(
                                      r'$99.99',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold),
                                    )), // Harga
                              ],
                            ),
                          ),
                        ), // Keterangan Makanan
                        Expanded(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.thumb_up_outlined),
                              SizedBox(
                                width: 15,
                              ),
                              Icon(Icons.thumb_down_outlined),
                            ],
                          ),
                        ) // Rate Button
                      ],
                    ), // Order
                  ],
                ),
              ),
              SizedBox(
                height: 220,
              ), // Orders
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
      ), // Order Page
      Text(
        'Index 2: My List',
        style: optionStyle,
      ), // My List Page
      SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 50, 30, 0),
          child: Column(
            children: [
              Column(
                children: [
                  Image(
                      image:
                          AssetImage('assets/ppitoh.png')), // Profile Picture
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Itoh',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ), // Nama
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '+1 11229382748',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  ), // Nomor HP
                ],
              ), // User Info
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Column(
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Expanded(
                              flex: 10,
                              child: Text(
                                'My Profile',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ), // Text
                            Expanded(
                              flex: 1,
                              child: Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 22,
                                color: Colors.black,
                              ),
                            ), // Arrow Icon
                          ],
                        )), // My Profile
                    TextButton(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_context) =>
                                    ChangePasswordSetting())),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 10,
                              child: Text(
                                'Change Password',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ), // Text
                            Expanded(
                              flex: 1,
                              child: Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 22,
                                color: Colors.black,
                              ),
                            ), // Arrow Icon
                          ],
                        )), // Change Password
                    TextButton(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_context) => PaymentSetting())),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 10,
                              child: Text(
                                'Payment Settings',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ), // Text
                            Expanded(
                              flex: 1,
                              child: Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 22,
                                color: Colors.black,
                              ),
                            ), // Arrow Icon
                          ],
                        )), // Payment Settings
                    TextButton(
                        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_context) => MyVoucherSetting())),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 10,
                              child: Text(
                                'My Voucher',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ), // Text
                            Expanded(
                              flex: 1,
                              child: Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 22,
                                color: Colors.black,
                              ),
                            ), // Arrow Icon
                          ],
                        )), // My Voucher
                    TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Expanded(
                              flex: 10,
                              child: Text(
                                'Notification',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ), // Text
                            Expanded(
                              flex: 1,
                              child: Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 22,
                                color: Colors.black,
                              ),
                            ), // Arrow Icon
                          ],
                        )), // Notification
                    TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Expanded(
                              flex: 10,
                              child: Text(
                                'About Us',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ), // Text
                            Expanded(
                              flex: 1,
                              child: Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 22,
                                color: Colors.black,
                              ),
                            ), // Arrow Icon
                          ],
                        )), // About Us
                    TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Expanded(
                              flex: 10,
                              child: Text(
                                'Contact Us',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ), // Text
                            Expanded(
                              flex: 1,
                              child: Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 22,
                                color: Colors.black,
                              ),
                            ), // Arrow Icon
                          ],
                        )), // Contact Us
                    SizedBox(
                      height: 15,
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
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(30.0))))),
                      child: const Text(
                        'Sign Out',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ), // Preferences
            ],
          ), // Profile
        ),
      ), // Profile Page
    ];

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Center(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment_rounded),
            label: 'My List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box_outlined),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xffD35400),
        onTap: _onItemTapped,
      ),
    ); // Bottom Navigation Bar
  }
}
