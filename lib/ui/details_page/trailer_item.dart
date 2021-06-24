import 'package:flutter/material.dart';
import 'package:tester_app/data/api/base_urls.dart';
import 'package:tester_app/models/response_type/models.dart';
import 'package:tester_app/ui/base_widgets/base_constants/base_border.dart';

class TrailerItem extends StatelessWidget {
  final Trailer trailer;

  const TrailerItem(this.trailer);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BaseBorderRadiusDirectional.all(),
      ),
      child: Container(
        width: 180.0,
        decoration: BoxDecoration(
          borderRadius: BaseBorderRadiusDirectional.all(),
          image: DecorationImage(
            image: NetworkImage(
              '$youtubeImage${trailer.key}$youtubeImagePostfix',
            ),
            fit: BoxFit.none,
            onError: (error, stackTrace) => ErrorWidget(error),
          ),
        ),
        alignment: Alignment.center,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Icon(
              Icons.play_circle_outline,
              size: 100,
            ),
            Positioned(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BaseBorderRadiusDirectional.all().resolve(TextDirection.ltr),
                  onTap: () => ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('${trailer.name}'),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
