import 'package:flutter/material.dart';

class SW extends StatefulWidget {
  @override
  _SWState createState() => _SWState();
}

class _SWState extends State<SW> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery
        .of(context)
        .size;
    var width = screenSize.width;
    var height = screenSize.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Stack(
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
                        'استراليا تلك الدولة التي تقع في اقصى النصف الجنوبي من الكرة الأرضية ، الدولة التي أخرجت قامات من العلم والعلماء اللذين غيروا وجه العالم الذي نراه ! ، منهل علم ودولة مليئة بالأصرح العلمية التي يتوافد عليها الطلاب من كل مكان للحصول على درجة علمية وثيقة ل يبنوا بها حياتهم! ',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            fontSize: width / 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/sc');
                          },
                          child: Container(
                            width: width/2.25,
                            decoration: BoxDecoration(
                                color: Color(0xFF5E6472),
                                borderRadius:
                                BorderRadius.all(Radius.circular(37.0))),
                            child: Center(
                              child: Text(
                                'أفضل الجامعات!',
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                    fontSize: width / 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/swa');
                          },
                          child: Container(
                            width: width/2.25,
                            decoration: BoxDecoration(
                                color: Color(0xFF5E6472),
                                borderRadius:
                                BorderRadius.all(Radius.circular(37.0))),
                            child: Center(
                              child: Text(
                                'لماذا أستراليا؟!',
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                    fontSize: width / 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        )
                    ],),
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
                  'https://www.schiavello.com/__data/assets/image/0018/13833/university-of-melbourne-giblin-eunson-library-education-interior-construction-vic-book-students-study-desks-lights-computer-collaboration.jpg',
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
      ),
    );
  }
}