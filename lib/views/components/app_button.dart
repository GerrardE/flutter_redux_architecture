import 'package:flutter_redux_architecture/utils/index.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  @required
  final Function onTap;
  final String buttonText;
  final Color color;
  final double elevation;
  final double minWidth;
  final double height;
  final double fontSize;
  final ShapeBorder shape;

  AppButton(
      {this.buttonText: 'BUTTON',
      this.color: const Color(0xFF6558F5),
      this.elevation: 2.0,
      this.minWidth: 278,
      this.height: 36,
      this.fontSize: 12,
      this.onTap,
      this.shape});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: minWidth,
      height: height,
      child: MaterialButton(
        onPressed: onTap,
        elevation: elevation,
        height: height,
        child: Center(
            child: Text(buttonText,
                style: TextStyle(
                  fontSize: fontSize,
                ))),
        textColor: Colors.white,
        shape: shape,
        color: color,
      ),
    );
  }
}

class AppButtonBorder extends StatelessWidget {
  final String text;
  final Color color;
  final double width;
  final Function onPressed;
  final Color textColor;
  final double screenWidth;
  const AppButtonBorder({
    this.text,
    this.color: const Color(0xFF6558F5),
    this.width: 2,
    @required this.screenWidth,
    this.onPressed,
    this.textColor: const Color(0xFF6558F5),
  });

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 350.0,
      height: 50.0,
      disabledColor: HexColor('#d9dbdd'),
      child: SizedBox(
        height: 40,
        width: screenWidth,
        child: OutlineButton(
          child: Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          textColor: textColor,
          onPressed: onPressed, //callback when button is clicked
          borderSide: BorderSide(
            color: color, //Color of the border
            style: BorderStyle.solid, //Style of the border
            width: width,
            //width of the border
          ),
        ),
      ),
    );
  }
}

class AppFlatButton extends StatelessWidget {
  final Color color;
  final Color textColor;
  final Function onPressed;
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final double screenWidth;

  const AppFlatButton(
      {this.color: const Color(0xFF6558F5),
      this.textColor: const Color(0xFFffffff),
      @required this.onPressed,
      @required this.text,
      this.fontWeight: FontWeight.w900,
      @required this.screenWidth,
      this.fontSize: 14});

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 350.0,
      height: 50.0,
      child: SizedBox(
        height: 40,
        width: screenWidth,
        child: FlatButton(
          color: color,
          disabledColor: HexColor('#d9dbdd'),
          textColor: textColor,
          onPressed: onPressed,
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(4.0),
          ),
          child: Text(
            text,
            style: TextStyle(
                fontSize: fontSize, fontWeight: fontWeight, letterSpacing: 1),
          ),
        ),
      ),
    );
  }
}
