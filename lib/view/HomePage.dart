import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utilities.dart';
import '../widgets/Widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
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
  late AnimationController _controller2;
  late Animation _animation2;
  late Animation padding2;
  late AnimationController _controller3;
  late Animation _animation3;
  late Animation padding3;
  late AnimationController _controller4;
  late Animation _animation4;
  late Animation padding4;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 275),
      vsync: this,
    );

    _controller2 = AnimationController(
      duration: const Duration(milliseconds: 275),
      vsync: this,
    );

    _controller3 = AnimationController(
      duration: const Duration(milliseconds: 275),
      vsync: this,
    );

    _controller4 = AnimationController(
      duration: const Duration(milliseconds: 275),
      vsync: this,
    );

    _animation = Tween(begin: 1.0, end: 1.2)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.ease));
    _animation2 = Tween(begin: 1.0, end: 1.2)
        .animate(CurvedAnimation(parent: _controller2, curve: Curves.ease));
    _animation3 = Tween(begin: 1.0, end: 1.2)
        .animate(CurvedAnimation(parent: _controller3, curve: Curves.ease));
    _animation4 = Tween(begin: 1.0, end: 1.2)
        .animate(CurvedAnimation(parent: _controller4, curve: Curves.ease));

    padding = Tween(begin: 0.0, end: -25.0)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.ease));
    padding2 = Tween(begin: 0.0, end: -25.0)
        .animate(CurvedAnimation(parent: _controller2, curve: Curves.ease));
    padding3 = Tween(begin: 0.0, end: -25.0)
        .animate(CurvedAnimation(parent: _controller3, curve: Curves.ease));
    padding4 = Tween(begin: 0.0, end: -25.0)
        .animate(CurvedAnimation(parent: _controller4, curve: Curves.ease));

    _controller.addListener(() {
      setState(() {});
    });
    _controller2.addListener(() {
      setState(() {});
    });
    _controller3.addListener(() {
      setState(() {});
    });
    _controller4.addListener(() {
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
    const Text('Fund your wallet unlock irresistible offers',
        style: TextStyle(fontSize: 14, color: Colors.black))
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
                      ? const Icon(
                          Icons.menu,
                          color: Colors.black,
                        )
                      : null,
                  centerTitle: true,
                  elevation: 0,
                  backgroundColor: Colors.white,
                  title: Row(
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
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Wrap(
                      direction: Axis.horizontal,
                      children: [
                        Container(
                          height: 500,
                          width: MediaQuery.of(context).size.width < 1000
                              ? MediaQuery.of(context).size.width
                              : MediaQuery.of(context).size.width * 0.5,
                          color: const Color(0xffe8ddd4),
                          child: Image.asset(
                            'assets/images/first.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.width < 1000
                              ? 300
                              : 500,
                          width: MediaQuery.of(context).size.width < 1000
                              ? MediaQuery.of(context).size.width
                              : MediaQuery.of(context).size.width * 0.5,
                          color: const Color(0xffddcec0),   //(0x0ff7f1eb),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    width: 300,
                                    height: 100,
                                    child:
                                        AutoSizeText('SAVE ON THE PERFECT ITEM',
                                            style: TextStyle(
                                              fontSize: 70,
                                            ),
                                            textAlign: TextAlign.center),
                                  ),
                                  const Text(
                                      '\$50 off any item for a limited time. *Hurry \n'
                                      '-Your new favourite item is waiting',
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                      textAlign: TextAlign.center),
                                  const SizedBox(height: 20),
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
                          ),
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
                      Container(
                        width: popImage1width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MouseRegion(
                              onEnter: (value) {
                                setState(() {
                                  _controller.forward();
                                });
                              },
                              onExit: (value) {
                                setState(() {
                                  _controller.reverse();
                                });
                              },
                              child: ClipRRect(
                                child: Container(
                                  // clipBehavior: Clip.antiAlias,
                                  height: popImage1height,
                                  width: popImage1width,
                                  transform: Matrix4(
                                      _animation.value,
                                      0,
                                      0,
                                      0,
                                      0,
                                      _animation.value,
                                      0,
                                      0,
                                      0,
                                      0,
                                      1,
                                      0,
                                      padding.value,
                                      padding.value,
                                      0,
                                      1),
                                  child: Image.asset(
                                    'assets/images/apblue.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Container(
                                width: 250,
                                padding: null,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: 260,
                                        child: AutoSizeText(
                                          "TSAR BOMBA: Luxury automatic waterproof",
                                          style: GoogleFonts.lato(),
                                        )),
                                    AutoSizeText(
                                      "\$250",
                                      style: GoogleFonts.lato(
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
                                ),
                                ),
                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                      Container(
                        width: popImage1width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MouseRegion(
                              onEnter: (value) {
                                setState(() {
                                  _controller2.forward();
                                });
                              },
                              onExit: (value) {
                                setState(() {
                                  _controller2.reverse();
                                });
                              },
                              child: ClipRRect(
                                child: Container(
                                  // clipBehavior: Clip.antiAlias,
                                  height: popImage1height,
                                  width: popImage1width,
                                  transform: Matrix4(
                                      _animation2.value,
                                      0,
                                      0,
                                      0,
                                      0,
                                      _animation2.value,
                                      0,
                                      0,
                                      0,
                                      0,
                                      1,
                                      0,
                                      padding2.value,
                                      padding2.value,
                                      0,
                                      1),
                                  child: Image.asset(
                                    'assets/images/c1.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Container(
                              width: 250,
                              padding: null,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      width: 260,
                                      child: AutoSizeText(
                                        "JBW: Platinum drip",
                                        style: GoogleFonts.lato(),
                                      )),
                                  AutoSizeText(
                                    "\$480",
                                    style: GoogleFonts.lato(
                                        fontWeight: FontWeight.w700),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                      Container(
                        width: popImage1width,
                        child: Column(
                          children: [
                            MouseRegion(
                              onEnter: (value) {
                                setState(() {
                                  _controller3.forward();
                                });
                              },
                              onExit: (value) {
                                setState(() {
                                  _controller3.reverse();
                                });
                              },
                              child: ClipRRect(
                                child: Container(
                                  // clipBehavior: Clip.antiAlias,
                                  height: popImage1height,
                                  width: popImage1width,
                                  transform: Matrix4(
                                      _animation3.value,
                                      0,
                                      0,
                                      0,
                                      0,
                                      _animation3.value,
                                      0,
                                      0,
                                      0,
                                      0,
                                      1,
                                      0,
                                      padding3.value,
                                      padding3.value,
                                      0,
                                      1),
                                  child: Image.asset(
                                    'assets/images/c2.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Container(
                              width: 250,
                              padding: null,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      width: 260,
                                      child: AutoSizeText(
                                        "OLEV: Black diamond",
                                        style: GoogleFonts.lato(),
                                      )),
                                  AutoSizeText(
                                    "\$650",
                                    style: GoogleFonts.lato(
                                        fontWeight: FontWeight.w700),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                      Container(
                        width: popImage1width,
                        child: Column(
                          children: [
                            MouseRegion(
                              onEnter: (value) {
                                setState(() {
                                  _controller4.forward();
                                });
                              },
                              onExit: (value) {
                                setState(() {
                                  _controller4.reverse();
                                });
                              },
                              child: ClipRRect(
                                child: Container(
                                  // clipBehavior: Clip.antiAlias,
                                  height: popImage1height,
                                  width: popImage1width,
                                  transform: Matrix4(
                                      _animation4.value,
                                      0,
                                      0,
                                      0,
                                      0,
                                      _animation4.value,
                                      0,
                                      0,
                                      0,
                                      0,
                                      1,
                                      0,
                                      padding4.value,
                                      padding4.value,
                                      0,
                                      1),
                                  child: Image.asset(
                                    'assets/images/c3.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Container(
                              width: 250,
                              padding: null,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      width: 260,
                                      child: AutoSizeText(
                                        "DIELLA: Luminous automatic waterproof",
                                        style: GoogleFonts.lato(),
                                      )),
                                  AutoSizeText(
                                    "\$220",
                                    style: GoogleFonts.lato(
                                        fontWeight: FontWeight.w700),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ],
                  ),
                  //SECOND TWO WRAP
                  SizedBox(height: 100),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Wrap(
                      direction: Axis.horizontal,
                      children: [
                        Container(
                          height: 500,
                          width: MediaQuery.of(context).size.width < 1000
                              ? MediaQuery.of(context).size.width
                              : MediaQuery.of(context).size.width * 0.5,
                          color: const Color(0xff9eabb0),
                          child: Image.asset(
                            'assets/images/w5.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.width < 1000
                              ? 300
                              : 500,
                          width: MediaQuery.of(context).size.width < 1000
                              ? MediaQuery.of(context).size.width
                              : MediaQuery.of(context).size.width * 0.5,
                          color: const Color(0xffe8ddd4),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30.0),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.symmetric(vertical:10.0),
                                    child: AutoSizeText("WARM WEATHER EDIT"),
                                  ),
                                   SizedBox(
                                    width: 300,
                                    height: 80,
                                    child:
                                    AutoSizeText('New in for spring',
                                        style: GoogleFonts.merriweather(fontSize: 70) ,
                                        textAlign: TextAlign.left),
                                  ),
                                  const Text(
                                      'Be the first out in the wild with our award-winning accessories \n'
                                          'now available in stores',
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                      textAlign: TextAlign.left),
                                  const SizedBox(height: 20),
                                  MouseRegion(
                                    child: Row(
                                      children: [
                                        Text("SHOP NOW", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                                        Icon(Icons.arrow_forward),
                                      ],
                                    ),
                                  )
                                ]),
                          ),
                        )
                      ],
                    ),
                  )

                ],
              ),
            ),
          ),
        ));
  }
}
