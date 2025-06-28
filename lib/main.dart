import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Scrollbar(
          thumbVisibility: true, // or true, as needed
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HoverTextWidget(),
                  SizedBox(height: 32),
                  HoverTextWidget(
                    text: 'Another animated hover text!',
                    normalFontSize: 20,
                    hoverFontSize: 16,
                    normalColor: Colors.green,
                    hoverColor: Colors.red,
                  ),
                  SizedBox(height: 32),
                  HoverTextWidget(
                    text: 'Boldness increases on hover!',
                    normalFontSize: 22,
                    hoverFontSize: 22,
                    normalColor: Colors.purple,
                    hoverColor: Colors.deepPurple,
                    normalFontWeight: FontWeight.normal,
                    hoverFontWeight: FontWeight.w900,
                  ),
                  SizedBox(height: 32),
                  HoverTextWidget(
                    text: 'Underline on hover!',
                    normalFontSize: 24,
                    hoverFontSize: 24,
                    normalColor: Colors.teal,
                    hoverColor: Colors.teal,
                    normalFontWeight: FontWeight.normal,
                    hoverFontWeight: FontWeight.normal,
                    underlineOnHover: true,
                  ),
                  SizedBox(height: 32),
                  HoverTextWidget(
                    text: 'Letter spacing increases on hover!',
                    normalFontSize: 24,
                    hoverFontSize: 24,
                    normalColor: Colors.orange,
                    hoverColor: Colors.deepPurpleAccent,
                    normalFontWeight: FontWeight.normal,
                    hoverFontWeight: FontWeight.normal,
                    underlineOnHover: false,
                    normalLetterSpacing: 0.0,
                    hoverLetterSpacing: 6.0,
                  ),
                  SizedBox(height: 32),
                  HoverTextWidget(
                    text: 'Shadow on hover!',
                    normalFontSize: 24,
                    hoverFontSize: 24,
                    normalColor: Colors.brown,
                    hoverColor: Colors.brown,
                    normalFontWeight: FontWeight.normal,
                    hoverFontWeight: FontWeight.normal,
                    underlineOnHover: false,
                    normalLetterSpacing: 0.0,
                    hoverLetterSpacing: 0.0,
                    normalShadows: const [],
                    hoverShadows: const [
                      Shadow(
                        color: Colors.black54,
                        offset: Offset(2, 4),
                        blurRadius: 8,
                      ),
                    ],
                  ),
                  SizedBox(height: 32),
                  HoverRotateTextWidget(
                    text: 'Rotates slightly on hover!',
                    normalFontSize: 24,
                    hoverFontSize: 24,
                    normalColor: Colors.indigo,
                    hoverColor: Colors.indigo,
                    normalFontWeight: FontWeight.normal,
                    hoverFontWeight: FontWeight.normal,
                    underlineOnHover: false,
                    normalLetterSpacing: 0.0,
                    hoverLetterSpacing: 0.0,
                    normalShadows: const [],
                    hoverShadows: const [],
                    normalAngle: 0.0,
                    hoverAngle: 0.2,
                  ),
                  SizedBox(height: 32),
                  HoverSkewTextWidget(
                    text: 'Skews horizontally on hover!',
                    normalFontSize: 24,
                    hoverFontSize: 24,
                    normalColor: Colors.pink,
                    hoverColor: Colors.pinkAccent,
                    normalFontWeight: FontWeight.normal,
                    hoverFontWeight: FontWeight.bold,
                    underlineOnHover: false,
                    normalLetterSpacing: 0.0,
                    hoverLetterSpacing: 0.0,
                    normalShadows: const [],
                    hoverShadows: const [],
                    normalSkew: 0.0,
                    hoverSkew: 0.4,
                  ),
                  SizedBox(height: 32),
                  HoverFadeTextWidget(
                    text: 'Fades on hover!',
                    normalFontSize: 24,
                    hoverFontSize: 24,
                    normalColor: Colors.blueGrey,
                    hoverColor: Colors.blueGrey,
                    normalFontWeight: FontWeight.normal,
                    hoverFontWeight: FontWeight.normal,
                    underlineOnHover: false,
                    normalLetterSpacing: 0.0,
                    hoverLetterSpacing: 0.0,
                    normalShadows: const [],
                    hoverShadows: const [],
                    normalOpacity: 1.0,
                    hoverOpacity: 0.4,
                  ),
                  SizedBox(height: 32),
                  HoverScaleTextWidget(
                    text: 'Scales up (zooms in) on hover!',
                    normalFontSize: 24,
                    hoverFontSize: 24,
                    normalColor: Colors.teal,
                    hoverColor: Colors.teal,
                    normalFontWeight: FontWeight.normal,
                    hoverFontWeight: FontWeight.bold,
                    underlineOnHover: false,
                    normalLetterSpacing: 0.0,
                    hoverLetterSpacing: 0.0,
                    normalShadows: const [],
                    hoverShadows: const [],
                    normalScale: 1.0,
                    hoverScale: 1.3,
                  ),
                  SizedBox(height: 32),
                  HoverFlickerTextWidget(
                    text: 'Flickers on hover!',
                    normalFontSize: 24,
                    hoverFontSize: 24,
                    normalColor: Colors.deepPurple,
                    hoverColor: Colors.deepPurple,
                    normalFontWeight: FontWeight.normal,
                    hoverFontWeight: FontWeight.bold,
                    underlineOnHover: false,
                    normalLetterSpacing: 0.0,
                    hoverLetterSpacing: 0.0,
                    normalShadows: const [],
                    hoverShadows: const [],
                  ),
                  SizedBox(height: 32),
                  HoverSlideUpTextWidget(
                    text: 'Slides slightly up on hover!',
                    normalFontSize: 24,
                    hoverFontSize: 24,
                    normalColor: Colors.blueAccent,
                    hoverColor: Colors.blueAccent,
                    normalFontWeight: FontWeight.normal,
                    hoverFontWeight: FontWeight.bold,
                    underlineOnHover: false,
                    normalLetterSpacing: 0.0,
                    hoverLetterSpacing: 0.0,
                    normalShadows: const [],
                    hoverShadows: const [],
                    normalOffset: 0.0,
                    hoverOffset: -16.0,
                  ),
                  SizedBox(height: 32),
                  HoverTextWidget(
                    text: 'Neon Glow on Hover!',
                    normalFontSize: 24,
                    hoverFontSize: 24,
                    normalColor: Colors.white,
                    hoverColor: Colors.cyanAccent,
                    normalFontWeight: FontWeight.normal,
                    hoverFontWeight: FontWeight.bold,
                    underlineOnHover: false,
                    normalLetterSpacing: 0.0,
                    hoverLetterSpacing: 0.0,
                    normalShadows: const [
                      Shadow(
                        color: Colors.transparent,
                        blurRadius: 0,
                        offset: Offset(0, 0),
                      ),
                    ],
                    hoverShadows: const [
                      Shadow(
                        color: Colors.cyanAccent,
                        blurRadius: 18,
                        offset: Offset(0, 0),
                      ),
                      Shadow(
                        color: Colors.blueAccent,
                        blurRadius: 32,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  SizedBox(height: 32),
                  HoverFlipTextWidget(
                    text: 'Flips vertically on hover!',
                    normalFontSize: 24,
                    hoverFontSize: 24,
                    normalColor: Colors.deepOrange,
                    hoverColor: Colors.deepOrange,
                    normalFontWeight: FontWeight.normal,
                    hoverFontWeight: FontWeight.bold,
                    underlineOnHover: false,
                    normalLetterSpacing: 0.0,
                    hoverLetterSpacing: 0.0,
                    normalShadows: const [],
                    hoverShadows: const [],
                  ),
                  SizedBox(height: 32),
                  HoverWobbleTextWidget(
                    text: 'Wobbles (Jelly Effect) on hover!',
                    normalFontSize: 24,
                    hoverFontSize: 24,
                    normalColor: Colors.purple,
                    hoverColor: Colors.purple,
                    normalFontWeight: FontWeight.normal,
                    hoverFontWeight: FontWeight.bold,
                    underlineOnHover: false,
                    normalLetterSpacing: 0.0,
                    hoverLetterSpacing: 0.0,
                    normalShadows: const [],
                    hoverShadows: const [],
                  ),
                  SizedBox(height: 32),
                  HoverBounceTextWidget(
                    text: 'Bounces on hover!',
                    normalFontSize: 24,
                    hoverFontSize: 24,
                    normalColor: Colors.green,
                    hoverColor: Colors.green,
                    normalFontWeight: FontWeight.normal,
                    hoverFontWeight: FontWeight.bold,
                    underlineOnHover: false,
                    normalLetterSpacing: 0.0,
                    hoverLetterSpacing: 0.0,
                    normalShadows: const [],
                    hoverShadows: const [],
                  ),
                  SizedBox(height: 32),
                  HoverGradientTextWidget(
                    text: 'Gradient Text Appears on Hover!',
                    normalFontSize: 24,
                    hoverFontSize: 24,
                    normalFontWeight: FontWeight.normal,
                    hoverFontWeight: FontWeight.bold,
                    normalGradient: null,
                    hoverGradient: LinearGradient(
                      colors: [Colors.pink, Colors.orange, Colors.yellow],
                    ),
                  ),
                  SizedBox(height: 32),
                  HoverStrokeFillTextWidget(
                    text: 'Stroke Expands (stroke to fill) on Hover!',
                    normalFontSize: 24,
                    hoverFontSize: 24,
                    normalColor: Colors.black,
                    hoverColor: Colors.blue,
                    normalStrokeWidth: 2.5,
                    hoverStrokeWidth: 0.0,
                  ),
                  SizedBox(height: 32),
                  HoverBlurTextWidget(
                    text: 'Blurs slightly on hover!',
                    normalFontSize: 24,
                    hoverFontSize: 24,
                    normalColor: Colors.black,
                    hoverColor: Colors.black,
                    normalFontWeight: FontWeight.normal,
                    hoverFontWeight: FontWeight.bold,
                    underlineOnHover: false,
                    normalLetterSpacing: 0.0,
                    hoverLetterSpacing: 0.0,
                    normalBlur: 0.0,
                    hoverBlur: 4.0,
                  ),
                  SizedBox(height: 32),
                  HoverAnimatedGradientTextWidget(
                    text: 'Color Changes with Animated Gradient on Hover!',
                    normalFontSize: 24,
                    hoverFontSize: 24,
                    normalFontWeight: FontWeight.normal,
                    hoverFontWeight: FontWeight.bold,
                    normalGradient: LinearGradient(
                      colors: [Colors.blueGrey, Colors.blueGrey],
                    ),
                    hoverGradient: LinearGradient(
                      colors: [Colors.purple, Colors.blue, Colors.cyan],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HoverTextWidget extends StatefulWidget {
  final String text;
  final double normalFontSize;
  final double hoverFontSize;
  final Color normalColor;
  final Color hoverColor;
  final FontWeight normalFontWeight;
  final FontWeight hoverFontWeight;
  final bool underlineOnHover;
  final double normalLetterSpacing;
  final double hoverLetterSpacing;
  final List<Shadow> normalShadows;
  final List<Shadow> hoverShadows;

  const HoverTextWidget({
    this.text = 'Hover over me!',
    this.normalFontSize = 24,
    this.hoverFontSize = 32,
    this.normalColor = Colors.black,
    this.hoverColor = Colors.blue,
    this.normalFontWeight = FontWeight.normal,
    this.hoverFontWeight = FontWeight.bold,
    this.underlineOnHover = false,
    this.normalLetterSpacing = 0.0,
    this.hoverLetterSpacing = 0.0,
    this.normalShadows = const [],
    this.hoverShadows = const [],
    Key? key,
  }) : super(key: key);

  @override
  _HoverTextWidgetState createState() => _HoverTextWidgetState();
}

class _HoverTextWidgetState extends State<HoverTextWidget> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: AnimatedDefaultTextStyle(
        duration: Duration(milliseconds: 300),
        style: TextStyle(
          fontSize: isHovered ? widget.hoverFontSize : widget.normalFontSize,
          color: isHovered ? widget.hoverColor : widget.normalColor,
          fontWeight: isHovered ? widget.hoverFontWeight : widget.normalFontWeight,
          decoration: widget.underlineOnHover && isHovered ? TextDecoration.underline : TextDecoration.none,
          letterSpacing: isHovered ? widget.hoverLetterSpacing : widget.normalLetterSpacing,
          shadows: isHovered ? widget.hoverShadows : widget.normalShadows,
        ),
        child: Text(widget.text),
      ),
    );
  }
}

class HoverRotateTextWidget extends StatefulWidget {
  final String text;
  final double normalFontSize;
  final double hoverFontSize;
  final Color normalColor;
  final Color hoverColor;
  final FontWeight normalFontWeight;
  final FontWeight hoverFontWeight;
  final bool underlineOnHover;
  final double normalLetterSpacing;
  final double hoverLetterSpacing;
  final List<Shadow> normalShadows;
  final List<Shadow> hoverShadows;
  final double normalAngle;
  final double hoverAngle;

  const HoverRotateTextWidget({
    this.text = 'Hover over me!',
    this.normalFontSize = 24,
    this.hoverFontSize = 32,
    this.normalColor = Colors.black,
    this.hoverColor = Colors.blue,
    this.normalFontWeight = FontWeight.normal,
    this.hoverFontWeight = FontWeight.bold,
    this.underlineOnHover = false,
    this.normalLetterSpacing = 0.0,
    this.hoverLetterSpacing = 0.0,
    this.normalShadows = const [],
    this.hoverShadows = const [],
    this.normalAngle = 0.0,
    this.hoverAngle = 0.2,
    Key? key,
  }) : super(key: key);

  @override
  _HoverRotateTextWidgetState createState() => _HoverRotateTextWidgetState();
}

class _HoverRotateTextWidgetState extends State<HoverRotateTextWidget> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: AnimatedRotation(
        turns: isHovered ? widget.hoverAngle : widget.normalAngle,
        duration: Duration(milliseconds: 300),
        child: AnimatedDefaultTextStyle(
          duration: Duration(milliseconds: 300),
          style: TextStyle(
            fontSize: isHovered ? widget.hoverFontSize : widget.normalFontSize,
            color: isHovered ? widget.hoverColor : widget.normalColor,
            fontWeight: isHovered ? widget.hoverFontWeight : widget.normalFontWeight,
            decoration: widget.underlineOnHover && isHovered ? TextDecoration.underline : TextDecoration.none,
            letterSpacing: isHovered ? widget.hoverLetterSpacing : widget.normalLetterSpacing,
            shadows: isHovered ? widget.hoverShadows : widget.normalShadows,
          ),
          child: Text(widget.text),
        ),
      ),
    );
  }
}

class HoverSkewTextWidget extends StatefulWidget {
  final String text;
  final double normalFontSize;
  final double hoverFontSize;
  final Color normalColor;
  final Color hoverColor;
  final FontWeight normalFontWeight;
  final FontWeight hoverFontWeight;
  final bool underlineOnHover;
  final double normalLetterSpacing;
  final double hoverLetterSpacing;
  final List<Shadow> normalShadows;
  final List<Shadow> hoverShadows;
  final double normalSkew;
  final double hoverSkew;

  const HoverSkewTextWidget({
    this.text = 'Hover over me!',
    this.normalFontSize = 24,
    this.hoverFontSize = 32,
    this.normalColor = Colors.black,
    this.hoverColor = Colors.blue,
    this.normalFontWeight = FontWeight.normal,
    this.hoverFontWeight = FontWeight.bold,
    this.underlineOnHover = false,
    this.normalLetterSpacing = 0.0,
    this.hoverLetterSpacing = 0.0,
    this.normalShadows = const [],
    this.hoverShadows = const [],
    this.normalSkew = 0.0,
    this.hoverSkew = 0.4,
    Key? key,
  }) : super(key: key);

  @override
  _HoverSkewTextWidgetState createState() => _HoverSkewTextWidgetState();
}

class _HoverSkewTextWidgetState extends State<HoverSkewTextWidget> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        transform: Matrix4.skewX(isHovered ? widget.hoverSkew : widget.normalSkew),
        child: AnimatedDefaultTextStyle(
          duration: Duration(milliseconds: 300),
          style: TextStyle(
            fontSize: isHovered ? widget.hoverFontSize : widget.normalFontSize,
            color: isHovered ? widget.hoverColor : widget.normalColor,
            fontWeight: isHovered ? widget.hoverFontWeight : widget.normalFontWeight,
            decoration: widget.underlineOnHover && isHovered ? TextDecoration.underline : TextDecoration.none,
            letterSpacing: isHovered ? widget.hoverLetterSpacing : widget.normalLetterSpacing,
            shadows: isHovered ? widget.hoverShadows : widget.normalShadows,
          ),
          child: Text(widget.text),
        ),
      ),
    );
  }
}

class HoverFadeTextWidget extends StatefulWidget {
  final String text;
  final double normalFontSize;
  final double hoverFontSize;
  final Color normalColor;
  final Color hoverColor;
  final FontWeight normalFontWeight;
  final FontWeight hoverFontWeight;
  final bool underlineOnHover;
  final double normalLetterSpacing;
  final double hoverLetterSpacing;
  final List<Shadow> normalShadows;
  final List<Shadow> hoverShadows;
  final double normalOpacity;
  final double hoverOpacity;

  const HoverFadeTextWidget({
    this.text = 'Hover over me!',
    this.normalFontSize = 24,
    this.hoverFontSize = 32,
    this.normalColor = Colors.black,
    this.hoverColor = Colors.blue,
    this.normalFontWeight = FontWeight.normal,
    this.hoverFontWeight = FontWeight.bold,
    this.underlineOnHover = false,
    this.normalLetterSpacing = 0.0,
    this.hoverLetterSpacing = 0.0,
    this.normalShadows = const [],
    this.hoverShadows = const [],
    this.normalOpacity = 1.0,
    this.hoverOpacity = 0.5,
    Key? key,
  }) : super(key: key);

  @override
  _HoverFadeTextWidgetState createState() => _HoverFadeTextWidgetState();
}

class _HoverFadeTextWidgetState extends State<HoverFadeTextWidget> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedOpacity(
        duration: Duration(milliseconds: 300),
        opacity: isHovered ? widget.hoverOpacity : widget.normalOpacity,
        child: AnimatedDefaultTextStyle(
          duration: Duration(milliseconds: 300),
          style: TextStyle(
            fontSize: isHovered ? widget.hoverFontSize : widget.normalFontSize,
            color: isHovered ? widget.hoverColor : widget.normalColor,
            fontWeight: isHovered ? widget.hoverFontWeight : widget.normalFontWeight,
            decoration: widget.underlineOnHover && isHovered ? TextDecoration.underline : TextDecoration.none,
            letterSpacing: isHovered ? widget.hoverLetterSpacing : widget.normalLetterSpacing,
            shadows: isHovered ? widget.hoverShadows : widget.normalShadows,
          ),
          child: Text(widget.text),
        ),
      ),
    );
  }
}

class HoverScaleTextWidget extends StatefulWidget {
  final String text;
  final double normalFontSize;
  final double hoverFontSize;
  final Color normalColor;
  final Color hoverColor;
  final FontWeight normalFontWeight;
  final FontWeight hoverFontWeight;
  final bool underlineOnHover;
  final double normalLetterSpacing;
  final double hoverLetterSpacing;
  final List<Shadow> normalShadows;
  final List<Shadow> hoverShadows;
  final double normalScale;
  final double hoverScale;

  const HoverScaleTextWidget({
    this.text = 'Hover over me!',
    this.normalFontSize = 24,
    this.hoverFontSize = 32,
    this.normalColor = Colors.black,
    this.hoverColor = Colors.blue,
    this.normalFontWeight = FontWeight.normal,
    this.hoverFontWeight = FontWeight.bold,
    this.underlineOnHover = false,
    this.normalLetterSpacing = 0.0,
    this.hoverLetterSpacing = 0.0,
    this.normalShadows = const [],
    this.hoverShadows = const [],
    this.normalScale = 1.0,
    this.hoverScale = 1.2,
    Key? key,
  }) : super(key: key);

  @override
  _HoverScaleTextWidgetState createState() => _HoverScaleTextWidgetState();
}

class _HoverScaleTextWidgetState extends State<HoverScaleTextWidget> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedScale(
        scale: isHovered ? widget.hoverScale : widget.normalScale,
        duration: Duration(milliseconds: 300),
        child: AnimatedDefaultTextStyle(
          duration: Duration(milliseconds: 300),
          style: TextStyle(
            fontSize: isHovered ? widget.hoverFontSize : widget.normalFontSize,
            color: isHovered ? widget.hoverColor : widget.normalColor,
            fontWeight: isHovered ? widget.hoverFontWeight : widget.normalFontWeight,
            decoration: widget.underlineOnHover && isHovered ? TextDecoration.underline : TextDecoration.none,
            letterSpacing: isHovered ? widget.hoverLetterSpacing : widget.normalLetterSpacing,
            shadows: isHovered ? widget.hoverShadows : widget.normalShadows,
          ),
          child: Text(widget.text),
        ),
      ),
    );
  }
}

class HoverFlickerTextWidget extends StatefulWidget {
  final String text;
  final double normalFontSize;
  final double hoverFontSize;
  final Color normalColor;
  final Color hoverColor;
  final FontWeight normalFontWeight;
  final FontWeight hoverFontWeight;
  final bool underlineOnHover;
  final double normalLetterSpacing;
  final double hoverLetterSpacing;
  final List<Shadow> normalShadows;
  final List<Shadow> hoverShadows;

  const HoverFlickerTextWidget({
    this.text = 'Hover over me!',
    this.normalFontSize = 24,
    this.hoverFontSize = 24,
    this.normalColor = Colors.black,
    this.hoverColor = Colors.blue,
    this.normalFontWeight = FontWeight.normal,
    this.hoverFontWeight = FontWeight.bold,
    this.underlineOnHover = false,
    this.normalLetterSpacing = 0.0,
    this.hoverLetterSpacing = 0.0,
    this.normalShadows = const [],
    this.hoverShadows = const [],
    Key? key,
  }) : super(key: key);

  @override
  _HoverFlickerTextWidgetState createState() => _HoverFlickerTextWidgetState();
}

class _HoverFlickerTextWidgetState extends State<HoverFlickerTextWidget>
    with SingleTickerProviderStateMixin {
  bool isHovered = false;
  late AnimationController _controller;
  late Animation<double> _opacityAnim;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 400),
      vsync: this,
    );
    _opacityAnim = TweenSequence([
      TweenSequenceItem(tween: Tween(begin: 1.0, end: 0.2), weight: 1),
      TweenSequenceItem(tween: Tween(begin: 0.2, end: 1.0), weight: 1),
      TweenSequenceItem(tween: Tween(begin: 1.0, end: 0.5), weight: 1),
      TweenSequenceItem(tween: Tween(begin: 0.5, end: 1.0), weight: 1),
    ]).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onEnter(PointerEnterEvent event) {
    setState(() {
      isHovered = true;
    });
    _controller.repeat();
  }

  void _onExit(PointerExitEvent event) {
    setState(() {
      isHovered = false;
    });
    _controller.reset();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: _onEnter,
      onExit: _onExit,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Opacity(
            opacity: isHovered ? _opacityAnim.value : 1.0,
            child: AnimatedDefaultTextStyle(
              duration: Duration(milliseconds: 200),
              style: TextStyle(
                fontSize: isHovered ? widget.hoverFontSize : widget.normalFontSize,
                color: isHovered ? widget.hoverColor : widget.normalColor,
                fontWeight: isHovered ? widget.hoverFontWeight : widget.normalFontWeight,
                decoration: widget.underlineOnHover && isHovered
                    ? TextDecoration.underline
                    : TextDecoration.none,
                letterSpacing: isHovered
                    ? widget.hoverLetterSpacing
                    : widget.normalLetterSpacing,
                shadows: isHovered ? widget.hoverShadows : widget.normalShadows,
              ),
              child: Text(widget.text),
            ),
          );
        },
      ),
    );
  }
}

class HoverSlideUpTextWidget extends StatefulWidget {
  final String text;
  final double normalFontSize;
  final double hoverFontSize;
  final Color normalColor;
  final Color hoverColor;
  final FontWeight normalFontWeight;
  final FontWeight hoverFontWeight;
  final bool underlineOnHover;
  final double normalLetterSpacing;
  final double hoverLetterSpacing;
  final List<Shadow> normalShadows;
  final List<Shadow> hoverShadows;
  final double normalOffset;
  final double hoverOffset;

  const HoverSlideUpTextWidget({
    this.text = 'Hover over me!',
    this.normalFontSize = 24,
    this.hoverFontSize = 32,
    this.normalColor = Colors.black,
    this.hoverColor = Colors.blue,
    this.normalFontWeight = FontWeight.normal,
    this.hoverFontWeight = FontWeight.bold,
    this.underlineOnHover = false,
    this.normalLetterSpacing = 0.0,
    this.hoverLetterSpacing = 0.0,
    this.normalShadows = const [],
    this.hoverShadows = const [],
    this.normalOffset = 0.0,
    this.hoverOffset = -16.0,
    Key? key,
  }) : super(key: key);

  @override
  _HoverSlideUpTextWidgetState createState() => _HoverSlideUpTextWidgetState();
}

class _HoverSlideUpTextWidgetState extends State<HoverSlideUpTextWidget> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        transform: Matrix4.translationValues(
          0,
          isHovered ? widget.hoverOffset : widget.normalOffset,
          0,
        ),
        child: AnimatedDefaultTextStyle(
          duration: Duration(milliseconds: 300),
          style: TextStyle(
            fontSize: isHovered ? widget.hoverFontSize : widget.normalFontSize,
            color: isHovered ? widget.hoverColor : widget.normalColor,
            fontWeight: isHovered ? widget.hoverFontWeight : widget.normalFontWeight,
            decoration: widget.underlineOnHover && isHovered ? TextDecoration.underline : TextDecoration.none,
            letterSpacing: isHovered ? widget.hoverLetterSpacing : widget.normalLetterSpacing,
            shadows: isHovered ? widget.hoverShadows : widget.normalShadows,
          ),
          child: Text(widget.text),
        ),
      ),
    );
  }
}

class HoverFlipTextWidget extends StatefulWidget {
  final String text;
  final double normalFontSize;
  final double hoverFontSize;
  final Color normalColor;
  final Color hoverColor;
  final FontWeight normalFontWeight;
  final FontWeight hoverFontWeight;
  final bool underlineOnHover;
  final double normalLetterSpacing;
  final double hoverLetterSpacing;
  final List<Shadow> normalShadows;
  final List<Shadow> hoverShadows;

  const HoverFlipTextWidget({
    this.text = 'Hover over me!',
    this.normalFontSize = 24,
    this.hoverFontSize = 24,
    this.normalColor = Colors.black,
    this.hoverColor = Colors.blue,
    this.normalFontWeight = FontWeight.normal,
    this.hoverFontWeight = FontWeight.bold,
    this.underlineOnHover = false,
    this.normalLetterSpacing = 0.0,
    this.hoverLetterSpacing = 0.0,
    this.normalShadows = const [],
    this.hoverShadows = const [],
    Key? key,
  }) : super(key: key);

  @override
  _HoverFlipTextWidgetState createState() => _HoverFlipTextWidgetState();
}

class _HoverFlipTextWidgetState extends State<HoverFlipTextWidget> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 400),
        transform: Matrix4.identity()
          ..rotateX(isHovered ? 3.1416 : 0), // 180 degrees in radians
        alignment: Alignment.center,
        child: AnimatedDefaultTextStyle(
          duration: Duration(milliseconds: 400),
          style: TextStyle(
            fontSize: isHovered ? widget.hoverFontSize : widget.normalFontSize,
            color: isHovered ? widget.hoverColor : widget.normalColor,
            fontWeight: isHovered ? widget.hoverFontWeight : widget.normalFontWeight,
            decoration: widget.underlineOnHover && isHovered ? TextDecoration.underline : TextDecoration.none,
            letterSpacing: isHovered ? widget.hoverLetterSpacing : widget.normalLetterSpacing,
            shadows: isHovered ? widget.hoverShadows : widget.normalShadows,
          ),
          child: Text(widget.text),
        ),
      ),
    );
  }
}

class HoverWobbleTextWidget extends StatefulWidget {
  final String text;
  final double normalFontSize;
  final double hoverFontSize;
  final Color normalColor;
  final Color hoverColor;
  final FontWeight normalFontWeight;
  final FontWeight hoverFontWeight;
  final bool underlineOnHover;
  final double normalLetterSpacing;
  final double hoverLetterSpacing;
  final List<Shadow> normalShadows;
  final List<Shadow> hoverShadows;

  const HoverWobbleTextWidget({
    this.text = 'Hover over me!',
    this.normalFontSize = 24,
    this.hoverFontSize = 24,
    this.normalColor = Colors.black,
    this.hoverColor = Colors.blue,
    this.normalFontWeight = FontWeight.normal,
    this.hoverFontWeight = FontWeight.bold,
    this.underlineOnHover = false,
    this.normalLetterSpacing = 0.0,
    this.hoverLetterSpacing = 0.0,
    this.normalShadows = const [],
    this.hoverShadows = const [],
    Key? key,
  }) : super(key: key);

  @override
  _HoverWobbleTextWidgetState createState() => _HoverWobbleTextWidgetState();
}

class _HoverWobbleTextWidgetState extends State<HoverWobbleTextWidget>
    with SingleTickerProviderStateMixin {
  bool isHovered = false;
  late AnimationController _controller;
  late Animation<double> _scaleAnim;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );
    _scaleAnim = TweenSequence([
      TweenSequenceItem(tween: Tween(begin: 1.0, end: 1.2), weight: 1),
      TweenSequenceItem(tween: Tween(begin: 1.2, end: 0.9), weight: 1),
      TweenSequenceItem(tween: Tween(begin: 0.9, end: 1.05), weight: 1),
      TweenSequenceItem(tween: Tween(begin: 1.05, end: 1.0), weight: 1),
    ]).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onEnter(PointerEnterEvent event) {
    setState(() {
      isHovered = true;
    });
    _controller.forward(from: 0.0);
  }

  void _onExit(PointerExitEvent event) {
    setState(() {
      isHovered = false;
    });
    _controller.reset();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: _onEnter,
      onExit: _onExit,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          double scale = isHovered ? _scaleAnim.value : 1.0;
          return Transform.scale(
            scale: scale,
            child: AnimatedDefaultTextStyle(
              duration: Duration(milliseconds: 200),
              style: TextStyle(
                fontSize: isHovered ? widget.hoverFontSize : widget.normalFontSize,
                color: isHovered ? widget.hoverColor : widget.normalColor,
                fontWeight: isHovered ? widget.hoverFontWeight : widget.normalFontWeight,
                decoration: widget.underlineOnHover && isHovered
                    ? TextDecoration.underline
                    : TextDecoration.none,
                letterSpacing: isHovered
                    ? widget.hoverLetterSpacing
                    : widget.normalLetterSpacing,
                shadows: isHovered ? widget.hoverShadows : widget.normalShadows,
              ),
              child: Text(widget.text),
            ),
          );
        },
      ),
    );
  }
}

class HoverBounceTextWidget extends StatefulWidget {
  final String text;
  final double normalFontSize;
  final double hoverFontSize;
  final Color normalColor;
  final Color hoverColor;
  final FontWeight normalFontWeight;
  final FontWeight hoverFontWeight;
  final bool underlineOnHover;
  final double normalLetterSpacing;
  final double hoverLetterSpacing;
  final List<Shadow> normalShadows;
  final List<Shadow> hoverShadows;

  const HoverBounceTextWidget({
    this.text = 'Hover over me!',
    this.normalFontSize = 24,
    this.hoverFontSize = 24,
    this.normalColor = Colors.black,
    this.hoverColor = Colors.blue,
    this.normalFontWeight = FontWeight.normal,
    this.hoverFontWeight = FontWeight.bold,
    this.underlineOnHover = false,
    this.normalLetterSpacing = 0.0,
    this.hoverLetterSpacing = 0.0,
    this.normalShadows = const [],
    this.hoverShadows = const [],
    Key? key,
  }) : super(key: key);

  @override
  _HoverBounceTextWidgetState createState() => _HoverBounceTextWidgetState();
}

class _HoverBounceTextWidgetState extends State<HoverBounceTextWidget>
    with SingleTickerProviderStateMixin {
  bool isHovered = false;
  late AnimationController _controller;
  late Animation<double> _bounceAnim;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );
    _bounceAnim = TweenSequence([
      TweenSequenceItem(tween: Tween(begin: 0.0, end: -20.0), weight: 1),
      TweenSequenceItem(tween: Tween(begin: -20.0, end: 0.0), weight: 1),
      TweenSequenceItem(tween: Tween(begin: 0.0, end: -10.0), weight: 1),
      TweenSequenceItem(tween: Tween(begin: -10.0, end: 0.0), weight: 1),
    ]).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onEnter(PointerEnterEvent event) {
    setState(() {
      isHovered = true;
    });
    _controller.forward(from: 0.0);
  }

  void _onExit(PointerExitEvent event) {
    setState(() {
      isHovered = false;
    });
    _controller.reset();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: _onEnter,
      onExit: _onExit,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          double translateY = isHovered ? _bounceAnim.value : 0.0;
          return Transform.translate(
            offset: Offset(0, translateY),
            child: AnimatedDefaultTextStyle(
              duration: Duration(milliseconds: 200),
              style: TextStyle(
                fontSize: isHovered ? widget.hoverFontSize : widget.normalFontSize,
                color: isHovered ? widget.hoverColor : widget.normalColor,
                fontWeight: isHovered ? widget.hoverFontWeight : widget.normalFontWeight,
                decoration: widget.underlineOnHover && isHovered
                    ? TextDecoration.underline
                    : TextDecoration.none,
                letterSpacing: isHovered
                    ? widget.hoverLetterSpacing
                    : widget.normalLetterSpacing,
                shadows: isHovered ? widget.hoverShadows : widget.normalShadows,
              ),
              child: Text(widget.text),
            ),
          );
        },
      ),
    );
  }
}

class HoverGradientTextWidget extends StatefulWidget {
  final String text;
  final double normalFontSize;
  final double hoverFontSize;
  final FontWeight normalFontWeight;
  final FontWeight hoverFontWeight;
  final Gradient? normalGradient;
  final Gradient? hoverGradient;

  const HoverGradientTextWidget({
    this.text = 'Hover over me!',
    this.normalFontSize = 24,
    this.hoverFontSize = 24,
    this.normalFontWeight = FontWeight.normal,
    this.hoverFontWeight = FontWeight.bold,
    this.normalGradient,
    this.hoverGradient,
    Key? key,
  }) : super(key: key);

  @override
  State<HoverGradientTextWidget> createState() => _HoverGradientTextWidgetState();
}

class _HoverGradientTextWidgetState extends State<HoverGradientTextWidget> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final gradient = isHovered ? widget.hoverGradient : widget.normalGradient;
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedDefaultTextStyle(
        duration: Duration(milliseconds: 300),
        style: TextStyle(
          fontSize: isHovered ? widget.hoverFontSize : widget.normalFontSize,
          fontWeight: isHovered ? widget.hoverFontWeight : widget.normalFontWeight,
          foreground: gradient != null
              ? (Paint()..shader = gradient.createShader(Rect.fromLTWH(0, 0, 300, 50)))
              : null,
          color: gradient == null ? Colors.black : null,
        ),
        child: Text(widget.text),
      ),
    );
  }
}

class HoverStrokeFillTextWidget extends StatefulWidget {
  final String text;
  final double normalFontSize;
  final double hoverFontSize;
  final Color normalColor;
  final Color hoverColor;
  final double normalStrokeWidth;
  final double hoverStrokeWidth;

  const HoverStrokeFillTextWidget({
    this.text = 'Hover over me!',
    this.normalFontSize = 24,
    this.hoverFontSize = 24,
    this.normalColor = Colors.black,
    this.hoverColor = Colors.blue,
    this.normalStrokeWidth = 2.5,
    this.hoverStrokeWidth = 0.0,
    Key? key,
  }) : super(key: key);

  @override
  State<HoverStrokeFillTextWidget> createState() => _HoverStrokeFillTextWidgetState();
}

class _HoverStrokeFillTextWidgetState extends State<HoverStrokeFillTextWidget> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: TweenAnimationBuilder<double>(
        tween: Tween<double>(
          begin: widget.normalStrokeWidth,
          end: isHovered ? widget.hoverStrokeWidth : widget.normalStrokeWidth,
        ),
        duration: Duration(milliseconds: 300),
        builder: (context, strokeWidth, child) {
          return Stack(
            alignment: Alignment.center,
            children: [
              // Stroke
              Text(
                widget.text,
                style: TextStyle(
                  fontSize: widget.normalFontSize,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = strokeWidth
                    ..color = widget.normalColor,
                ),
              ),
              // Fill (appears on hover)
              AnimatedDefaultTextStyle(
                duration: Duration(milliseconds: 300),
                style: TextStyle(
                  fontSize: widget.hoverFontSize,
                  color: isHovered ? widget.hoverColor : Colors.transparent,
                ),
                child: Text(widget.text),
              ),
            ],
          );
        },
      ),
    );
  }
}

class HoverBlurTextWidget extends StatefulWidget {
  final String text;
  final double normalFontSize;
  final double hoverFontSize;
  final Color normalColor;
  final Color hoverColor;
  final FontWeight normalFontWeight;
  final FontWeight hoverFontWeight;
  final bool underlineOnHover;
  final double normalLetterSpacing;
  final double hoverLetterSpacing;
  final double normalBlur;
  final double hoverBlur;

  const HoverBlurTextWidget({
    this.text = 'Hover over me!',
    this.normalFontSize = 24,
    this.hoverFontSize = 24,
    this.normalColor = Colors.black,
    this.hoverColor = Colors.black,
    this.normalFontWeight = FontWeight.normal,
    this.hoverFontWeight = FontWeight.bold,
    this.underlineOnHover = false,
    this.normalLetterSpacing = 0.0,
    this.hoverLetterSpacing = 0.0,
    this.normalBlur = 0.0,
    this.hoverBlur = 4.0,
    Key? key,
  }) : super(key: key);

  @override
  State<HoverBlurTextWidget> createState() => _HoverBlurTextWidgetState();
}

class _HoverBlurTextWidgetState extends State<HoverBlurTextWidget> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final blurValue = isHovered ? widget.hoverBlur : widget.normalBlur;
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedDefaultTextStyle(
        duration: Duration(milliseconds: 300),
        style: TextStyle(
          fontSize: isHovered ? widget.hoverFontSize : widget.normalFontSize,
          color: isHovered ? widget.hoverColor : widget.normalColor,
          fontWeight: isHovered ? widget.hoverFontWeight : widget.normalFontWeight,
          decoration: widget.underlineOnHover && isHovered ? TextDecoration.underline : TextDecoration.none,
          letterSpacing: isHovered ? widget.hoverLetterSpacing : widget.normalLetterSpacing,
        ),
        child: blurValue > 0
            ? ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaX: blurValue, sigmaY: blurValue),
                child: Text(widget.text),
              )
            : Text(widget.text),
      ),
    );
  }
}

class HoverAnimatedGradientTextWidget extends StatefulWidget {
  // The text to display
  final String text;
  // Font size when not hovered
  final double normalFontSize;
  // Font size when hovered
  final double hoverFontSize;
  // Font weight when not hovered
  final FontWeight normalFontWeight;
  // Font weight when hovered
  final FontWeight hoverFontWeight;
  // Gradient for normal state
  final Gradient normalGradient;
  // Gradient for hover state
  final Gradient hoverGradient;

  // Constructor with required and default values
  const HoverAnimatedGradientTextWidget({
    this.text = 'Hover over me!',
    this.normalFontSize = 24,
    this.hoverFontSize = 24,
    this.normalFontWeight = FontWeight.normal,
    this.hoverFontWeight = FontWeight.bold,
    required this.normalGradient,
    required this.hoverGradient,
    Key? key,
  }) : super(key: key);

  @override
  State<HoverAnimatedGradientTextWidget> createState() => _HoverAnimatedGradientTextWidgetState();
}

class _HoverAnimatedGradientTextWidgetState extends State<HoverAnimatedGradientTextWidget> {
  // Tracks whether the mouse is hovering over the widget
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    // Choose the gradient based on hover state
    final gradient = isHovered ? widget.hoverGradient : widget.normalGradient;
    return MouseRegion(
      // When mouse enters, set isHovered to true
      onEnter: (_) => setState(() => isHovered = true),
      // When mouse exits, set isHovered to false
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedContainer(
        // Animate changes over 400 milliseconds
        duration: Duration(milliseconds: 400),
        child: ShaderMask(
          // Apply the gradient as a shader to the text
          shaderCallback: (Rect bounds) {
            // Create the shader for the current bounds
            return gradient.createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height));
          },
          child: AnimatedDefaultTextStyle(
            // Animate text style changes over 400 milliseconds
            duration: Duration(milliseconds: 400),
            style: TextStyle(
              // Animate font size
              fontSize: isHovered ? widget.hoverFontSize : widget.normalFontSize,
              // Animate font weight
              fontWeight: isHovered ? widget.hoverFontWeight : widget.normalFontWeight,
              // Text color is white, but will be replaced by the gradient shader
              color: Colors.white,
            ),
            // The actual text to display
            child: Text(widget.text),
          ),
        ),
      ),
    );
  }
}
