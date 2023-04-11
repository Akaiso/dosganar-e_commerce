import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utilities.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
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
  double popImage1height = 300;
  double popImage1width = 280;


  late AnimationController _controller;
  late Animation _animation;
  late Animation padding;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: 275),
      vsync: this,
    );

    _animation = Tween(begin: 1.0, end: 1.2)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.ease));

    padding = Tween(begin: 0.0, end: -25.0)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.ease));

    _controller.addListener(() {
      setState(() {});
    });
  }

  List<Widget> items = [
    const Text(
      '50% discount off bags and shoes',
      style: TextStyle(fontSize: 15, color: Colors.black),
    ),
    const Text('T-shirt wholesale promo on-going',
        style: TextStyle(fontSize: 15, color: Colors.black)),
    const Text('Fund your wallet unlock irresistible offers', style: TextStyle(fontSize: 14, color: Colors.black))
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
                  mainAxisAlignment: MediaQuery.of(context).size.width < 1150
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      size: iconSize,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 400,
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
                  MediaQuery.of(context).size.width < 1150
                      ? Row()
                      : Row(
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
                  leading: MediaQuery.of(context).size.width < 1150
                      ? Icon(
                          Icons.menu,
                          color: Colors.black,
                        )
                      : null,
                  centerTitle: true,
                  elevation: 0,
                  backgroundColor: Colors.white,
                  title: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MediaQuery.of(context).size.width < 1150
                            ? Container()
                            : Container(
                                color: Colors.black,
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'DOGANAR',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                        MediaQuery.of(context).size.width < 1150
                            ? Row(
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
                                ],
                              )
                            : Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const SizedBox(width: 150),
                                  SizedBox(
                                      width: 110,
                                      child: widgetHover(
                                          'NEW ARRIVALS',
                                          TextStyle(
                                              color: Colors.black,
                                              fontSize: arrivalSize),
                                          (_) => setState(() {
                                                arrivalSize = 15;
                                              }),
                                          (_) => setState(() {
                                                arrivalSize = 13;
                                              }))),
                                  const SizedBox(width: 10),
                                  SizedBox(
                                      width: 110,
                                      child: widgetHover(
                                          'BEST SELLERS',
                                          TextStyle(
                                              color: Colors.black,
                                              fontSize: bestSellersSize),
                                          (_) => setState(() {
                                                bestSellersSize = 15;
                                              }),
                                          (_) => setState(() {
                                                bestSellersSize = 13;
                                              }))),
                                  const SizedBox(width: 10),
                                  SizedBox(
                                      width: 80,
                                      child: widgetHover(
                                          'SUITCASES',
                                          TextStyle(
                                              color: Colors.black,
                                              fontSize: suitcasesSize),
                                          (_) => setState(() {
                                                suitcasesSize = 15;
                                              }),
                                          (_) => setState(() {
                                                suitcasesSize = 13;
                                              }))),
                                  const SizedBox(width: 10),
                                  SizedBox(
                                      width: 50,
                                      child: widgetHover(
                                          'BAGS',
                                          TextStyle(
                                              color: Colors.black,
                                              fontSize: bagsSize),
                                          (_) => setState(() {
                                                bagsSize = 15;
                                              }),
                                          (_) => setState(() {
                                                bagsSize = 13;
                                              }))),
                                  const SizedBox(width: 10),
                                  SizedBox(
                                      width: 100,
                                      child: widgetHover(
                                          'ACCESSORIES',
                                          TextStyle(
                                              color: Colors.black,
                                              fontSize: accessSize),
                                          (_) => setState(() {
                                                accessSize = 15;
                                              }),
                                          (_) => setState(() {
                                                accessSize = 13;
                                              }))),
                                  const SizedBox(width: 10),
                                  SizedBox(
                                      width: 170,
                                      child: widgetHover(
                                          'GUIDES & COLLECTIONS',
                                          TextStyle(
                                              color: Colors.black,
                                              fontSize: gcSize),
                                          (_) => setState(() {
                                                gcSize = 15;
                                              }),
                                          (_) => setState(() {
                                                gcSize = 13;
                                              }))),
                                  // const SizedBox(width: 100),
                                ],
                              ),
                      ],
                    ),
                  ),
                  actions: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          InkWell(
                            child: SizedBox(
                                width: 50,
                                child: widgetHover(
                                    'LOG IN',
                                    TextStyle(
                                        color: Colors.black, fontSize: login),
                                    (_) => setState(() {
                                          login = 15;
                                        }),
                                    (_) => setState(() {
                                          login = 13;
                                        }))),
                          ),
                          const SizedBox(width: 10),
                          SizedBox(
                            width: 50,
                            child: iconHoverBehaviour(
                              (_) => setState(() {
                                search = 32;
                              }),
                              (_) => setState(() {
                                search = 30;
                              }),
                              Icons.search,
                              search,
                            ),
                          ),
                          SizedBox(
                            width: 30,
                            child: iconHoverBehaviour(
                                (_) => setState(() {
                                      luggage = 32;
                                    }),
                                (_) => setState(() {
                                      luggage = 30;
                                    }),
                                Icons.luggage,
                                luggage),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Wrap(
                      children: [
                        Container(
                          height: 500,
                          width: MediaQuery.of(context).size.width < 1000
                              ? MediaQuery.of(context).size.width
                              : MediaQuery.of(context).size.width * 0.5,
                          color: const Color(0xff9eabb0),
                          child: Image.asset(
                            'assets/images/first.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          height: 500,
                          width: MediaQuery.of(context).size.width < 100
                              ? MediaQuery.of(context).size.width
                              : MediaQuery.of(context).size.width * 0.5,
                          color: const Color(0xff7f1eb),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text('SAVE ON THE PERFECT ITEM',
                                    style: TextStyle(
                                      fontSize: 70,
                                    ),
                                    textAlign: TextAlign.center),
                                const Text(
                                    '\$50 off any item for a limited time. *Hurry \n'
                                    '-Your new favourite item is waiting',
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                    textAlign: TextAlign.center),
                                MouseRegion(
                                  onHover: (_) {
                                    setState(() {
                                      shopnowBoxColor = Colors.black;
                                      shopnowColor = Colors.white;
                                    });
                                  },
                                  onExit: (_) {
                                    setState(() {
                                      shopnowBoxColor = Colors.transparent;
                                      shopnowColor = Colors.black;
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: shopnowBoxColor,
                                        border:
                                            Border.all(color: Colors.black)),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15.0, horizontal: 30),
                                      child: InkWell(
                                          child: Text(
                                        'SHOP NOW',
                                        style: TextStyle(
                                            color: shopnowColor,
                                            fontWeight: FontWeight.w500),
                                      )),
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
                        textStyle: const TextStyle(
                      fontSize: 30,
                    )),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'BUNDLE',
                    style: TextStyle(fontSize: 50, letterSpacing: 2),
                  ),
                  const SizedBox(height: 50),
                  Wrap(
                    direction: Axis.horizontal,
                    children: [
                      MouseRegion(
                        onEnter: (value){
                          setState(() {
                            _controller.forward();
                          });
                        },onExit: (value){
                        setState(() {
                          _controller.reverse();
                        });
                      },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                offset: Offset(0.0 , 20.0),
                                spreadRadius: -10,
                                blurRadius: 30
                              )
                            ]
                          ),
                          child: ClipRRect(
                            child: Container(
                              // clipBehavior: Clip.antiAlias,
                              height: popImage1height,
                              width: popImage1width,
                               transform: Matrix4(_animation.value,0,0,0,0,_animation.value,0,0,0,0,1,0,padding.value,padding.value,0,1),
                              child: Image.asset(
                                'assets/images/RTFM.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),

                      // Container(
                      //  // clipBehavior: Clip.hardEdge,
                      //   height: widget.popImage1height,
                      //   width: widget.popImage1width,
                      //   transform: Matrix4(_animation.value,0,0,0,0,_animation.value,0,0,0,0,1,0,padding.value,padding.value,0,1),
                      //   child: Image.asset(
                      //     'assets/images/RTFM.jpg',
                      //     fit: BoxFit.cover,
                      //   ),
                      // ),
                      Container(
                        height: 300,
                        width: 280,
                        color: Colors.brown,
                      ),
                      Container(
                        height: 300,
                        width: 280,
                        color: Colors.tealAccent,
                      ),
                      Container(
                        height: 300,
                        width: 280,
                        color: Colors.teal,
                      ),
                      Container(
                        height: 300,
                        width: 280,
                        color: Colors.yellow,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
