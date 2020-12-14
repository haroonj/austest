import 'package:flutter/material.dart';
import 'package:aust2/Global/cat.dart';

class THome extends StatefulWidget {
  @override
  _THomeState createState() => _THomeState();
}

class _THomeState extends State<THome> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var width = screenSize.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Stack(
          children: [
            SizedBox.expand(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 20, 8, 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'مرحبا بك في أجمل رحلة في حياتك',
                      textDirection: TextDirection.rtl,
                      style:
                          TextStyle(color: Colors.black, fontSize: width / 15),
                    ),
                    Text(
                      'ثق بي .. ستجد ما تحب في استراليا ! ',
                      textDirection: TextDirection.rtl,
                      style:
                          TextStyle(color: Colors.black, fontSize: width / 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'البلدان',
                      textDirection: TextDirection.rtl,
                      style:
                          TextStyle(color: Colors.black, fontSize: width / 20),
                    ),
                    SCat(width: width),
                    Text(
                      'المناطق المفضلة للسياح في أستراليا',
                      textDirection: TextDirection.rtl,
                      style:
                          TextStyle(color: Colors.black, fontSize: width / 20),
                    ),
                    LCat(
                      width: width,
                      img:
                          'https://media.timeout.com/images/105435435/image.jpg',
                      title: 'الحدائق النباتية الملكية',
                      t: 'رؤية الزهور والورود والنباتات ذات الالوان العديدة والروائح الزاهية .. تبعث بالروح احساس بالسعادة والفرح والراحة ، الابتعاد عن صخب المباني ورؤية الطبيبعة امر نحتاجه من حين لآخر لننسى القليل من الهموم المتراكمة على قلوبنا !',
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back_rounded,
                  size: width / 16,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
