import 'package:bonyanaldoha/services/api_data.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final int? index;

  const ImageWidget({
    Key? key,
    @required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SizedBox(
        height: 150,
        width: double.infinity,
        child: Card(
          child: Image.asset(
            cityImg[4],
            // 'https://source.unsplash.com/random?sig=$index',
            fit: BoxFit.cover,
          ),
        ),
      );
}
