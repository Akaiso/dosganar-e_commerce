import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class ZoomImageOnHoverWithLabelAndPriceTag extends StatefulWidget {
  const ZoomImageOnHoverWithLabelAndPriceTag(
      {Key? key,
      required this.controllForward,
      required this.controllReverse,
      required this.popImage1height,
      required this.popImage1width,
      required this.animation,
      required this.padding})
      : super(key: key);

  final TickerFuture controllForward;
  final TickerFuture controllReverse;
  final double popImage1height;
  final double popImage1width;
  final Animation animation;
  final Animation padding;

  @override
  State<ZoomImageOnHoverWithLabelAndPriceTag> createState() =>
      _ZoomImageOnHoverWithLabelAndPriceTagState();
}

class _ZoomImageOnHoverWithLabelAndPriceTagState
    extends State<ZoomImageOnHoverWithLabelAndPriceTag> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MouseRegion(
            onEnter: (value) {
              setState(() {
                widget.controllForward;
                //_controller.forward();
              });
            },
            onExit: (value) {
              setState(() {
                widget.controllReverse;
              });
            },
            child: ClipRRect(
              child: Container(
                // clipBehavior: Clip.antiAlias,
                height: widget.popImage1height,
                width: widget.popImage1width,
                transform: Matrix4(
                    widget.animation.value,
                    0,
                    0,
                    0,
                    0,
                    widget.animation.value,
                    0,
                    0,
                    0,
                    0,
                    1,
                    0,
                    widget.padding.value,
                    widget.padding.value,
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
                    style: GoogleFonts.lato(fontWeight: FontWeight.w700),
                  )
                ],
              )
              // ListTile(
              //     title: AutoSizeText("TSAR BOMBA: Luxury automatic waterproof", textAlign: TextAlign.left,),
              // subtitle: AutoSizeText("\$250"),),
              ),
          SizedBox(height: 20),
        ],
      ),
    );
    ;
  }
}
