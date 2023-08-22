import 'package:flutter/material.dart';
import 'package:flutter_21express/common/constants/assets_constant.dart';
import 'package:flutter_21express/presentation/pages/shipment_tracking_page.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroductionWidget extends StatefulWidget {
  const IntroductionWidget({super.key});

  @override
  State<IntroductionWidget> createState() => _IntroductionWidgetState();
}

class _IntroductionWidgetState extends State<IntroductionWidget> {
  Widget _buildImage(String assetName) {
    return Image.asset(
      '$assetImages$assetName',
      fit: BoxFit.cover,
    );
  }

  @override
  Widget build(BuildContext context) {
    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
      ),
      bodyAlignment: Alignment.center,
      bodyTextStyle: TextStyle(fontSize: 14),
      imagePadding: EdgeInsets.only(left: 16, right: 16),
      imageFlex: 2,
      pageColor: Colors.white,
    );
    return IntroductionScreen(
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: '21 Express',
          body: 'Service Door to Door',
          image: _buildImage('intro_1.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: '21 Express',
          body: 'Trustworthy shipping Company',
          image: _buildImage('intro_2.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: '21 Express',
          body: 'Always committed to ensuring the quality of service',
          image: _buildImage('intro_3.png'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const ShipmentTrackingPage(),
          ),
        );
      },
      showSkipButton: true,
      showNextButton: true,
      showDoneButton: true,
      skip: const Text(
        'Skip',
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      next: const Text(
        'Next',
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      done: const Text(
        'Go',
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(25.0),
          ),
        ),
      ),
    );
  }
}
