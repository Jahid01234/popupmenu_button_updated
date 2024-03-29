import 'package:flutter/material.dart';
import 'dart:core';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


 int selectedIndex = 0;
 List<String> menuItem = [
   "Dhaka",
   "Mirpur",
   "Faridpur",
   "Bhanga"
 ];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("PopUpMenu Button but its work as Dropdown Button"),
        titleTextStyle: TextStyle(fontSize: 15),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        //  crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            PopupMenuButton(
              elevation: 10,

               child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(menuItem[selectedIndex],style: TextStyle(color: Colors.cyan)),
                    Icon(Icons.keyboard_arrow_down,color: Colors.deepOrangeAccent,)
                  ],
                ),
              itemBuilder: (context){
                  return menuItem.map((e) => PopupMenuItem<String>(value: e, child: Text(e))).toList();
              },
              onSelected: (index){
                  setState(() {
                    selectedIndex = menuItem.indexOf(index.toString());
                  });
              },
             offset: Offset(2,-9),// move the position
              //offset: Offset(MediaQuery.of(context).size.width* 0.5, MediaQuery.of(context).size.height * -0.5),


            ),
          ],
        ),
      ),
    );
  }
}
