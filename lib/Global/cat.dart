import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class SCat extends StatelessWidget {
  SCat({@required this.width});
  final double width;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: width/2.25,
        viewportFraction: 0.8,
        aspectRatio: 16/9,
        initialPage: 0,
        autoPlayInterval: Duration(seconds: 6),
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
        autoPlay: true,
        enableInfiniteScroll: true,
      ),
      itemCount: 15,
      itemBuilder: (BuildContext context, int itemIndex) =>
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, '/ch');
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  image: DecorationImage(
                    image: AssetImage('images/syd.png'),
                    fit: BoxFit.cover,
                  )
              ) ,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'سيدني',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: width / 22,
                    ),
                  ),
                ),
              ),
            ),
          ),
    );
  }
}

class LCat extends StatelessWidget {
  LCat({@required this.width,this.hight=0,@required this.img,@required this.title,@required this.t});
  final double width;
  final double hight;
  final String title;
  final String t;
  final String img;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: hight ==0? width/2.3 : hight,
        viewportFraction: 0.8,
        aspectRatio: 16/9,
        initialPage: 0,
        autoPlayInterval: Duration(seconds: 6),
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
        autoPlay: true,
        enableInfiniteScroll: true,
      ),
      itemCount: 15,
      itemBuilder: (BuildContext context, int itemIndex) =>
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, '/pp',arguments: {
                'imag': img,
                'title':title,
                't':t,
              } );
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  image: DecorationImage(
                    image: NetworkImage(img),
                    fit: BoxFit.cover,
                  )
              ) ,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: hight ==0? width / 22 :width/10,
                      ),
                    ),
                    SizedBox(
                      height: width / 20,
                    ),
                    Text(
                      t,
                      textDirection: TextDirection.rtl,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.justify,
                      maxLines: hight==0? 2:10,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: hight ==0? width / 30 : width/15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
    );
  }
}
