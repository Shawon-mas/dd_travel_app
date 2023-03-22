
import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#F7F7F7"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
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
                        SizedBox(width: 10,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Mr. Jone",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                            Row(
                              children: [
                                Icon(Icons.location_on_outlined,size: 15,),
                                Text("dhaka"),

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
                        SizedBox(
                          width: 5,
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
                height: 50,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   Card(
                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(10)),

                     child: Container(
                       padding: EdgeInsets.symmetric(horizontal: 10),
                       height: 50,
                       width: 285,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),

                       ),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("Where do you wanna go?"),
                           Icon(Icons.arrow_forward)
                         ],
                       ),

                     ),
                   ),

                    SizedBox(width: 5,),
                   Container(
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       color: Colors.green,

                     ),
                     height: 40,
                     width: 50,
                     child:  Image.asset('assets/emargency.png',height: MediaQuery.of(context).size.height,width: MediaQuery.of(context).size.width,fit: BoxFit.cover,),

                   )


                  ],
                ),
              ),
              SizedBox(
               height: 10,
              ),

             Container(
               height: 110,
               child:  catagories(),
             ),

              
              Text("Offers for you",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(
                height: 15,
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
              Text("Popular Deals",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(
                height: 10,
              ),

             SizedBox(
               height: MediaQuery.of(context).size.height,
               child: popular(),
             )




              
            ],
          ),
        ),
      ),
    );
  }
  catagories(){
    return ListView.builder(
          itemCount:5 ,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                height: 60,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white

                ),
                child:   Center(child: Image.asset('assets/flight1.png',height: 60,)),
              ),
              SizedBox(
                height: 5,
              ),
              Text("Hotel/Resort")
            ],
          ),
        ),);
  }
  popular(){
    return ListView.builder(
      physics: AlwaysScrollableScrollPhysics(),
      itemCount:5 ,
     // scrollDirection: Axis.vertical,
      itemBuilder: (context, index) =>  Stack(
        children: [
          Card(
            child: Container(
              height: 160,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),

              ),
              child: Row(
                children: [
                  Expanded(
                      flex:1,
                      child: ClipRRect(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                          child: Image.asset("assets/hotel.png",height: MediaQuery.of(context).size.height,fit: BoxFit.cover,))


                  ),

                  Expanded(
                    flex:2,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Seagull Hotel",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Icon(Icons.location_on_outlined,size: 15,),
                              SizedBox(width: 5,),
                              Text("Coxbazar",style: TextStyle(fontSize: 14,color: Colors.grey)),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  //  border: Border.all(color: Colors.grey,width: 2,style: BorderStyle.solid),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.grey[200],

                                ),
                                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                child: Text("Hotel",style: TextStyle(fontSize: 12,color: Colors.grey)),
                              ),
                              SizedBox(width: 5,),
                              Container(
                                decoration: BoxDecoration(
                                  //  border: Border.all(color: Colors.grey,width: 2,style: BorderStyle.solid),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.grey[200],

                                ),
                                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                child: Text("Resturant",style: TextStyle(fontSize: 12,color: Colors.grey),),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.star,size: 15,color: Colors.amberAccent,),
                                      Icon(Icons.star,size: 15,color: Colors.amberAccent,),
                                      Icon(Icons.star,size: 15,color: Colors.amberAccent,),
                                      Icon(Icons.star,size: 15,color: Colors.amberAccent,),
                                      Icon(Icons.star,size: 15,color: Colors.amberAccent,),
                                    ],
                                  ),
                                  Text("131 Reviews",style: TextStyle(fontSize: 14,color: Colors.grey))

                                ],
                              ),Column(
                                children: [

                                  Text("Avaiable Offer",style: TextStyle(fontSize: 14,color: Colors.grey)),
                                  Text("1200Tk",style: TextStyle(fontSize: 18,color: Colors.green,fontWeight: FontWeight.bold)),

                                ],
                              )
                            ],
                          )


                        ],


                      ),
                    ),
                  ),


                ],
              ),

            ),
          ),
          Positioned(
              right: 20,
              child: Stack(
                children: [
                  Image.asset("assets/discount.png"),
                  Positioned(
                      top: 8,
                      left: 5,


                      child: Text("20%",style: TextStyle(fontSize: 12,color: Colors.white),))
                ],
              ))
        ],
      ),);
  }
}

class BannerImages {
  static const String banner1 = "assets/banner.png";
  static const String banner2 = "assets/banner.png";
  static const String banner3 =  "assets/banner.png";
  static const String banner4 = "assets/banner.png";


  static List<BannerModel> listBanners = [
    BannerModel(imagePath: banner1, id: "1"),
    BannerModel(imagePath: banner2, id: "2"),
    BannerModel(imagePath: banner3, id: "3"),
    BannerModel(imagePath: banner4, id: "4"),
  ];
}


class CatagoriesModel {
  late String name;
  late String image;
  CatagoriesModel(this.name,this.image);

  List<CatagoriesModel> listCat = [
    CatagoriesModel('Hotel/Resort',"assets/flight1"),
    CatagoriesModel('Restaurant',"assets/flight2"),
    CatagoriesModel('Cruise',"assets/flight3"),
    CatagoriesModel('Flight',"assets/flight4"),



  ];
}
