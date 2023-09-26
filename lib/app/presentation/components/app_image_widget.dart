import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class AppImageWidget extends StatelessWidget {
  final String url;
  final int width;
  final int height;

  const AppImageWidget({
    super.key,
    required this.url,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      fit: BoxFit.cover,
      cacheWidth: width,
      cacheHeight: height,
      // height: 88,
      alignment: Alignment.center,
      filterQuality: FilterQuality.low,

      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) {
          return child;
        }
        return const Center(
          child: SpinKitFadingCircle(
            color: Color.fromRGBO(0, 125, 254, 0.7),
            size: 15,
          ),
        );
      },
      errorBuilder: (context, error, stackTrace) {
        return Image.asset('assets/images/raster/avatar.png');
      },
    );
  }
}
