import 'package:flutter/material.dart';
import 'package:loturus/Screens/textconstants.dart';
import 'package:loturus/widgets/bottomnavigationbar.dart';
import 'package:loturus/widgets/buildtile.dart';

class QueeFull extends StatefulWidget {
  static const routename="QueeFull";
  @override
  State<QueeFull> createState() => _QueeFullState();
}

class _QueeFullState extends State<QueeFull> {
bool full=false;

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        fit: StackFit.values[1],
        children: [
          Image.asset('images/bg.png',fit: BoxFit.fill),

full?

Container(
  width: width*1,
  child: ListView(

    children: [

      SizedBox(height: height*0.05,),
      Center(child: Text("Queue",style: mystyle.getPTSansRed(FontWeight.w400, 31),)),
Build_Tile(text: 'text',sidetext: "URGENT"),

      Build_Tile(text: 'crossperson',sidetext: "HIGH"),

      Build_Tile(text: 'person',sidetext: "NORMAL"),
      Build_Tile(text: 'text',sidetext: "LOW"),
      Build_Tile(text: 'text',sidetext: "LOW"),
      Build_Tile(text: 'text',sidetext: "LOW"),
    ],
  ),
):

Center(child: InkWell(
    onTap: (){
      setState(() {
        full=true;
      });
    },
    child: Text("Nothing In Queue",style: mystyle.getPTSansRed(FontWeight.w400, 31),))),
        ],
      ),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }


}
