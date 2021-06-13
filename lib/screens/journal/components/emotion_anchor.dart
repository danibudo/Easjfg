import 'package:flutter/material.dart';

class EmotionAnchor extends StatefulWidget {
  String anchorText;
  double width;

  EmotionAnchor({@required this.anchorText, @required this.width});

  @override
  _EmotionAnchorState createState() => _EmotionAnchorState();
}

class _EmotionAnchorState extends State<EmotionAnchor> {
  bool active = false;

  Color getBgColor() {
    if (this.active) {
      return Colors.white;
    } else {
      return Colors.transparent;
    }
  }

  Color getTextColor() {
    if (this.active) {
      return Colors.blue;
    } else {
      return Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          active = !active;
        });
      },
      child: Container(
        alignment: Alignment.center,
        width: widget.width,
        height: MediaQuery.of(context).size.height * 0.035,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: getBgColor(),
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          widget.anchorText,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: getTextColor(),
          ),
        ),
      ),
    );
  }
}
