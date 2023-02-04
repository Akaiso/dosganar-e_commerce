import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utilities.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> items = [
    const Text(
      'welcome to battle royale',
      style: TextStyle(fontSize: 15, color: Colors.black),
    ),
    const Text('the mission is about to begin',
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
                backgroundColor: Color(0xfff7f1eb),
                pinned: MediaQuery.of(context).size.width < 800 ? true : false,
                floating: true,
                snap: true,
                title: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Icon(
                      Icons.arrow_back_ios,
                      size: 15,
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
                            autoPlayInterval: Duration(seconds: 3),
                            autoPlayAnimationDuration:
                                Duration(milliseconds: 800),
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
                      SizedBox(width: 80),
                      Text(
                        'Help',
                        style: Tblack,
                      ),
                      SizedBox(width: 40),
                      Text(
                        'Stores',
                        style: Tblack,
                      ),
                      SizedBox(width: 40),
                      const Icon(
                        Icons.location_pin,
                        size: 15,
                        color: Colors.black,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Earth',
                        style: Tblack,
                      ),
                      SizedBox(width: 40),
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
                            SizedBox(width: 200),
                            Text(
                              'NEW ARRIVALS',
                              style: Tblack13B,
                            ),
                            SizedBox(width: 20),
                            Text(
                              'BEST SELLERS',
                              style: Tblack13B,
                            ),
                            SizedBox(width: 20),
                            Text(
                              'SUITCASES',
                              style: Tblack13B,
                            ),
                            SizedBox(width: 20),
                            Text('BAGS', style: Tblack13B),
                            SizedBox(width: 20),
                            Text(
                              'ACCESSORIES',
                              style: Tblack13B,
                            ),
                            SizedBox(width: 20),
                            Text(
                              'GUIDES & COLLECTIONS',
                              style: Tblack13B,
                            ),
                            SizedBox(width: 150),
                            Row(
                              children: [
                                Text('LOG IN', style: Tblack13B,),
                                SizedBox(width: 20),
                                Icon(Icons.search, color: Colors.black,),
                                SizedBox(width: 20),
                                Icon(Icons.luggage_outlined, color: Colors.black,)
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
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Container(height: 500,width: MediaQuery.of(context).size.width * 0.5, color: Colors.green,),
                        Container(height: 500,width: MediaQuery.of(context).size.width * 0.5,color: Colors.blue,)
                      ],
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('*Offer valid from 10:00 AM ET on 3/28/24 (“Offer Period”) '
                          'until 11:59 PM ET on 4/30/24 (“Offer Expiration Date”). Up to USD \$50.00 in '
                          'value per qualifying Bundle; value depends on items purchased. Prices as '
                          'marked. During the Offer Period, purchase any suitcase in combination '
                          'with any bag and receive \$50.00 off your order (the “Offer”), which will '
                          'automatically be applied prior to purchase. Discount(s) valid during the '
                          'Offer Period only. Cannot be combined with other offers. Subject to '
                          'availability. Away’s standard delivery restrictions apply. Void where '
                          'prohibited by law. The Discount is subject to the complete terms and '
                          'conditions located at Terms and Conditions.'
                        '(1)'),
                  ),
                    ),
                ],
              ),
            ),
          ),
        ));
  }
}
