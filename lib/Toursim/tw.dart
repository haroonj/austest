import 'package:flutter/material.dart';

class TW extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: TWelcome(),
    );
  }
}

class TWelcome extends StatefulWidget {
  @override
  _TWelcomeState createState() => _TWelcomeState();
}

class _TWelcomeState extends State<TWelcome> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var width = screenSize.width;
    var height = screenSize.height;
    return SafeArea(
      child: Stack(
        children: [
          SizedBox.expand(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      'استعد عزيزي المسافر .. فأنت على وشك الانطلاق في رحلة تعد من الاجمل من عمرك',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          fontSize: width / 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'ستجد في هذه الدولة الجميلة ما يدهشك و يلذذ حواسك .. ففي هذه الدولة مختلف الوجهات و المناظر ',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          fontSize: width / 21, color: Colors.black),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/th');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF5E6472),
                          borderRadius:
                              BorderRadius.all(Radius.circular(37.0))),
                      child: Center(
                        child: Text(
                          'هيا بنا! ',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              fontSize: width / 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(child: Container(
            constraints: BoxConstraints.expand(height: height / 1.75),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(75),
                bottomRight: Radius.circular(75),
              ),
              child: Image.network(
                'https://usemybenefits.com/wp-content/uploads/2015/05/BackPacker-Secrets.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),),
          Positioned(
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_rounded,
                size: width / 16,
                color: Colors.grey,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
