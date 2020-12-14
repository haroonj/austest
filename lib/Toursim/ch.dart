import 'package:aust2/Global/cat.dart';
import 'package:flutter/material.dart';

class CH extends StatefulWidget {
  @override
  _CHState createState() => _CHState();
}

class _CHState extends State<CH> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var width = screenSize.width;
    var height = screenSize.height;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.grey[300],
      body: SizedBox.expand(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  constraints: BoxConstraints.expand(height: height / 3.5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(35),
                      bottomRight: Radius.circular(35),
                    ),
                    child: Image.asset(
                      'images/ws.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'درجة الحرارة هي 28°م ',
                        textDirection: TextDirection.rtl,
                        style:
                            TextStyle(color: Colors.grey, fontSize: width / 26),
                      ),
                      Text(
                        'سيدني',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            color: Colors.black, fontSize: width / 16),
                      ),
                      SizedBox(
                        height: width / 40,
                      ),
                      Container(
                        height: height / 4.25,
                        child: SingleChildScrollView(
                          child: Text(
                            'لا تزال سيدني التي يعتبرها البعض عاصمة القارة الأسترالية تحتل مكانة كبيرة في أعين كثير من زائريها لتفوز من واقع استطلاع رأى شمل أكثر من 10 آلاف شخص على مستوى 20 دولة في العام 2008 بلقب أفضل مدينة سياحية في العالم للعام الثاني على التوالي. وقد استمدت تلك المدينة شهرتها العالمية في عالم السياحة والسفر من مناخها الرائع الذي يصعب توافره في العديد من مدن العالم الأخرى طوال شهور السنة بجانب الخدمة المميزة التي تتوافر للسائح بمجرد وصوله، بالإضافة إلى النمو الاقتصادي القوي التي تحظى به هذه المدينة. وعندما تزور سيدني سوف تفاجأ بالكم الهائل من الفنادق الفخمة والعصرية التي ترضي جميع الأذواق، حيث تتميز بالتنوع في التصميم فمنها مشيد على الطراز الفيكتوري وأخرى تحاكي عصرنا الحالي بلغة الألوان الصارخة والتصميم المفعم بالحيوية والشباب.',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                color: Colors.black, fontSize: width / 26),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 8,
              right: 0,
              left: 0,
              child: LCat(
                width: width,
                img: 'https://media.timeout.com/images/105435435/image.jpg',
                title: 'الحدائق النباتية الملكية',
                t: 'رؤية الزهور والورود والنباتات ذات الالوان العديدة والروائح الزاهية .. تبعث بالروح احساس بالسعادة والفرح والراحة ، الابتعاد عن صخب المباني ورؤية الطبيبعة امر نحتاجه من حين لآخر لننسى القليل من الهموم المتراكمة على قلوبنا !',
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
    ));
  }
}
