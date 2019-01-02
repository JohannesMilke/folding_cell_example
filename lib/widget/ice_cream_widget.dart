import 'package:flutter/material.dart';
import 'package:folding_cell/folding_cell.dart';
import 'package:january1_folding_cell/data/colors.dart';
import 'package:january1_folding_cell/model/ice_cream.dart';
import 'package:january1_folding_cell/widget/ice_cream_front_widget.dart';
import 'package:january1_folding_cell/widget/ice_cream_inside_widget.dart';

class IceCreamWidget extends StatefulWidget {
  final IceCream iceCream;

  const IceCreamWidget({
    @required this.iceCream,
    Key key,
  }) : super(key: key);

  @override
  IceCreamWidgetState createState() => IceCreamWidgetState();
}

class IceCreamWidgetState extends State<IceCreamWidget> {
  int iceBallCount = 1;

  @override
  Widget build(BuildContext context) => SimpleFoldingCell(
        frontWidget: IceCreamFrontWidget(
            iceCream: widget.iceCream, iceBallCount: iceBallCount),
        innerTopWidget: IceCreamInsideWidget(
          onChangedIceBalls: (int iceBalls) => setState(() {
                iceBallCount = iceBalls;
              }),
        ),
        innerBottomWidget: Container(color: brown),
        cellSize: Size(MediaQuery.of(context).size.width, 125),
        padding: EdgeInsets.all(16),
      );
}
