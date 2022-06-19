import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:loturus/Admin/Screens/AdminProfile.dart';
import 'package:loturus/Inventory/addInventory.dart';
import 'package:loturus/Screens/Quee_full.dart';
import 'package:loturus/Screens/SingleDrop.dart';
import 'package:loturus/Screens/SingleDropInfo.dart';


int Sleec_current_index=0;

class MyBottomNavigationBar extends StatefulWidget {

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.transparent,
      color: Color(0xffFF0000),
      index: Sleec_current_index,
      items: <Widget>[
        Image.asset('images/search.png'),

        Container(
            height: MediaQuery.of(context).size.height*0.02,
            child: Image.asset('images/quee.png')),
        Image.asset('images/add.png'),
        Image.asset('images/person.png'),
      ],
      onTap: (index) {
        //Handle button tap

        setState(() {
          Sleec_current_index=index;
        });
      if(index==1){
        Navigator.of(context).pushNamed(QueeFull.routename);
      }

        if(index==0){
          Navigator.of(context).pushNamed(SingleDrop.routename);
        }

        if(index==2){
          Navigator.of(context).pushNamed(AddInventory.routename);
        }
        if(index==3){
          Navigator.of(context).pushNamed(AdminProfile.routename);
        }
        },
    );
  }
}
