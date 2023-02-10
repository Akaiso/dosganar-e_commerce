import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utilities.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
  double iconSize = 15;
  double arrivalSize = 13;
  double bestSellersSize = 13;
  double suitcasesSize = 13;
  double bagsSize = 13;
  double accessSize = 13;
  double gcSize = 13;
  double login = 13;
  double search = 30;
  double luggage = 30;
  Color shopnowColor = Colors.black;
  Color shopnowBoxColor = Colors.transparent;
}

class _HomePageState extends State<HomePage> {
  List<Widget> items = [
    const Text(
      'welcome to battle royale',
      style: TextStyle(fontSize: 15, color: Colors.black),
    ),
    const Text('the match is about to start',
        style: TextStyle(fontSize: 15, color: Colors.black)),
    const Text('get ready', style: TextStyle(fontSize: 14, color: Colors.black))
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              SliverAppBar(
                backgroundColor: const Color(0xfff7f1eb),
                pinned: MediaQuery.of(context).size.width < 800 ? true : false,
                floating: true,
                snap: true,
                title: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      size: widget.iconSize,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 500,
                      height: 20,
                      child: CarouselSlider(
                          items: items,
                          options: CarouselOptions(
                            height: 400,
                            aspectRatio: 16 / 9,
                            viewportFraction: 0.8,
                            initialPage: 0,
                            enableInfiniteScroll: true,
                            reverse: false,
                            autoPlay: true,
                            autoPlayInterval: const Duration(seconds: 3),
                            autoPlayAnimationDuration:
                                const Duration(milliseconds: 800),
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enlargeCenterPage: true,
                            enlargeFactor: 0.3,
                            //onPageChanged: callbackFunction,
                            scrollDirection: Axis.horizontal,
                          )),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Colors.black,
                    ),
                  ],
                ),
                centerTitle: true,
                actions: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const SizedBox(width: 80),
                      Text(
                        'Help',
                        style: Tblack,
                      ),
                      const SizedBox(width: 40),
                      Text(
                        'Stores',
                        style: Tblack,
                      ),
                      const SizedBox(width: 40),
                      const Icon(
                        Icons.location_pin,
                        size: 15,
                        color: Colors.black,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Earth',
                        style: Tblack,
                      ),
                      const SizedBox(width: 40),
                    ],
                  )
                ],
                bottom: AppBar(
                  centerTitle: true,
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  title: Container(
                    color: Colors.white,
                    child: Row(
                      children: [
                        Container(
                          color: Colors.black,
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'DOGANAR',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const SizedBox(width: 150),
                            SizedBox(
                                width: 110,
                                child: widgetHover(
                                    'NEW ARRIVALS',
                                    TextStyle(
                                        color: Colors.black,
                                        fontSize: widget.arrivalSize),
                                    (_) => setState(() {
                                          widget.arrivalSize = 15;
                                        }),
                                    (_) => setState(() {
                                          widget.arrivalSize = 13;
                                        }))),
                            const SizedBox(width: 10),
                            SizedBox(
                                width: 110,
                                child: widgetHover(
                                    'BEST SELLERS',
                                    TextStyle(
                                        color: Colors.black,
                                        fontSize: widget.bestSellersSize),
                                    (_) => setState(() {
                                          widget.bestSellersSize = 15;
                                        }),
                                    (_) => setState(() {
                                          widget.bestSellersSize = 13;
                                        }))),
                            const SizedBox(width: 10),
                            SizedBox(
                                width: 80,
                                child: widgetHover(
                                    'SUITCASES',
                                    TextStyle(
                                        color: Colors.black,
                                        fontSize: widget.suitcasesSize),
                                    (_) => setState(() {
                                          widget.suitcasesSize = 15;
                                        }),
                                    (_) => setState(() {
                                          widget.suitcasesSize = 13;
                                        }))),
                            const SizedBox(width: 10),
                            SizedBox(
                                width: 50,
                                child: widgetHover(
                                    'BAGS',
                                    TextStyle(
                                        color: Colors.black,
                                        fontSize: widget.bagsSize),
                                    (_) => setState(() {
                                          widget.bagsSize = 15;
                                        }),
                                    (_) => setState(() {
                                          widget.bagsSize = 13;
                                        }))),
                            const SizedBox(width: 10),
                            SizedBox(
                                width: 100,
                                child: widgetHover(
                                    'ACCESSORIES',
                                    TextStyle(
                                        color: Colors.black,
                                        fontSize: widget.accessSize),
                                    (_) => setState(() {
                                          widget.accessSize = 15;
                                        }),
                                    (_) => setState(() {
                                          widget.accessSize = 13;
                                        }))),
                            const SizedBox(width: 10),
                            SizedBox(
                                width: 170,
                                child: widgetHover(
                                    'GUIDES & COLLECTIONS',
                                    TextStyle(
                                        color: Colors.black,
                                        fontSize: widget.gcSize),
                                    (_) => setState(() {
                                          widget.gcSize = 15;
                                        }),
                                    (_) => setState(() {
                                          widget.gcSize = 13;
                                        }))),
                            const SizedBox(width: 100),
                            Row(
                              children: [
                                InkWell(
                                  child: SizedBox(
                                      width: 50,
                                      child: widgetHover(
                                          'LOG IN',
                                          TextStyle(
                                              color: Colors.black,
                                              fontSize: widget.login),
                                          (_) => setState(() {
                                                widget.login = 15;
                                              }),
                                          (_) => setState(() {
                                                widget.login = 13;
                                              }))),
                                ),
                                const SizedBox(width: 10),
                                SizedBox(
                                  width: 50,
                                  child: iconHoverBehaviour(
                                    (_) => setState(() {
                                      widget.search = 32;
                                    }),
                                    (_) => setState(() {
                                      widget.search = 30;
                                    }),
                                    Icons.search,
                                    widget.search,
                                  ),
                                ),
                                SizedBox(
                                  width: 30,
                                  child: iconHoverBehaviour(
                                      (_) => setState(() {
                                            widget.luggage = 32;
                                          }),
                                      (_) => setState(() {
                                            widget.luggage = 30;
                                          }),
                                      Icons.luggage,
                                      widget.luggage),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Container(
                          height: 500,
                          width: MediaQuery.of(context).size.width * 0.5,
                          color: const Color(0xff9eabb0),
                          child: Image.asset(
                            'assets/images/first.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          height: 500,
                          width: MediaQuery.of(context).size.width * 0.5,
                          color: const Color(0xff7f1eb),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,

                              children: [
                            const Text('SAVE ON THE PERFECT ITEM', style: TextStyle(fontSize: 70,),textAlign: TextAlign.center),
                            const Text(
                                '\$50 off any item for a limited time. *Hurry \n'
                                '-Your new favourite item is waiting',style: TextStyle(fontSize: 20,), textAlign: TextAlign.center),
                            MouseRegion(
                              onHover: (_){
                                setState(() {
                                  widget.shopnowBoxColor = Colors.black;
                                  widget.shopnowColor = Colors.white;
                                });
                              },
                              onExit: (_){
                                setState(() {
                                  widget.shopnowBoxColor = Colors.transparent;
                                  widget.shopnowColor = Colors.black;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: widget.shopnowBoxColor,
                                  border: Border.all(color: Colors.black)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30),
                                  child: InkWell(child: Text('SHOP NOW', style: TextStyle(color: widget.shopnowColor, fontWeight: FontWeight.w500),)),
                                ),
                              ),
                            )
                          ]),
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: MediaQuery.of(context).size.width < 800
                            ? InkWell(
                                child: Text(
                                'Restrictions apply.see terms and conditions',
                                style: Twhite10,
                              ))
                            : Text(
                                '*Offer valid from 10:00 AM ET on 3/28/24 (“Offer Period”) '
                                'until 11:59 PM ET on 4/30/24 (“Offer Expiration Date”). Up to USD \$50.00 in '
                                'value per qualifying Bundle; value depends on items purchased. Prices as '
                                'marked. During the Offer Period, purchase any suitcase in combination '
                                'with any bag and receive \$50.00 off your order (the “Offer”), which will '
                                'automatically be applied prior to purchase. Discount(s) valid during the '
                                'Offer Period only. Cannot be combined with other offers. Subject to '
                                'availability. Away’s standard delivery restrictions apply. Void where '
                                'prohibited by law. The Discount is subject to the complete terms and '
                                'conditions located at Terms and Conditions.'
                                '(1)',
                                style: Twhite10,
                              ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Build Your',
                    style: GoogleFonts.allura(
                        textStyle: TextStyle(
                      fontSize: 30,
                    )),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'BUNDLE',
                    style: TextStyle(fontSize: 50, letterSpacing: 2),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
