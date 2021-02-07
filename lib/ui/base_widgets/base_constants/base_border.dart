import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tester_app/utils/movies_db_extensions.dart';

const _defaultLargeRadius = Radius.circular(25.0);
const _defaultSmallRadius = Radius.circular(5.0);

class BaseBorderRadiusDirectional extends BorderRadiusDirectional {
  BaseBorderRadiusDirectional.all()
      : super.only(
          topEnd: _defaultLargeRadius,
          bottomStart: _defaultLargeRadius,
          bottomEnd: _defaultSmallRadius,
          topStart: _defaultSmallRadius,
        );

  BaseBorderRadiusDirectional.bottom()
      : super.only(
          bottomEnd: _defaultSmallRadius,
          bottomStart: _defaultLargeRadius,
        );

  BaseBorderRadiusDirectional.top()
      : super.only(
          topEnd: _defaultLargeRadius,
          topStart: _defaultSmallRadius,
        );
  BaseBorderRadiusDirectional.end()
      : super.only(
          topEnd: _defaultLargeRadius,
          bottomEnd: _defaultSmallRadius,
        );
  BaseBorderRadiusDirectional.start()
      : super.only(
          bottomStart: _defaultLargeRadius,
          topStart: _defaultSmallRadius,
        );

  BorderRadius resolveSuper(BuildContext context) => super.resolve(context.watch<Locale>().textDirection);
}

class ReversedBaseBorderRadiusDirectional extends BorderRadiusDirectional {
  ReversedBaseBorderRadiusDirectional.all()
      : super.only(
          topEnd: _defaultSmallRadius,
          bottomStart: _defaultSmallRadius,
          bottomEnd: _defaultLargeRadius,
          topStart: _defaultLargeRadius,
        );

  ReversedBaseBorderRadiusDirectional.bottom()
      : super.only(
          bottomEnd: _defaultLargeRadius,
          bottomStart: _defaultSmallRadius,
        );

  ReversedBaseBorderRadiusDirectional.top()
      : super.only(
          topEnd: _defaultSmallRadius,
          topStart: _defaultLargeRadius,
        );
  ReversedBaseBorderRadiusDirectional.end()
      : super.only(
          topEnd: _defaultSmallRadius,
          bottomEnd: _defaultLargeRadius,
        );
  ReversedBaseBorderRadiusDirectional.start()
      : super.only(
          bottomStart: _defaultSmallRadius,
          topStart: _defaultLargeRadius,
        );

  BorderRadius resolveSuper(BuildContext context) => super.resolve(context.watch<Locale>().textDirection);
}
