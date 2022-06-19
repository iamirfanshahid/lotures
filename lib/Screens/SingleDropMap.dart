import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loturus/Screens/RequestSwapMap.dart';
import 'package:loturus/Screens/textconstants.dart';
import 'package:loturus/widgets/bottomnavigationbar.dart';
import 'package:loturus/widgets/buildtile.dart';
import 'package:loturus/widgets/formbutton.dart';
import 'package:loturus/widgets/myclipper.dart';

class SingleDropMap extends StatefulWidget {
  static const routename="SingleDropMap";
  @override
  State<SingleDropMap> createState() => _SingleDropMapState();
}

class _SingleDropMapState extends State<SingleDropMap> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          fit: StackFit.expand,
          children: [

            Image.asset('images/bgmap.png'),

            Container(
              width: width * 1,
              child: Column(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        SizedBox(
                          height: height * 0.075,
                        ),
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
                            height: height * 0.1,
                            width: width * 0.45,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10)),
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: width * 0.22,
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          height: height * 0.03,
                                          child: Image.asset(
                                            'images/file-info-line 1.png',
                                            color: Colors.white,
                                          )),
                                      Text("View Info",
                                          style: mystyle.getPTSanswhite(
                                              FontWeight.w700, 16)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: height * 0.1,
                            width: width * 0.45,
                            decoration: BoxDecoration(
                                color: Color(0xff8F8F8F),
                                borderRadius: BorderRadius.circular(10)),
                            padding: EdgeInsets.only(right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: width * 0.22,
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          height: height * 0.03,
                                          child: Image.asset(
                                            'images/treasure-map-line 1.png',
                                            color: Colors.white,
                                          )),
                                      Text("View Map",
                                          style: mystyle.getPTSanswhite(
                                              FontWeight.w700, 16)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () async {
                          String? returnedvalue = await _show_drop_Dialog();
                          print(returnedvalue.toString());
                          if (returnedvalue == 'yes') {
                            _show_drop_complete();
                          } else if (returnedvalue == "No") {
                            _show_relase_Dialog();
                          }
                        },
                        child: Container(
                            height: height * .15,
                            child: Image.asset('images/drophere.png')),
                      ),
                    ],
                  ),
                ],
              ),
            ),



          ],
        ),
        bottomNavigationBar: MyBottomNavigationBar());
  }

  bool full = false;
  Future<void> _show_relase_Dialog() async {
    await showDialog(
        context: context,
        builder: (ctx) => Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)),
          alignment: Alignment.center,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Stock#: ",
                        style: mystyle.getPTSansblack(FontWeight.w400, 22)),
                    Text("44675657",
                        style: mystyle.getPTSansblack(FontWeight.w700, 22)),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Image.asset('images/aroowdown.png'),
                SizedBox(
                  height: 20,
                ),
                Center(
                    child: Text("ServiceBay1",
                        style:
                        mystyle.getPTSansblack(FontWeight.w700, 22))),
                SizedBox(
                  height: 20,
                ),
                Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Text(
                      "Do you want to release this request?",
                      style: mystyle.getPTSansblack(FontWeight.w400, 24),
                      textAlign: TextAlign.center,
                    )),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: MyCustomButton(
                            text: 'YES',
                            color: Color(0xffA6080D),
                            secondcolor: Color(0xffEC1C24),
                            width:
                            MediaQuery.of(context).size.width * 0.25)),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: MyCustomButton(
                            text: 'NO',
                            color: Color(0xff8F8F8F),
                            secondcolor: Color(0xff8F8F8F),
                            width:
                            MediaQuery.of(context).size.width * 0.25)),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ));
  }

  Future<String?> _show_request_Dialog() async {
    String? myval ;
    String ? choice='';
    bool selectedval=false;

    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    await showDialog(
        context: context,
        builder: (ctx) => StatefulBuilder(builder: (context,setState){
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)),
            alignment: Alignment.center,
            child: Container(
              height:
              myval==null?
              MediaQuery.of(context).size.height * 0.4:
              MediaQuery.of(context).size.height * 0.8,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Stock#: ",
                          style: mystyle.getPTSansblack(FontWeight.w400, 22)),
                      Text("44675657",
                          style: mystyle.getPTSansblack(FontWeight.w700, 22)),
                    ],
                  ),
                  Text("Move to location",
                      style: mystyle.getPTSansblack(FontWeight.w400, 22)),
                  SizedBox(
                    height: 25,
                  ),


                  Container(
                      height: height*0.075,
                      width: width*1,
                      margin: EdgeInsets.only(left: width*0.1,right: width*0.1),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black,width: 1),
                          borderRadius: BorderRadius.circular(6)
                      ),
                      padding: EdgeInsets.only(left: 10),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          hint: Text(
                            'Choose location',
                            style: mystyle.getPTSansblack(FontWeight.w400, 16),
                          ),
                          value:myval ,
                          onChanged: (value) {
                            setState(() {
                              myval = (value as String?)!;
                            });
                          },
                          icon: Icon(Icons.arrow_drop_down,size: 40,color: Colors.black),
                          isExpanded: true,
                          items:['Service-Bay1','Service-Bay2','Service-Bay3'].map(
                                  (e) => DropdownMenuItem(value: e, child: Text(e)))
                              .toList(),
                        ),
                      )
                  ),



                  if(myval!=null)
                    SizedBox(
                      height: 25,
                    ),
                  if(myval!=null)

                    Column(
                      children: [
                        Text("Set priority",style: mystyle.getPTSansblack(FontWeight.w400, 24)),
                        SizedBox(
                          height: 15,
                        ),
                        Column(
                          children: List.generate(data.length, (index) =>

                              Column(
                                children: [
                                  InkWell(
                                      onTap: (){
                                        setState(() {
                                          data[index]['status']=true;
                                        });

                                      },
                                      child: mycustombutton(color: data[index]['color'],txt:  data[index]['text'],status: data[index]['status'])),
                                  SizedBox(
                                    height: height*0.015,
                                  ),

                                ],
                              ),),

                        ),


                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  SizedBox(
                    height: 15,
                  ),


                  myval==null?
                  InkWell(
                      onTap: () {

                        Navigator.of(context).pop();
                      },
                      child: Center(
                        child: MyCustomButton(
                            text: 'OK',
                            color: Color(0xffA6080D),
                            secondcolor: Color(0xffEC1C24),
                            width:
                            MediaQuery.of(context).size.width * 0.25),
                      )):
                  InkWell(
                      onTap: () {
                        choice='yes';
                        Navigator.of(context).pop();
                      },
                      child: Center(
                        child: MyCustomButton(
                            text: 'Submit Request',
                            color: Color(0xffA6080D),
                            secondcolor: Color(0xffEC1C24),
                            width:
                            MediaQuery.of(context).size.width * 0.48),
                      ))

                  ,
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          );
        })


    );
    return myval;
  }
  List<Map<String,dynamic>> data=[
    {
      'color':Color(0xffFF0000),
      'text':'URGENT',
      'status':false
    },
    {
      'color':Color(0xffFF9900),
      'text':'HIGH',
      'status':false
    },
    {
      'color':Color(0xff8A8A8A),
      'text':'NORMAL',
      'status':false
    },
    {
      'color':Color(0xffC6C6C6),
      'text':'LOW',
      'status':false
    },
  ];

  Widget mycustombutton({Color ? color,String ? txt,bool?  status}){
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;

    return Container(
      height: height*0.06,
      width: width*0.35,

      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(6)
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          status!?
          Icon(Icons.done,size: 30,)
              :Text(""),

          Text(txt!,style: mystyle.getPTSanswhiteItalic(FontWeight.w700, 20)),
        ],
      ),
    );
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
  Future<String?> _show_drop_complete() async {
    String? myval = '';
    await showDialog(
        context: context,
        builder: (ctx) => Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)),
          alignment: Alignment.center,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.38,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Stock#: ",
                        style: mystyle.getPTSansblack(FontWeight.w400, 22)),
                    Text("44675657",
                        style: mystyle.getPTSansblack(FontWeight.w700, 22)),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                InkWell(
                  onTap: (){
                    Navigator.of(context).pushNamed(RequestSwapMap.routename);
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: MediaQuery.of(context).size.width * 0.25,
                    child: Stack(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.15,
                          width: MediaQuery.of(context).size.width * 0.25,
                          child: Image.asset('images/dropicon.png',
                              fit: BoxFit.fill),
                        ),
                        Center(
                            child: Icon(
                              Icons.arrow_forward,
                              size: 40,
                              color: Colors.white,
                            )),



                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),

                Text("ServiceBay1",style: mystyle.getPTSansblack(FontWeight.w700, 22),)

              ],
            ),
          ),
        )).then((value) {});
    return myval;
  }
}
