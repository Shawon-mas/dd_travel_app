
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ForYouPage extends StatelessWidget {
  const ForYouPage({Key? key}) : super(key: key);

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
             SizedBox(height: 10,),
             Row(
               children: [
              Expanded(
                flex: 1,
                child:Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)
                ),
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/discount1.png"),
                    Text("My Discounts")
                  ],
                ),

              ),),
                 SizedBox(width: 10,),
                 Expanded(
                   flex: 1,
                   child: Container(
                     decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.circular(15)
                     ),
                     height: 100,
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Image.asset("assets/pending.png"),
                         Text("Pending Rewards")
                       ],
                     ),

                   ),
                 ),
               ],
             ),
              SizedBox(
                height: 20,
              ),
              Text("Ongoing Campaigns",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey),),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ongoing(),
              ),
              Text("Upcoming Campaigns",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey),),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ongoing(),
              ),
            ],
          ),
        ),
      ),

    );
  }
  ongoing(){
    return ListView.builder(
      physics: AlwaysScrollableScrollPhysics(),
      itemCount:3,
      // scrollDirection: Axis.vertical,
      itemBuilder: (context, index) =>  Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Card(
          color: HexColor("#E8F9F1"),
          child: Container(
            height: 130,
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
                        Text("16 Taka Ticket",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Dhaka to Cox’s Bazaar bus ticketonly for 16 taka.Spin the wheel to get this lucky discount!",style: TextStyle(fontSize: 14,color: Colors.grey)),
                        SizedBox(
                          height: 5,
                        ),
                        Text("16 December",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.green),)


                      ],


                    ),
                  ),
                ),


              ],
            ),

          ),
        ),
      ),);
  }
}
