import 'package:flutter/material.dart';
import 'package:flutter_21express/common/constants/assets_constant.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 3,
      width: MediaQuery.of(context).size.width,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('${assetImages}logistic.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
