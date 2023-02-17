import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utilities.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

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
  late AnimationController _controller5;
  late Animation _animation5;
  late Animation padding5;
  late AnimationController _controller6;
  late Animation _animation6;
  late Animation padding6;
  late AnimationController _controller7;
  late Animation _animation7;
  late Animation padding7;
  late AnimationController _controller8;
  late Animation _animation8;
  late Animation padding8;

  late final ScrollController scrollController1;
  late final ScrollController scrollController2;

  @override
  void initState() {
    super.initState();
    scrollController1 = ScrollController()
      ..addListener(() {
        syncScroll();
      });
    scrollController2 = ScrollController();

    // setState(() {
    //   scrollController1.addListener(() {
    //     syncScroll();
    //     // scrollController2.animateTo(scrollController1.offset,
    //     //     duration: Duration(milliseconds: 50000), curve: Curves.linear);
    //   });
    // });

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
    _controller5 = AnimationController(
      duration: const Duration(milliseconds: 275),
      vsync: this,
    );
    _controller6 = AnimationController(
      duration: const Duration(milliseconds: 275),
      vsync: this,
    );
    _controller7 = AnimationController(
      duration: const Duration(milliseconds: 275),
      vsync: this,
    );
    _controller8 = AnimationController(
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
    _animation5 = Tween(begin: 1.0, end: 1.2)
        .animate(CurvedAnimation(parent: _controller5, curve: Curves.ease));
    _animation6 = Tween(begin: 1.0, end: 1.2)
        .animate(CurvedAnimation(parent: _controller6, curve: Curves.ease));
    _animation7 = Tween(begin: 1.0, end: 1.2)
        .animate(CurvedAnimation(parent: _controller7, curve: Curves.ease));
    _animation8 = Tween(begin: 1.0, end: 1.2)
        .animate(CurvedAnimation(parent: _controller8, curve: Curves.ease));

    padding = Tween(begin: 0.0, end: -25.0)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.ease));
    padding2 = Tween(begin: 0.0, end: -25.0)
        .animate(CurvedAnimation(parent: _controller2, curve: Curves.ease));
    padding3 = Tween(begin: 0.0, end: -25.0)
        .animate(CurvedAnimation(parent: _controller3, curve: Curves.ease));
    padding4 = Tween(begin: 0.0, end: -25.0)
        .animate(CurvedAnimation(parent: _controller4, curve: Curves.ease));
    padding5 = Tween(begin: 0.0, end: -25.0)
        .animate(CurvedAnimation(parent: _controller5, curve: Curves.ease));
    padding6 = Tween(begin: 0.0, end: -25.0)
        .animate(CurvedAnimation(parent: _controller6, curve: Curves.ease));
    padding7 = Tween(begin: 0.0, end: -25.0)
        .animate(CurvedAnimation(parent: _controller7, curve: Curves.ease));
    padding8 = Tween(begin: 0.0, end: -25.0)
        .animate(CurvedAnimation(parent: _controller8, curve: Curves.ease));

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
    _controller5.addListener(() {
      setState(() {});
    });
    _controller6.addListener(() {
      setState(() {});
    });
    _controller7.addListener(() {
      setState(() {});
    });
    _controller8.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    scrollController1.dispose();
    scrollController2.dispose();
    super.dispose();
  }

  void syncScroll() {
    if (!mounted) return;
    if (scrollController2.hasClients) {
      final verticalOffset = scrollController1.offset;
      final horizontalTarget =
          (verticalOffset / scrollController1.position.maxScrollExtent) *
              scrollController2.position.maxScrollExtent;
      scrollController2.jumpTo(horizontalTarget);
    }
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

  List items4 = [
    "NYC: NoHo",
    "Austin",
    "Boston: Newbury",
    "Boston: Seaport",
    "San Jose",
    "Seattle",
    "Washington DC",
    "San Francisco",
    "NYC: Williamsburg",
    "London",
    "LA: West Hollywood",
    "LA: Venice Beach",
    "Houston",
    "Dallas",
    "Chicago"
  ];

  dynamic dropdownValue;
  int currentIndex = 0;
  CarouselController carouselController = new CarouselController();

  @override
  Widget build(BuildContext context) {
    List<Widget> items2 = [
      Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width < 800 ? 70 : 130.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            child: AutoSizeText(
              "Dosganar prides itself on delivering exceptional customer service and high-quality "
              "products, resulting in a 100% customer satisfaction rate.",
              textAlign: TextAlign.center,
              style: GoogleFonts.merriweather(fontSize: 25),
            ),
          ),
          SizedBox(height: 30),
          AutoSizeText(
            "Dosganar: Where quality meets convenience",
            textAlign: TextAlign.center,
            style: GoogleFonts.merriweather(),
          ),
        ]),
      ),
      Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width < 800 ? 70 : 130.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            child: AutoSizeText(
              "Dosganar has successfully expanded its reach beyond local boundaries, establishing a "
              "presence in international markets.",
              textAlign: TextAlign.center,
              style: GoogleFonts.merriweather(fontSize: 25),
            ),
          ),
          SizedBox(height: 30),
          AutoSizeText(
            "Dosganar: Experience the Difference with Dosganar",
            textAlign: TextAlign.center,
            style: GoogleFonts.merriweather(),
          ),
        ]),
      ),
      Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width < 800 ? 70 : 130.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            child: AutoSizeText(
              "Through personalized shopping experiences, timely delivery, and responsive support, "
              "Dosganar has earned the trust and satisfaction of its customers",
              textAlign: TextAlign.center,
              style: GoogleFonts.merriweather(fontSize: 25),
            ),
          ),
          SizedBox(height: 30),
          AutoSizeText(
            "Shop Smarter, Shop Dosganar",
            textAlign: TextAlign.center,
            style: GoogleFonts.merriweather(),
          ),
        ]),
      ),
      Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width < 800 ? 70 : 130.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            child: AutoSizeText(
              "Dosganar has successfully expanded its reach beyond local boundaries, establishing a "
              "presence in international markets.",
              textAlign: TextAlign.center,
              style: GoogleFonts.merriweather(fontSize: 25),
            ),
          ),
          SizedBox(height: 30),
          AutoSizeText(
            "Dosganar: Curated Excellence, Delivered to Your Door",
            textAlign: TextAlign.center,
            style: GoogleFonts.merriweather(),
          ),
        ]),
      ),
    ];

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
                                  'DOSGANAR',
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
                                      'DOSGANAR',
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
              controller: scrollController1,
              child: Column(
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
                          color: const Color(0xffddcec0), //(0x0ff7f1eb),
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

                  ///Caveat in black background
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

                  ///Images with zoom animation
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

                  ///SECOND TWO WRAP
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
                            padding:
                                const EdgeInsets.symmetric(horizontal: 30.0),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 10.0),
                                    child: AutoSizeText("WARM WEATHER EDIT"),
                                  ),
                                  SizedBox(
                                    width: 300,
                                    height: 80,
                                    child: AutoSizeText('New in for spring',
                                        style: GoogleFonts.merriweather(
                                            fontSize: 70),
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
                                      children: const [
                                        Text(
                                          "SHOP NOW",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Icon(Icons.arrow_forward),
                                      ],
                                    ),
                                  )
                                ]),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Pack your',
                    style: GoogleFonts.allura(
                        textStyle: const TextStyle(
                      fontSize: 30,
                    )),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'BAGS',
                    style: TextStyle(fontSize: 50, letterSpacing: 2),
                  ),
                  const SizedBox(height: 50),
                  Wrap(
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
                  const SizedBox(height: 80),
                  const Text(
                    "- HOT OFF THE PRESS -",
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                          onTap: () {
                            carouselController.previousPage(
                                duration: const Duration(milliseconds: 600));
                          },
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 30),
                            child: Icon(Icons.arrow_back),
                          )),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: CarouselSlider(
                            carouselController: carouselController,
                            items: items2,
                            options: CarouselOptions(
                                viewportFraction: 1,
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    currentIndex = index;
                                  });
                                  currentIndex = index;
                                },
                                // viewportFraction: 0.9,
                                //autoPlay: true,
                                height: MediaQuery.of(context).size.width < 1000
                                    ? MediaQuery.of(context).size.height * 0.7
                                    : MediaQuery.of(context).size.height *
                                        0.6)),
                      ),
                      InkWell(
                          onTap: () {
                            carouselController.nextPage(
                                duration: const Duration(milliseconds: 600));
                          },
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 30),
                            child: Icon(Icons.arrow_forward),
                          ))
                    ],
                  ),
                  DotsIndicator(
                      dotsCount: 4,
                      position: currentIndex,
                      decorator: const DotsDecorator(
                        color: Colors.black12,
                        activeColor: Colors.black,
                      )),

                  Container(
                    height: 50,
                  ),

                  ///zoom animated images with labels and Heading
                  Wrap(
                    children: [
                      MediaQuery.of(context).size.width < 1000
                          ? Container(
                              height: 100,
                              width: MediaQuery.of(context).size.width,
                              child: Column(children: [
                                AutoSizeText("Life Style",
                                    style:
                                        GoogleFonts.merriweather(fontSize: 14)),
                                AutoSizeText("ESSENTIALS",
                                    style: TextStyle(fontSize: 50))
                              ]))
                          : FittedBox(), //using a FittedBox so it fills whatever space the Wrap widget will give. Containr() won't work.
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width < 1000
                              ? MediaQuery.of(context).size.width
                              : popImage1width,
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
                                    width:
                                        MediaQuery.of(context).size.width < 1000
                                            ? MediaQuery.of(context).size.width
                                            : popImage1width,
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
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: 250,
                                        child: AutoSizeText(
                                          "ICONIC WRIST WATCHES",
                                          style: GoogleFonts.lato(
                                              fontWeight: FontWeight.w700),
                                        )),
                                    SizedBox(height: 20),
                                    AutoSizeText(
                                      "Elevate your style with our exquisite collection of luxury wristwatches, meticulously crafted for the discerning connoisseur",
                                      style: GoogleFonts.lato(),
                                    ),
                                    SizedBox(height: 30),
                                  ],
                                ),
                              ),
                              SizedBox(height: 50),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width < 1000
                              ? MediaQuery.of(context).size.width
                              : popImage1width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MediaQuery.of(context).size.width < 1000
                                  ? Container()
                                  : Container(
                                      height: 100,
                                      child: Column(children: [
                                        AutoSizeText("Life Style",
                                            style: GoogleFonts.merriweather(
                                                fontSize: 14)),
                                        AutoSizeText("ESSENTIALS",
                                            style: TextStyle(fontSize: 50))
                                      ])),
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
                                    width:
                                        MediaQuery.of(context).size.width < 1000
                                            ? MediaQuery.of(context).size.width
                                            : popImage1width,
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
                                          "BANTY WARDS",
                                          style: GoogleFonts.lato(
                                              fontWeight: FontWeight.w700),
                                        )),
                                    SizedBox(height: 20),
                                    Container(
                                      width: 260,
                                      child: AutoSizeText(
                                        "Indulge in timeless elegance and sophistication with our range of luxury "
                                        "timepieces, where every detail speaks of unparalleled craftsmanship and prestige",
                                        style: GoogleFonts.lato(),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 20),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width < 1000
                              ? MediaQuery.of(context).size.width
                              : popImage1width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                    width:
                                        MediaQuery.of(context).size.width < 1000
                                            ? MediaQuery.of(context).size.width
                                            : popImage1width,
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
                                          style: GoogleFonts.lato(
                                              fontWeight: FontWeight.w700),
                                        )),
                                    SizedBox(height: 20),
                                    AutoSizeText(
                                      "Experience the epitome of luxury and precision with our exclusive selection "
                                      "of wristwatches, curated for those who appreciate the finer things in life.",
                                      style: GoogleFonts.lato(),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 20),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    reverse: true,
                    controller: scrollController2,
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: 30,
                          color: Colors.black,
                          child: const Center(
                            child: Text(
                              "DOSGANAR DOSGANAR DOSGANAR DOSGANAR DOSGANAR DOSGANAR DOSGANAR DOSGANAR"
                              " DOSGANAR DOSGANAR DOSGANAR DOSGANAR DOSGANAR DOSGANAR DOSGANAR DOSGANAR "
                              "DOSGANAR DOSGANAR DOSGANAR DOSGANAR DOSGANAR DOSGANAR DOSGANAR DOSGANAR DOSGANAR"
                              " DOSGANAR DOSGANAR DOSGANAR DOSGANAR DOSGANAR DOSGANAR DOSGANAR DOSGANAR DOSGANAR"
                              " DOSGANAR DOSGANAR DOSGANAR DOSGANAR DOSGANAR DOSGANAR DOSGANAR DOSGANAR DOSGANAR"
                              " DOSGANAR DOSGANAR DOSGANAR DOSGANAR DOSGANAR DOSGANAR DOSGANAR DOSGANAR DOSGANAR"
                              " DOSGANAR DOSGANAR DOSGANAR DOSGANAR DOSGANAR DOSGANAR DOSGANAR DOSGANAR DOSGANAR"
                              " DOSGANAR DOSGANAR DOSGANAR DOSGANAR DOSGANAR DOSGANAR DOSGANAR DOSGANAR DOSGANAR",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  ///DROP DOWN BUTTON TO ALL STORES
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Wrap(
                      direction: Axis.horizontal,
                      verticalDirection: VerticalDirection.up,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.width < 1000
                              ? 300
                              : 500,
                          width: MediaQuery.of(context).size.width < 1000
                              ? MediaQuery.of(context).size.width
                              : MediaQuery.of(context).size.width * 0.3,
                          color: const Color(0xffe8ddd4),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 30.0),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(),
                                    ),
                                    child: MediaQuery.of(context).size.width <
                                            1000
                                        ? Center(
                                            child: DropdownButton(
                                              items: items4
                                                  .map((e) => DropdownMenuItem(
                                                      value: e, child: Text(e)))
                                                  .toList(),
                                              value: dropdownValue,
                                              onChanged: (value) {
                                                setState(() {
                                                  dropdownValue = value;
                                                });
                                              },
                                              hint: const Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 20.0),
                                                child: Text("SELECT A STORE"),
                                              ),
                                              isExpanded: true,
                                            ),
                                          )
                                        : Center(
                                            child: DropdownButton(
                                              items: items4
                                                  .map((e) => DropdownMenuItem(
                                                      value: e, child: Text(e)))
                                                  .toList(),
                                              value: dropdownValue,
                                              onChanged: (value) {
                                                setState(() {
                                                  dropdownValue = value;
                                                });
                                              },
                                              hint: Text("SELECT A STORE"),
                                            ),
                                          ),
                                  ),
                                  SizedBox(
                                    width: 300,
                                    height: 80,
                                    child: AutoSizeText('DOSGANAR IRL',
                                        style: GoogleFonts.merriweather(
                                            fontSize: 70),
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
                                      children: const [
                                        Text(
                                          "SEE ALL STORES",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Icon(Icons.arrow_forward),
                                      ],
                                    ),
                                  )
                                ]),
                          ),
                        ),
                        Container(
                          height: 500,
                          width: MediaQuery.of(context).size.width < 1000
                              ? MediaQuery.of(context).size.width
                              : MediaQuery.of(context).size.width * 0.7,
                          color: const Color(0xff9eabb0),
                          child: Image.asset(
                            'assets/images/w5.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),

                  ///LAST SECTION BEFORE THE FOOTER
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.black,
                    height: MediaQuery.of(context).size.height * 0.4,
                    child: MediaQuery.of(context).size.width < 800? Wrap(children: [
                      Container(
                        width: MediaQuery.of(context).size.width < 800? MediaQuery.of(context).size.width : 300, //MediaQuery.of(context).size.width * 0.5,
                        // height: MediaQuery.of(context).size.height * 0.4,
                        child: const Center(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                            child: Text(
                              "Free shipping on all purchase. Designed by users for users",
                              style:
                              TextStyle(color: Colors.white, fontSize: 30),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                            height: MediaQuery.of(context).size.height * 0.4,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10,0,30,0),
                              child: Column(
                                  mainAxisAlignment: MediaQuery.of(context).size.width< 800? MainAxisAlignment.start : MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: 700,
                                        child: const Text(
                                            "We want you to love everything about looking Dosganar-which "
                                                "is why we offer free returns and exchanges on unused items "
                                                "for the first 100 days.",
                                            style: TextStyle(
                                                color: Colors.white))),
                                    SizedBox(height: 10),
                                    Row(children: const [
                                      Text(
                                        "EXCLUSIONS APPLY.LEARN MORE",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 2.0),
                                        child: Icon(
                                          Icons.arrow_forward,
                                          color: Colors.white,
                                        ),
                                      )
                                    ])
                                  ]),
                            )),
                      )
                    ]) :
                    Row(children: [
                      Container(
                        width: 300, //MediaQuery.of(context).size.width * 0.5,
                        // height: MediaQuery.of(context).size.height * 0.4,
                        child: const Center(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Text(
                              "Free shipping on all purchase. Designed by users for users",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                            height: MediaQuery.of(context).size.height * 0.4,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: 700,
                                        child: const Text(
                                            "We want you to love everything about looking Dosganar-which "
                                            "is why we offer free returns and exchanges on unused items "
                                            "for the first 100 days.",
                                            style: TextStyle(
                                                color: Colors.white))),
                                    SizedBox(height: 10),
                                    Row(children: const [
                                      Text(
                                        "EXCLUSIONS APPLY.LEARN MORE",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 2.0),
                                        child: Icon(
                                          Icons.arrow_forward,
                                          color: Colors.white,
                                        ),
                                      )
                                    ])
                                  ]),
                            )),
                      )
                    ]),
                  ),
                  Container(
                    height: 1000,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
