import 'package:flutter/material.dart';
import 'package:loturus/Screens/textconstants.dart';
import 'package:loturus/widgets/buildtile.dart';

class SearchResult extends StatefulWidget {
  static const routename="SearchResult";
  @override
  State<SearchResult> createState() => _SearchResultState();

}

class _SearchResultState extends State<SearchResult> {
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


          Container(
            width: width*1,
            child: ListView(

              children: [

                SizedBox(height: height*0.025,),


                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(onPressed: (){
                      Navigator.of(context).pop();

                    }  , icon: Icon(Icons.arrow_back_ios)),
                    Text("Search Results",style: mystyle.getPTSansRed(FontWeight.w400, 31),),
                  ],
                ),
                Build_Tile(text: 'text',sidetext: "HIGH"),

              ],
            ),
          )

        ],
      ),
    );

  }


}
