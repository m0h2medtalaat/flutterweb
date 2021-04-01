import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_web/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController scrollController = ScrollController();
  double position = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff021D43),
      body: Stack(
        children: [
          NotificationListener<ScrollUpdateNotification>(
            child: SingleChildScrollView(
              controller: scrollController,
              child: Column(
                children: [
                  Container(
                    height: 1.sh,
                    width: 1.sw,
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 0.08.sh,
                          right: 0.08.sw,
                          bottom: 0.06.sh,
                          left: 0.08.sw),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 0.3.sh,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 0.05.sw,
                                  backgroundImage:
                                      AssetImage("resources/images/image.jpg"),
                                ),
                                SizedBox(
                                  width: 0.01.sw,
                                ),
                                Container(
                                  width: 0.13.sw,
                                  height: 0.3.sh,
                                  child: Center(
                                    child: Text(
                                      "Mohamed Talaat Abdel-Moniem",
                                      style: GoogleFonts.raleway(
                                        fontSize: 18,
                                        color: Color(0xffDCDEE2),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 0.1,
                          ),
                          Container(
                            width: 0.3.sw,
                            height: 0.3.sh,
                            child: AnimatedTextKit(
                              animatedTexts: [
                                TypewriterAnimatedText('Hi.',
                                    textStyle: kTextStyle),
                                TypewriterAnimatedText(
                                    'I\'m a Mobile Application Developer',
                                    textStyle: kTextStyle),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            onNotification: (notification) {
              setState(() {
                position = notification.metrics.pixels;
              });

              return false;
            },
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 0.5.sh,
              width: 0.3.sw,
              child: Padding(
                padding: EdgeInsets.only(
                    top: 0.08.sh,
                    right: 0.08.sw,
                    bottom: 0.06.sh,
                    left: 0.08.sw),
                child: ListView(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.amber,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.amber,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.amber,
                    )
                  ],
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: position < 0.8.sh
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          scrollController.animateTo(
                            1.sh,
                            curve: Curves.easeOut,
                            duration: const Duration(milliseconds: 300),
                          );
                          print(scrollController.position.pixels);
                        },
                        child: ImageIcon(
                          AssetImage("resources/images/scroll.png"),
                          color: Color(0xffDCDEE2),
                          size: 0.1.sh,
                        ),
                      ),
                      SizedBox(
                        height: 0.02.sh,
                      ),
                      Text(
                        "scroll to discover",
                        // textAlign: TextAlign.center,
                        style: GoogleFonts.raleway(
                          fontSize: 18,
                          color: Color(0xffDCDEE2),
                        ),
                      ),
                    ],
                  )
                : Container(),
          ),
          Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(
                    top: 0.08.sh,
                    right: 0.08.sw,
                    bottom: 0.06.sh,
                    left: 0.08.sw),
                child: InkWell(
                    onTap: () {
                      scrollController.animateTo(
                        1.sh,
                        curve: Curves.easeOut,
                        duration: const Duration(milliseconds: 300),
                      );
                      print(scrollController.position.pixels);
                    },
                    child: Text(
                      "work",
                      // textAlign: TextAlign.center,
                      style: kTextStyle.copyWith(
                          color: Color(0xffDCDEE2), fontSize: 18),
                    )),
              )),
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(
                    top: 0.08.sh,
                    right: 0.08.sw,
                    bottom: 0.06.sh,
                    left: 0.08.sw),
                child: InkWell(
                    onTap: () {
                      scrollController.animateTo(
                        1.sh,
                        curve: Curves.easeOut,
                        duration: const Duration(milliseconds: 300),
                      );
                      print(scrollController.position.pixels);
                    },
                    child: Text(
                      "about",
                      // textAlign: TextAlign.center,
                      style: kTextStyle.copyWith(
                          color: Color(0xffDCDEE2), fontSize: 18),
                    )),
              )),
        ],
      ),
    );
  }
}
