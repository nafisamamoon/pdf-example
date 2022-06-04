import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
List icons=[Icons.foundation_outlined,Icons.inbox_rounded,Icons.settings,Icons.email,Icons.add_a_photo,Icons.alarm_add_rounded];
List titles=['Asian','Amarecin','Egyption','Pizza','Suchi','Alarm'];
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff3f5f9),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              title('Explore',30),
              //search section start from this padding and end in the end of padding
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                 
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                     color: Colors.transparent,
                     border: Border.all(color: Colors.grey,)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Find a food or Resturant",
                        suffixIcon: Icon(Icons.add_road_rounded,color: Colors.grey,),
                        prefixIcon: Icon(Icons.search,color: Colors.indigo,),
                        disabledBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none
                      ),
                    ),
                  ),
                ),
              ),
              //end of search section
              //start first horizantel listView
                   Container(
             height: 100,
             child: ListView.builder(
               scrollDirection: Axis.horizontal,
               itemCount: titles.length,
               itemBuilder: (context,i){
                 return cardSection(icons[i],titles[i]);
               }),
                   ),
                   //end first horizantel listView
                   //start popular section
                   Padding(
             padding: const EdgeInsets.only(top: 10,bottom: 10),
             child: title('Popular food', 17),
                   ),
                   Container(
             height: 200,
            
             child: ListView.builder(
               scrollDirection: Axis.horizontal,
               itemCount: 8,
               itemBuilder: (context,i){
                 return popularCard();
               }),
                   ),
                   //end popular section
                   //start top offers section
                   Padding(
                     padding: const EdgeInsets.only(top: 10,bottom: 10),
                     child: title('Top Offers', 17),
                   ),
             Container(
               height: 400,
               child: ListView.builder(
                 itemCount: 8,
                 itemBuilder: (context,i){
                   return topOfferCard();
                 }
                 ),
             )
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget title(String Title,double size,){
return Text(Title,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: size));
  }
  /////////////////////////////
  Widget cardSection(IconData icon,String title){
    return Padding(
      padding: const EdgeInsets.only(right:8.0,left: 8),
      child: Column(
        children: [
          Container(
            height: 70,
            width: 70,
         decoration: BoxDecoration(
color: Colors.white,
borderRadius: BorderRadius.circular(50)
            ),
            child: Icon(icon,color: Colors.indigo,size: 30,),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(title),
          )
        ],
      ),
    );
  }
  ///////////////////////////////////////
  Widget popularCard(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 200,
        child: Card(
child: Padding(
  padding: const EdgeInsets.only(top:18.0,left: 5),
  child:   Column(
    children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1626804475297-41608ea09aeb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGZvb2RzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
              fit: BoxFit.cover
              )
  
            ),
  
          ),
          Padding(
            padding: const EdgeInsets.only(top:8.0,left: 8),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text('Pasta with hear',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                    Row(
                      children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                            Text('4.2'),
                        Row(
                          children: [
                            Icon(Icons.star,color: Colors.indigo,size: 15,),
                               Icon(Icons.star,color: Colors.indigo,size: 15,),
                                  Icon(Icons.star,color: Colors.indigo,size: 15,),
                                     Icon(Icons.star,color: Colors.grey,size: 15,),
                          ],
                        ),
                     Text('(12+)'),
                        ],
                      ),
                      SizedBox(width: 20,),
                     Row(
                       children: [
                            Text('\$25',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.indigo),),
                       ],
                     )
                      ],
                    )
                    
                  ],
                ),
             
              ],
            ),
          )
  
    ],
  
  ),
),
        ),
      ),
    );
  }

  Widget topOfferCard() {
  return Container(
    width: 200,
    child: Column(
      children: [
        Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1626804475297-41608ea09aeb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGZvb2RzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
              fit: BoxFit.cover
              )
        
            ),
        
          ),
          Padding(
            padding: const EdgeInsets.only(top:8.0,left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text('Pasta with hear',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),),
                Text('Italien recipe for you',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                
              ],
            ),
          ),
            Text('\$30.99',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.indigo),),
        
        ],
        
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Divider(),
        )
      ],
    ),
  );
  }
}