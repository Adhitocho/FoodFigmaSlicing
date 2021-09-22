import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:slicing_test/view/loginpage_view.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({Key? key}) : super(key: key);
  @override
  _SplashScreenViewState createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  @override
  Widget build(BuildContext context) {
    int _current = 0;

    final CarouselController _carController = CarouselController();

    final List<Widget> _splashSlide = [
      Container(
        alignment: Alignment.center,
        color: const Color(0xffD35400),
        child: Image.asset(
          'assets/carslider_1.png',
          fit: BoxFit.fill,
        ),
      ),
      Container(
        alignment: Alignment.center,
        color: const Color(0xffD35400),
        child: Image.asset(
          'assets/carslider_2.png',
          fit: BoxFit.fill,
        ),
      ),
      Container(
        alignment: Alignment.center,
        color: const Color(0xffD35400),
        child: Image.asset(
          'assets/carslider_3.png',
          fit: BoxFit.fill,
        ),
      ),
      Container(
        alignment: Alignment.center,
        color: const Color(0xffD35400),
        child: Image.asset(
          'carslider_4.png',
          fit: BoxFit.fill,
        ),
      ),
    ]; // Slider

    return Scaffold(
        backgroundColor: const Color(0xffD35400),
        body: SafeArea(
            child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 220,
                ),
                Center(
                  child: CarouselSlider(
                      items: _splashSlide,
                      carouselController: _carController,
                      options: CarouselOptions(
                        autoPlay: false,
                        enableInfiniteScroll: false,
                      )),
                ), // Carousel Slider
                const SizedBox(
                  height: 220,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _splashSlide.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => _carController.animateToPage(entry.key),
                      child: Container(
                        width: 10.0,
                        height: 10.0,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 6, vertical: 4),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                (Theme.of(context).brightness == Brightness.dark
                                        ? Colors.white
                                        : Colors.black)
                                    .withOpacity(
                                        _current == entry.key ? 0.9 : 0.4)),
                      ),
                    );
                  }).toList(),
                ), // Black Dot
              ],
            ),
            Container(
              alignment: Alignment.bottomRight,
              margin: const EdgeInsets.fromLTRB(0, 0, 30, 30),
              child: OutlinedButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_context) => const LoginPageView())),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0))))),
                child: const Text(
                  'NEXT',
                  style: TextStyle(color: Color(0xffD35400)),
                ),
              ),
            ), // Next Button
          ],
        )));
  }
}
