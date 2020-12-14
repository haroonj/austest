import 'package:aust2/Global/cat.dart';
import 'package:flutter/material.dart';

class SWA extends StatefulWidget {
  @override
  _SWAState createState() => _SWAState();
}

class _SWAState extends State<SWA> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var width = screenSize.width;
    var height = screenSize.height;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SizedBox.expand(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: LCat(
              width: width,
              hight: height,
              img: 'https://www.uni-passau.de/fileadmin/_processed_/9/4/csm_COLOURBOX15488278_9cf9a3b2c1.jpg',
              t: 'تحتل استراليا الجميلة الترتيب التاسع على العالم في التعليم!.. مما يجعلها هدفاً للطلاب الباحثين عن العلم والمعرفة والحصول عليها بطريقة صحيحة .. لن تعطيك استراليا شهاد تزين بها غرفة حائطك فقط،ستزين بها عقلك وتبني بها حياتك!',
              title: 'جودة التعليم',
            ),
          ),
        ),
      ),
    );
  }
}
