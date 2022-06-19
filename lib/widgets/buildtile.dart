import 'package:flutter/material.dart';
import 'package:loturus/Screens/SingleDropInfo.dart';
import 'package:loturus/Screens/textconstants.dart';
class Build_Tile extends StatelessWidget {

  final String ? text;
  final String ? sidetext;
  Build_Tile({this.text,this.sidetext});

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Container(
      width: width*1,
      margin: EdgeInsets.only(left: width*0.05,right: width*0.05,top: height*0.01),
      height: height*0.145,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),

      child: Row(
        children: [
          Container(
            width: width*0.06,
            height: height*1,
            color:

            sidetext=="URGENT"?
            Color(0xffFF0000):
            sidetext=="HIGH"?
            Color(0xffFF9900):
            sidetext=="NORMAL"?
            Color(0xff8A8A8A)
                :
            Color(0xffC6C6C6)
            ,
            child: RotatedBox(
                quarterTurns: 3,
                child : Center(child: Text(sidetext!,style: mystyle.getPTSanswhite(FontWeight.w700 , 15),))),
          ),
          Container(
            width: width*0.53,

            padding: EdgeInsets.only(left: width*0.04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text("Stock#",style: mystyle.getPTSansblack(FontWeight.w400, 16)),
                    Text("44675657",style: mystyle.getPTSansblack(FontWeight.w700, 16)),
                  ],
                ),

                Text("Make/Model",style: mystyle.getPTSansblack(FontWeight.w400, 16)),
                Text("Vin# 76546785467",style: mystyle.getPTSansblack(FontWeight.w400, 16)),

              ],
            ),
          ),


          text=="crossperson"?
          //crossperson
          InkWell(
            onTap: (){
              Navigator.of(context).pushNamed(SingleDropInfo.routename);
            },
            child: Container(
              margin: EdgeInsets.only(left: width*0.02,top: height*0.01,bottom: height*0.01),
              width: width*0.25,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10)
                , color: Color(0xffEFEFEF),
              ),
              child: Image.asset('images/yourcross.png'),

            ),
          ):
          text=="person"?
          InkWell(
            onTap: (){
              Navigator.of(context).pushNamed(SingleDropInfo.routename);
            },
            child: Container(
              margin: EdgeInsets.only(left: width*0.02,top: height*0.01,bottom: height*0.01),
              width: width*0.25,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10)
                , color: Color(0xffEFEFEF),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('images/rename.png'),
                  SizedBox(height: height*0.015,),
                  Text("Jack F",style: mystyle.getPTSansblack(FontWeight.w400, 14),)
                ],
              ),

            ),
          ):

          //text
          InkWell(
            onTap: (){
              Navigator.of(context).pushNamed(SingleDropInfo.routename);
            },
            child: Container(
              margin: EdgeInsets.only(left: width*0.02,top: height*0.01,bottom: height*0.01),
              width: width*0.25,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10)
                , color: Color(0xffEFEFEF),
              ),
              child:  Center(child: Text("TAKE",style: mystyle.getPTSansRed(FontWeight.w400, 18),)),

            ),
          ),
        ],
      ),
    );
  }
}
