import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class XDinput extends StatelessWidget {
  XDinput({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 218.0, middle: 0.5029),
            Pin(size: 93.0, middle: 0.5449),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 27.0, end: 27.0),
                  Pin(size: 21.0, end: 0.0),
                  child: Text(
                    'Please input DATA',
                    style: TextStyle(
                      fontFamily: 'Circular Std Book',
                      fontSize: 16,
                      color: const Color(0xff797979),
                      height: 1.5625,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 64.0, start: 0.0),
                  child: Text(
                    'Welcome to \nFINDFAULTPROJECT',
                    style: TextStyle(
                      fontFamily: 'Circular Std Medium',
                      fontSize: 24,
                      color: const Color(0xff1136d2),
                      height: 1.3333333333333333,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 311.0, end: 0.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffefeef7),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 22.0, end: 22.0),
                  Pin(size: 52.0, end: 27.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3.0),
                            color: const Color(0xff3a58f5),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 76.0, middle: 0.5055),
                        Pin(size: 24.0, middle: 0.4643),
                        child: Text(
                          'Continue',
                          style: TextStyle(
                            fontFamily: 'Circular Std Medium',
                            fontSize: 18,
                            color: const Color(0xffffffff),
                            letterSpacing: 0.54,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 22.0, end: 22.0),
                  Pin(size: 52.0, start: 26.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3.0),
                            color: const Color(0xffffffff),
                            border: Border.all(
                                width: 0.8, color: const Color(0xffc3d9f5)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 22.0, end: 22.0),
                  Pin(size: 52.0, middle: 0.3475),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3.0),
                            color: const Color(0xffffffff),
                            border: Border.all(
                                width: 0.8, color: const Color(0xffc3d9f5)),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 80.0, middle: 0.5),
                        Pin(size: 24.0, middle: 0.5038),
                        child: Text(
                          'TypeFault',
                          style: TextStyle(
                            fontFamily: 'Circular Std Medium',
                            fontSize: 18,
                            color: const Color(0xff797979),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 124.0, middle: 0.475),
                  Pin(size: 24.0, start: 40.4),
                  child: Text(
                    'ChooseBreaker',
                    style: TextStyle(
                      fontFamily: 'Circular Std Medium',
                      fontSize: 18,
                      color: const Color(0xff797979),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 22.0, end: 22.0),
                  Pin(size: 52.0, middle: 0.5985),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3.0),
                            color: const Color(0xffffffff),
                            border: Border.all(
                                width: 0.8, color: const Color(0xffc3d9f5)),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 144.0, middle: 0.5),
                        Pin(size: 24.0, middle: 0.4917),
                        child: Text(
                          'Maximum Current',
                          style: TextStyle(
                            fontFamily: 'Circular Std Medium',
                            fontSize: 18,
                            color: const Color(0xff797979),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 411.0, start: 0.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('images/logo.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
