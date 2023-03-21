
import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(
              height: 10,
            ),
            Container(
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                     ClipRRect(
                       borderRadius: BorderRadius.circular(100),
                       child:  Image.asset('assets/img.png'),
                     ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("data"),
                          Row(
                            children: [
                              Icon(Icons.location_on_outlined),
                              Text("data"),

                            ],
                          )
                        ],
                      ),

                    ],
                  ),
                  Row(
                    children: [

                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child:  Image.asset('assets/skan.png'),
                      ),


                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child:  Image.asset('assets/notifitacron.png'),
                      ),

                    ],
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                 Container(
                   height: 50,
                   width: 240,
                   color: Colors.red,
                 ),Image.asset('assets/emargency.png')
                ],
              ),
            ),

            Container(
              height: 70,
              width: 90,
              color: Colors.red,
            ),
            SizedBox(
              height: 20,
            ),
            
            Text("Offers for you"),
            SizedBox(
              height: 20,
            ),

            BannerCarousel(
              banners: BannerImages.listBanners,
              height: 200,
              activeColor: Colors.amberAccent,
              disableColor: Colors.white,

              animation: true,
              borderRadius: 10,
              onTap: (id) => print(id),
              width: MediaQuery.of(context).size.width,
              indicatorBottom: false,
            ),
            SizedBox(
              height: 20,
            ),
            Text("Offers for you"),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              color: Colors.red,
            ),
            
          ],
        ),
      ),
    );
  }
}

class BannerImages {
  static const String banner1 =
      "https://picjumbo.com/wp-content/uploads/the-golden-gate-bridge-sunset-1080x720.jpg";
  static const String banner2 =
      "https://cdn.mos.cms.futurecdn.net/Nxz3xSGwyGMaziCwiAC5WW-1024-80.jpg";
  static const String banner3 = "https://wallpaperaccess.com/full/19921.jpg";
  static const String banner4 =
      "https://images.pexels.com/photos/2635817/pexels-photo-2635817.jpeg?auto=compress&crop=focalpoint&cs=tinysrgb&fit=crop&fp-y=0.6&h=500&sharp=20&w=1400";

  static List<BannerModel> listBanners = [
    BannerModel(imagePath: banner1, id: "1"),
    BannerModel(imagePath: banner2, id: "2"),
    BannerModel(imagePath: banner3, id: "3"),
    BannerModel(imagePath: banner4, id: "4"),
  ];
}