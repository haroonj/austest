import 'package:aust2/Global/cat.dart';
import 'package:flutter/material.dart';

class SC extends StatefulWidget {
  @override
  _SCState createState() => _SCState();
}

class _SCState extends State<SC> {
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
              img: 'https://i.guim.co.uk/img/media/4de147b9dabfe7fe77f3d2b1bf4397a5ecb8974f/52_396_2655_1593/master/2655.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=5cff9e42cf36d41097a8b933dd856162',
              t: 'أسست الجامعة في عام 1853، وترتيبها الأولى في أستراليا والـ 26 في العالم، وتقع في مدينة ملبورن ',
              title: 'جامعة ميلبورن',
            ),
          ),
        ),
      ),
    );
  }
}
