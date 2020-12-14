import 'package:aust2/Global/cat.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PP extends StatefulWidget {
  @override
  _PPState createState() => _PPState();
}

class _PPState extends State<PP> {
  @override
  Widget build(BuildContext context) {
    final Map args = ModalRoute.of(context).settings.arguments;
    String Data =
        'رؤية الزهور والورود والنباتات ذات الالوان العديدة والروائح الزاهية .. تبعث بالروح احساس بالسعادة والفرح والراحة ، الابتعاد عن صخب المباني ورؤية الطبيبعة امر نحتاجه من حين لآخر لننسى القليل من الهموم المتراكمة على قلوبنا ! .. ولا يمكن أن تجد عزيزي السائح مكاناً أفضل من الحدائق الملكية لهذا ! .. ف هي تحتوي على اكثر من 7500نوع من النبات!' +
            'تمثل معنى العراقة الحقيقي .. حيث تم افتتاح هذه الحدائق عام 1816 .. حتى أصبحت في يومنا هذا من أهم المعالم السياحية الاسترالية .. ومن أهم المعالم لترويح عن النفس .. ';
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
                  constraints: BoxConstraints.expand(height: height / 2.25),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(35),
                      bottomRight: Radius.circular(35),
                    ),
                    child: Image.network(
                      args['imag'],
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
                        style: TextStyle(
                            color: Colors.grey, fontSize: width / 26),
                      ),
                      Text(
                        args['title'],
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            color: Colors.black, fontSize: width / 16),
                      ),
                      SizedBox(
                        height: height / 25,
                      ),
                      Container(
                        height: height / 4,
                        child: SingleChildScrollView(
                          child: Text(
                            args['t'],
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                color: Colors.black, fontSize: width / 22),
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
              child: GestureDetector(
                onTap: () {
                  launch('https://www.rbgsyd.nsw.gov.au/');
                },
                child: Padding(
                  padding: const EdgeInsets.only(left:8.0,right: 8.0),
                  child: Container(
                    height: height / 10,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      color: Color(0xFF5E6472),
                      borderRadius: BorderRadius.all(
                        Radius.circular(37.0),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'الموقع الرسمي',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            fontSize: width / 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back_rounded,
                  size: width / 16,
                  color: Colors.white,
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



// Positioned(
// bottom: 0,
// right: 0,
// left: 0,
// child: Container(
// color: Colors.grey[300],
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.end,
// children: [
//
// Row(
// children: [
// Expanded(
// child: SizedBox(
// height: width / 2,
// child: ListView.builder(
// scrollDirection: Axis.horizontal,
// shrinkWrap: true,
// itemCount: 50,
// itemBuilder: (context, index) {
// return LCat(
// w: width,
// );
// },
// ),
// ),
// ),
// ],
// ),
// ],
// ),
// ),
// ),