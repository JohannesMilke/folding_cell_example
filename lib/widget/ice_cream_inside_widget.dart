import 'package:flutter/material.dart';

class IceCreamInsideWidget extends StatefulWidget {
  final ValueChanged<int> onChangedIceBalls;

  const IceCreamInsideWidget({
    @required this.onChangedIceBalls,
    Key key,
  }) : super(key: key);

  @override
  IceCreamInsideWidgetState createState() => IceCreamInsideWidgetState();
}

class IceCreamInsideWidgetState extends State<IceCreamInsideWidget> {
  static const int ballsCount = 3;

  int selectedBall;

  @override
  void initState() {
    super.initState();
    selectedBall = 0;
  }

  @override
  Widget build(BuildContext context) => Container(
      color: Colors.orangeAccent,
      padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 8.0),
            child: Text(
              'How many balls?',
              style: Theme.of(context).primaryTextTheme.caption,
            ),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                  ballsCount,
                  (index) => iceBallButton(context,
                      index: index, image: 'images/balls_${index + 1}.png')))
        ],
      ));

  Widget iceBallButton(BuildContext context, {int index, String image}) {
    final bool isSelected = index == selectedBall;

    return RaisedButton(
      color: isSelected
          ? Colors.white.withOpacity(0.6)
          : Theme.of(context).buttonColor,
      onPressed: () {
        setState(() {
          selectedBall = index;
        });
        widget.onChangedIceBalls(index + 1);
      },
      padding: EdgeInsets.symmetric(vertical: 4.0),
      child: Image.asset(
        image,
        height: 32.0,
      ),
    );
  }
}
