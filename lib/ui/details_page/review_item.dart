import 'package:flutter/material.dart';
import 'package:tester_app/models/response_type/response_type.dart';
import 'package:tester_app/ui/base_widgets/base_constants/base_border.dart';
import 'package:tester_app/ui/base_widgets/dividers.dart';

class ReviewItem extends StatelessWidget {
  final Review review;

  const ReviewItem(this.review);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BaseBorderRadiusDirectional.all(),
      ),
      child: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              review.author,
              style: Theme.of(context).textTheme.headline6,
            ),
            TransparentDivider(height: 8.0),
            Text(review.content),
          ],
        ),
      ),
    );
  }
}
