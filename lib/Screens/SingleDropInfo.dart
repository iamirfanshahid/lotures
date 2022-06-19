import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loturus/Inventory/editInventory.dart';
import 'package:loturus/Screens/Quee_full.dart';
import 'package:loturus/Screens/SearchResult.dart';
import 'package:loturus/Screens/SingleDropMap.dart';
import 'package:loturus/Screens/textconstants.dart';
import 'package:loturus/widgets/bottomnavigationbar.dart';
import 'package:loturus/widgets/buildtile.dart';
import 'package:loturus/widgets/formbutton.dart';
import 'package:loturus/widgets/myclipper.dart';

class SingleDropInfo extends StatefulWidget {
  static const routename="SingleDropInfo";
  @override
  State<SingleDropInfo> createState() => _SingleDropInfoState();
}

class _SingleDropInfoState extends State<SingleDropInfo> {
  bool full=false;
  Future<String?> _show_admin_Dialog(BuildContext context) async{
    String ? myval='';
    await   showDialog(
        context: context,
        builder: (ctx) => Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
          ),
          alignment: Alignment.center,
          child: Container(
            padding: EdgeInsets.only(left: 15,right: 15),
            height: MediaQuery.of(context).size.height*0.25,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                SizedBox(height: 20,),

                RichText(
                  text: TextSpan(
                    text: 'You do not have Admin access.',
                    style: TextStyle(
                        color:const  Color(0xff000000),
                        fontWeight: FontWeight.w400,
                        fontSize: 22,
                        fontFamily: 'PTSans-Regular'
                    ),
                    children: const <TextSpan>[
                      TextSpan(
                        text: 'Contact the Admin',
                        style: TextStyle(
                            color:const  Color(0xff000000),
                            fontWeight: FontWeight.w700,
                            fontSize: 22,
                            fontFamily: 'PTSans-Regular'
                        ),
                      ),
                      TextSpan(
                        text: ' to request Admin access',
                        style: TextStyle(
                            color:const  Color(0xff000000),
                            fontWeight: FontWeight.w400,
                            fontSize: 22,
                            fontFamily: 'PTSans-Regular'
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ) ).then((value) {

    });
    return myval;
  }

  Future<String?> _show_delete_Dialog(BuildContext context) async{
    String ? myval='';
    await   showDialog(
        context: context,
        builder: (ctx) => Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
          ),
          alignment: Alignment.center,
          child: Container(
            height: MediaQuery.of(context).size.height*0.35,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                SizedBox(height: 20,),

                Container(
                    margin: EdgeInsets.only(left: 10,right: 10),
                    child: Center(child: Text("Are you sure you would like to Delete this item: ",style: mystyle.getPTSansblack(FontWeight.w400, 22),textAlign: TextAlign.center,))),

                SizedBox(height: 25,),

                Text("#XXXXXX",style: mystyle.getPTSansblack(FontWeight.w700, 24),),
                SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    InkWell(
                        onTap: (){
                          myval='yes';
                          Navigator.of(context).pushNamed(QueeFull.routename);
                        },
                        child: MyCustomButton(text: 'YES',color:   Color(0xffA6080D), secondcolor:  Color(0xffEC1C24),width:  MediaQuery.of(context).size.width*0.3)),

                    SizedBox(width:  MediaQuery.of(context).size.width*0.02,),
                    InkWell(
                        onTap: (){
                          myval="no";
                          Navigator.of(context).pop();
                        },
                        child: MyCustomButton(text: 'NO',color:   Color(0xff8F8F8F), secondcolor:  Color(0xff8F8F8F),width:  MediaQuery.of(context).size.width*0.3)),

                  ],
                ),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ) ).then((value) {

    });
    return myval;
  }


  Future<void> _show_relase_Dialog() async{
    await   showDialog(
        context: context,
        builder: (ctx) => Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
          ),
          alignment: Alignment.center,
          child: Container(
            height: MediaQuery.of(context).size.height*0.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                SizedBox(height: 10,),

                SizedBox(height: 15,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Stock#: ",style: mystyle.getPTSansblack(FontWeight.w400, 22)),

                    Text("44675657",style:mystyle.getPTSansblack(FontWeight.w700, 22)),



                  ],
                ),
                SizedBox(height: 25,),

                Image.asset('images/aroowdown.png'),
                SizedBox(height: 20,),
                Center(child: Text("ServiceBay1",style:mystyle.getPTSansblack(FontWeight.w700, 22))),
                SizedBox(height: 20,),

                Container(
                    width: MediaQuery.of(context).size.width*0.7,
                    child: Text("Do you want to release this request?",style: mystyle.getPTSansblack(FontWeight.w400 , 24),textAlign: TextAlign.center,)),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    InkWell(
                        onTap: (){
                          Navigator.of(context).pushNamed(SearchResult.routename);
                        },
                        child: MyCustomButton(text: 'YES',color:   Color(0xffA6080D), secondcolor:  Color(0xffEC1C24),width:  MediaQuery.of(context).size.width*0.25)),

                    SizedBox(width:  MediaQuery.of(context).size.width*0.02,),
                    InkWell(
                        onTap: (){
                          Navigator.of(context).pop();
                        },
                        child: MyCustomButton(text: 'NO',color:   Color(0xff8F8F8F), secondcolor:  Color(0xff8F8F8F),width:  MediaQuery.of(context).size.width*0.25)),

                  ],
                ),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ) );
  }


  Future<String?> _show_drop_Dialog() async{
    String ? myval='';
    await   showDialog(
        context: context,
        builder: (ctx) => Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
          ),
          alignment: Alignment.center,
          child: Container(
            height: MediaQuery.of(context).size.height*0.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                SizedBox(height: 10,),

                SizedBox(height: 15,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Stock#: ",style: mystyle.getPTSansblack(FontWeight.w400, 22)),

                    Text("44675657",style:mystyle.getPTSansblack(FontWeight.w700, 22)),



                  ],
                ),
                SizedBox(height: 25,),

                Image.asset('images/aroowdown.png'),
                SizedBox(height: 20,),
                Center(child: Text("ServiceBay1",style:mystyle.getPTSansblack(FontWeight.w700, 22))),
                SizedBox(height: 20,),

                Container(
                    width: MediaQuery.of(context).size.width*0.7,
                    child: Text("Are you sure you want to drop here?",style: mystyle.getPTSansblack(FontWeight.w400 , 24),textAlign: TextAlign.center,)),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    InkWell(
                        onTap: (){
                       myval='yes';
                       Navigator.of(context).pop();
                        },
                        child: MyCustomButton(text: 'YES',color:   Color(0xffA6080D), secondcolor:  Color(0xffEC1C24),width:  MediaQuery.of(context).size.width*0.25)),

                    SizedBox(width:  MediaQuery.of(context).size.width*0.02,),
                    InkWell(
                        onTap: (){
                          myval="No";
                          Navigator.of(context).pop();
                        },
                        child: MyCustomButton(text: 'NO',color:   Color(0xff8F8F8F), secondcolor:  Color(0xff8F8F8F),width:  MediaQuery.of(context).size.width*0.25)),

                  ],
                ),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ) ).then((value) {

    });
    return myval;
  }

  Future<String?> _show_drop_complete() async{
    String ? myval='';
    await   showDialog(
        context: context,
        builder: (ctx) => Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
          ),
          alignment: Alignment.center,
          child: Container(
            height: MediaQuery.of(context).size.height*0.35,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                SizedBox(height: 10,),

                SizedBox(height: 15,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Stock#: ",style: mystyle.getPTSansblack(FontWeight.w400, 22)),

                    Text("44675657",style:mystyle.getPTSansblack(FontWeight.w700, 22)),



                  ],
                ),
                SizedBox(height: 25,),

                Container(
                  height: MediaQuery.of(context).size.height*0.15,
                  width: MediaQuery.of(context).size.width*0.25,


                  child: Stack(
                    children: [

                      Container(
                        height: MediaQuery.of(context).size.height*0.15,
                        width: MediaQuery.of(context).size.width*0.25,
                          child: Image.asset('images/dropicon.png',fit: BoxFit.fill),),
                     Center(child: Icon(Icons.done,color: Colors.white,))

                    ],
                  ),
                ),

              ],
            ),
          ),
        ) ).then((value) {

    });
    return myval;
  }



  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: width*1,
        child: Column(

          children: [

            Expanded(
              child: Column(
  children: [
    SizedBox(height: height*0.05,),



    Container(
      width: width*1,
      margin: EdgeInsets.only(left: width*0.05,right: width*0.05,top: height*0.025),
      height: height*0.145,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffEFEFEF),
      ),

      child: Row(
        children: [
          Container(
              width: width*0.06,
              height: height*1,
              color:

              Color(0xffFF9900)
              ,
              child: RotatedBox(
                  quarterTurns: 3,
                  child : Center(child: Text("High",style: mystyle.getPTSanswhite(FontWeight.w700 , 15),))),
          ),
          Container(
              width: width*0.55,

              padding: EdgeInsets.only(left: width*0.04),
              child: Text("Take from SalesLot1 to ServiceBay1 Requested by John D",style: mystyle.getPTSansblack(FontWeight.w400, 16)),
          ),



          //crossperson
          InkWell(
            onTap: (){
              _show_relase_Dialog();
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
          ),





        ],
      ),
    ),


    SizedBox(height: height*0.025,),
    Container(
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: EdgeInsets.only(left: width*0.05),
              width: width*0.7,


              child: Column(
                children: [
                  Row(
                    children: [
                      Container(

                          width:width*0.3,
                          child: Text("Stock#",style: mystyle.getPTSansblack(FontWeight.w400, 20),)),
                      Text("44675657#",style: mystyle.getPTSansRed(FontWeight.w400, 20),),

                    ],
                  ),
                  SizedBox(height: height*0.01,),
                  Row(
                    children: [
                      Container(

                          width:width*0.3,
                          child: Text("Vin#:",style: mystyle.getPTSansblack(FontWeight.w400, 20),)),
                      Text("7964976409874",style: mystyle.getPTSansblack(FontWeight.w400, 20),),

                    ],
                  ),
                  SizedBox(height: height*0.01,),
                  Row(
                    children: [
                      Container(

                          width:width*0.3,
                          child: Text("Make",style: mystyle.getPTSansblack(FontWeight.w400, 20),)),
                      Text("Keystone",style: mystyle.getPTSansblack(FontWeight.w400, 20),),

                    ],
                  ),
                  SizedBox(height: height*0.01,),
                  Row(
                    children: [
                      Container(

                          width:width*0.3,
                          child: Text("Modal:",style: mystyle.getPTSansblack(FontWeight.w400, 20),)),
                      Text("Cougar",style: mystyle.getPTSansblack(FontWeight.w400, 20),),

                    ],
                  ),
                  SizedBox(height: height*0.01,),
                  Row(
                    children: [
                      Container(

                          width:width*0.3,
                          child: Text("Type#:",style: mystyle.getPTSansblack(FontWeight.w400, 20),)),
                      Text("5th Wheel",style: mystyle.getPTSansblack(FontWeight.w400, 20),),

                    ],
                  ),
                  SizedBox(height: height*0.01,),
                  Row(
                    children: [
                      Container(

                          width:width*0.3,
                          child: Text("Location#",style: mystyle.getPTSansblack(FontWeight.w400, 20),)),
                      Text("SalesLot1",style: mystyle.getPTSansblack(FontWeight.w400, 20),),

                    ],
                  ),
                  SizedBox(height: height*0.01,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(

                          width:width*0.3,
                          child: Text("Notes:",style: mystyle.getPTSansblack(FontWeight.w400, 20),)),
                      Container(

                          width: width*0.4,
                          child: Text("This camper needs fixes to the roof structure. It leaks water. ",style: mystyle.getPTSansblack(FontWeight.w400, 20),)),

                    ],
                  ),
                ],
              ),

          ),
          Container(
              width: width*0.2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: height*0.025,),
                  Container(
                    height: height*0.075,
                    width: width*0.15,
                    decoration: BoxDecoration(
                        color: Color(0xffEFEFEF),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Image.asset('images/Exernal_Link 1.png'),
                  ),
                  SizedBox(height: height*0.025,),

                  InkWell(
                    onTap: (){
                      Navigator.of(context).pushNamed(EditInventory.routename);
                    },
                    child: Container(
                      height: height*0.075,
                      width: width*0.15,
                      decoration: BoxDecoration(
                          color: Color(0xffEFEFEF),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Image.asset('images/Rectangle 54.png'),
                    ),
                  ),
                  SizedBox(height: height*0.025,),

                  InkWell(
                    onTap: () async {

                      String ? response=await _show_delete_Dialog(context);

              if(response=='no'){

               _show_admin_Dialog(context);

                  }

                    },
                    child: Container(
                      height: height*0.075,
                      width: width*0.15,
                      decoration: BoxDecoration(
                          color: Color(0xffEFEFEF),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Image.asset('images/Delete.png'),
                    ),
                  ),

                ],
              ),
          ),



        ],
      ),
    )

  ],
),
            ),

            Stack(
              alignment: Alignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: height*0.1,
                      width: width*0.45,

decoration: BoxDecoration(
  color: Colors.black,
  borderRadius: BorderRadius.circular(10)
),
padding: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: width*0.22,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                Container(
                                    height: height*0.03,
                                    child: Image.asset('images/file-info-line 1.png',color: Colors.white,)),

                                Text("View Info",style: mystyle.getPTSanswhite(FontWeight.w700, 16)),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: height*0.1,
                      width: width*0.45,

                      decoration: BoxDecoration(
                          color: Color(0xff8F8F8F),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      padding: EdgeInsets.only(right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.of(context).pushNamed(SingleDropMap.routename);
                            },
                            child: Container(
                              width: width*0.22,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [

                                  Container(
                                      height: height*0.03,
                                      child: Image.asset('images/treasure-map-line 1.png',color: Colors.white,)),

                                  Text("View Map",style: mystyle.getPTSanswhite(FontWeight.w700, 16)),

                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                InkWell(
                  onTap:()async{
      String ? returnedvalue=await _show_drop_Dialog();
      print(returnedvalue.toString());
      if(returnedvalue=='yes'){
        _show_drop_complete();
      }
      else if(returnedvalue=="No"){
        _show_relase_Dialog();
      }
    },
                  child: Container(

                      height: height*.15,
                      child: Image.asset('images/drophere.png')),
                ),

              ],
            ),





          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavigationBar()
    );

  }


}
