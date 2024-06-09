import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String>profileImages= [

     "images/profill.jpg",
     "images/profil1.jpg",
     "images/profil2.jpg",
     "images/profil4.jpg",
     "images/profil5.jpg",
     "images/profil6.jpg",
     "images/profil7.jpg",
     "images/profil8.jpg",
  ];
  List<String>posts= [
     "images/post_5.jpg",
     "images/canon.jpg",
     "images/cats2.jpg",
     "images/şebo.jpg",
     "images/cats.jpeg",
     "images/post.jpg",
     "images/post_3.jpg",
     "images/post_4.jpg",

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("images/insta_logo.png",
        height: 50,

        ),
        actions: [
          IconButton (icon: Icon(Icons.add_circle_outline),
           onPressed: (){},

          ),
          IconButton (icon: Icon(Icons.favorite_border),
           onPressed: (){},

          ),
          IconButton (icon: Icon(Icons.chat_bubble_outline),
           onPressed: (){},

          ),
           
           ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                 8,
                 (index) => Container(
                    padding: EdgeInsets.all(13),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage:AssetImage(
                          "images/story.png",
                                      ) ,
                          child:CircleAvatar( 
                            radius: 32,
                            backgroundImage:AssetImage(
                          profileImages[index],
                          ) ,
                          ) ,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "anonim.insta",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                      )
                    ],
                  ),
                 ),
              ),
              ),
            ),
            Divider (),
            Column(
              children: List.generate(
                8, 
            (index) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(12),
                      child:CircleAvatar(
                        radius: 18,
                        backgroundImage:AssetImage(
                          "images/story.png",
                          ) ,
                          child:CircleAvatar( 
                            radius: 16,
                            backgroundImage:AssetImage(
                          profileImages[index],
                          ),
                          ),
                      ),
                      ),
                      Text("anonim.insta"),
                      Spacer(),
                      IconButton(
                        icon:Icon(Icons.more_vert) ,
                      onPressed:(){},
                      )

                      ],
                      ),
                      
                      Image.asset(posts[index]),
                      
                      Row(children: [
                        IconButton(
                          icon: Icon(Icons.favorite_border), 
                          onPressed: (){},
                          ),
                        IconButton(
                          icon: Icon(Icons.chat_bubble_outline), 
                          onPressed: (){},
                          ),

                        IconButton(
                          icon: Icon(Icons.send), 
                          onPressed: (){},
                          ),

                          Spacer(),

                           IconButton(
                          icon: Icon(Icons.bookmark_border), 
                          onPressed: (){},
                          ),
    


                      ],
                      ),
                      Container(padding: EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          RichText(
                            text: TextSpan(
                              style: TextStyle(color:Colors.black),
                              children:[
                              TextSpan(
                                text: " ssude_sc ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                                ),
                                TextSpan( text: " ve "),
                                TextSpan(
                                  text: " ve 218 diğer kişi beğendi ",
                                  style: TextStyle(fontWeight: FontWeight.bold,
                                  ),
                                )

                              ],
                               ),
                          
                          ),
                           RichText(
                            text: TextSpan(
                              style: TextStyle(color:Colors.black),
                              children:[
                              TextSpan(
                                text: " anonim.insta ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                                ),
                                TextSpan(
                                  text: 
                                  " some little memories <3",                      
                                 
                                ),
                              ],
                               ),
                          
                          ),
                          Text(
                            "1 saat önce",
                            style: TextStyle(
                              color: Colors.black),
                              ),

                        ],
                      ),

                      ),
              ],
              ),
              ),
              
              )


        ],
        ),
        )
      );
  }
}