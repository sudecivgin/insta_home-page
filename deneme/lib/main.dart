
import 'package:flutter/material.dart';
import 'home_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        iconTheme:IconThemeData(color: Colors.black),
        actionIconTheme: ActionIconThemeData(color:Colors.red),
        appBarTheme: AppBarTheme(
          elevation: 1,
          color: Colors.white,
          iconTheme:IconThemeData(color:Colors.black),
          ),

        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  ___MyHomePageState  createState() => ___MyHomePageState();
}

class ___MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: HomePage(),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            Spacer(),
            IconButton(
              icon: Icon (
                Icons.home,
                color: Colors.black,
                ),
             onPressed:(){
            
             },
            ),
            Spacer(),
             IconButton(  
              icon: Icon (
                   Icons.search ,
                color: Colors.black,
              
              ),
             onPressed:(){},

             ),
            Spacer(),
             IconButton(
              icon: Icon (Icons.ondemand_video ,
                color: Colors.black,
                ), 
                
             onPressed:(){},

             ),
            Spacer(),
             IconButton(
              icon: Icon (Icons.card_travel,
                color: Colors.black,

                ),
                 
             onPressed:(){},

             ),
            Spacer(),

             IconButton(
              icon: Icon (Icons.person,
                color: Colors.black,

                ),
             onPressed:(){},
             ),
          ],
          ),
          ),
    );
  }
} 
  
