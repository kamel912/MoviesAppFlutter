import 'package:flutter/material.dart';

class TransparentDivider extends StatelessWidget {
  final double height;

  const TransparentDivider({
    Key key,
    @required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Divider(
        color: Colors.transparent,
        height: height,
      );
}

class TransparentVerticalDivider extends StatelessWidget {
  final double width;

  const TransparentVerticalDivider({
    Key key,
    @required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => VerticalDivider(
        color: Colors.transparent,
        width: width,
      );
}
