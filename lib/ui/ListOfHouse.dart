import 'package:flutter/material.dart';
import 'package:home_rent/ui/DetailOfHouse.dart';
import 'package:home_rent/ui/SignUp.dart';

class ListOfHouse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.home, color: Colors.blue,),
                  onPressed: (){
                     Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => SignUpApp(
                                  ),
                                  ),
                                  );
                  },
                ),

                CircleAvatar(
                  child: ClipRRect(
                    child: Image.asset("assets/user.jpeg", fit: BoxFit.contain,),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                )
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 16, right: 16),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[300])
                ),
                prefixIcon: Icon(Icons.search, color: Colors.grey[500],),
                suffixIcon: Icon(Icons.filter_list, color: Colors.blue,),
                hintText: "Search",
                focusColor: Colors.blue
              ),
            ),
          ),

          Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 32, right:32, top: 16, bottom: 16),
            color: Colors.grey[100],
            child: Text("6 Results Found", style: TextStyle(color: Colors.grey[800], fontWeight: FontWeight.bold),),
          ),

          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              color: Colors.grey[100],
              child: ListView.separated(
                  itemBuilder: (context, index){
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.favorite_border, color: index %2 == 0  ? Colors.grey[400] : Colors.redAccent,),
                            ),

                            Container(
                              width: 90,
                              height: 90,
                              child: GestureDetector(
                                child: ClipOval(
                                  child: Image.asset("assets/${index+1}.jpg", fit: BoxFit.cover,),
                                ),
                                onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => DetailOfHouse(index)
                                  ));
                                },
                              )
                            ),

                            SizedBox(width: 20,),

                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("3 room house", style: TextStyle(fontSize: 22, color: Colors.grey[800], fontWeight: FontWeight.bold),),
                                  Text("Shashi area", style: TextStyle(color: Colors.grey[500],), overflow: TextOverflow.ellipsis,),
                                  SizedBox(height: 8,),
                                  Text("400RTGS/semester", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),

                            IconButton(icon: Icon(Icons.navigation),
                            )
                          ],
                        ),

                        SizedBox(height: 12,),

                        Container(
                          margin: EdgeInsets.only(left: 32, right: 16),
                          child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(Icons.people, size: 12, color: Colors.grey[600],),
                                  SizedBox(width: 4,),
                                  Text("5 people", style: TextStyle(color: Colors.grey[600]),)
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.local_offer, size: 12, color: Colors.grey[600],),
                                  SizedBox(width: 4,),
                                  Text("2 rooms", style: TextStyle(color: Colors.grey[600]),)
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.airline_seat_legroom_reduced, size: 12, color: Colors.grey[600],),
                                  SizedBox(width: 4,),
                                  Text("1 Bathrooms", style: TextStyle(color: Colors.grey[600]),)
                                ],
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 16,)
                      ],

                    );
                  },
                  separatorBuilder: (context, index) => Divider(),
                  itemCount: 5


              ),
            ),
          )
        ],
      ),
    );
  }
}
