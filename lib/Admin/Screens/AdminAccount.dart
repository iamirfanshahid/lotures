import 'package:flutter/material.dart';
import 'package:loturus/Admin/Screens/AdminNewUser.dart';
import 'package:loturus/Admin/Screens/adminplanpayment_white.dart';
import 'package:loturus/Screens/textconstants.dart';
import 'package:loturus/widgets/bottomnavigationbar.dart';
import 'package:loturus/widgets/formbutton.dart';

class AdminAccount extends StatefulWidget {
  static const routename="AdminAccount";
  @override

  State<AdminAccount> createState() => _AdminAccountState();
}

class _AdminAccountState extends State<AdminAccount> {
  List<Map<String,dynamic>> data=[
    {
      'title':'Perform Drops',
      'check':false
    },

    {
      'title':'Add/Edit/Delete Inventory',
      'check':false
    },  {
      'title':'Request One Ways',
      'check':false
    },  {
      'title':'Request Swaps',
      'check':false
    },  {
      'title':'Perform Drops',
      'check':false
    },  {
      'title':'Admin Access',
      'check':false
    }
  ];


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      // body: Stack(
      //   fit: StackFit.values[1],
      //   children: [
      //     Image.asset('images/bg.png',fit: BoxFit.fill),
      //     Container(
      //       width: width * 1,
      //       child: ListView(
      //         children: [
      //
      //           SizedBox(
      //             height: MediaQuery.of(context).size.height * 0.05,
      //           ),
      //
      //
      //           Center(
      //             child: RichText(
      //               text: TextSpan(
      //                 text: '< ',
      //                 style: TextStyle(fontSize: 31, color: Color(0xff818181)),
      //                 children: const <TextSpan>[
      //                   TextSpan(
      //                       text: 'Service',
      //                       style: TextStyle(
      //                           color: const Color(0xff9A0509),
      //                           fontWeight: FontWeight.w400,
      //                           fontSize: 31,
      //                           fontFamily: 'PTSans-Regular')),
      //                 ],
      //               ),
      //             ),
      //           ),
      //
      //           SizedBox(
      //             height: MediaQuery.of(context).size.height * 0.05,
      //           ),
      //
      //           Container(
      //               margin: EdgeInsets.only(left: width*0.1),
      //               child: Text("YOUR PLAN", style: mystyle.getPTSansblack(FontWeight.w700, 14),),),
      //
      //           SizedBox(
      //             height: MediaQuery.of(context).size.height * 0.025,
      //           ),
      //
      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //              children: [
      //                Container(
      //
      //                  height: height*0.47,
      //
      //                  child: Stack(
      //
      //                    children: [
      //                      Container(
      //                        height: height*0.4,
      //                        width: width*0.45,
      //
      //                        decoration: BoxDecoration(
      //                            color: Colors.white,
      //                            border: Border.all(color: Colors.black),
      //                            borderRadius: BorderRadius.circular(20)
      //                        ),
      //
      //                        child: Column(
      //                          children: [
      //                            Container(
      //                              height: height*0.07,
      //                              width: double.infinity,
      //                              decoration: BoxDecoration(
      //                                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
      //                                color: Color(0xff9A0509),
      //
      //                              ),
      //                              child: Center(child: Text("Base",style: mystyle.getPTSanswhite(FontWeight.w400, 20 ))),
      //                            ),
      //                            SizedBox(height: height*0.02,),
      //                            RichText(
      //                              textAlign: TextAlign.center,
      //                              text: TextSpan(
      //                                text: '5 Users Included\n',
      //                                style:mystyle.getPTSansblack(FontWeight.w400, 20),
      //
      //                                children: const <TextSpan>[
      //                                  TextSpan(
      //                                      text: '100 Items in Inventory\n',
      //                                      style: TextStyle(
      //                                          color: const Color(0xff000000),
      //                                          fontWeight: FontWeight.w400,
      //                                          fontSize: 20,
      //                                          fontFamily: 'PTSans-Regular')),
      //                                  TextSpan(
      //                                      text: '\$69.99\n',
      //                                      style: TextStyle(
      //                                          color: const Color(0xff000000),
      //                                          fontWeight: FontWeight.w700,
      //                                          fontSize: 20,
      //                                          fontFamily: 'PTSans-Regular')),
      //                                  TextSpan(
      //                                      text: 'Monthly or ',
      //                                      style: TextStyle(
      //                                          color: const Color(0xff000000),
      //                                          fontWeight: FontWeight.w400,
      //                                          fontSize: 20,
      //                                          fontFamily: 'PTSans-Regular')),
      //
      //                                  TextSpan(
      //                                      text: '\$750', style: TextStyle(
      //                                      color: const Color(0xff000000),
      //                                      fontWeight: FontWeight.w700,
      //                                      fontSize: 20,
      //                                      fontFamily: 'PTSans-Regular')),
      //                                  TextSpan(
      //                                      text: ' Yearly (10% Off)',
      //                                      style: TextStyle(
      //                                          color: const Color(0xff000000),
      //                                          fontWeight: FontWeight.w400,
      //                                          fontSize: 20,
      //                                          fontFamily: 'PTSans-Regular')),
      //                                ],
      //                              ),
      //                            ),
      //
      //                          ],
      //                        ),
      //                      ),
      //
      //                      Positioned(
      //                        width: width/2.2,
      //                        bottom: 0,
      //
      //                        child: Container(
      //                          alignment: Alignment.center,
      //
      //                          child: Column(
      //                            children: [
      //                              InkWell(
      //                                  onTap: (){
      //                                    Navigator.of(context).pushNamed(AdminPlanPaymentWhite.routename);
      //                                  },
      //                                  child: MyCustomButton(text: 'MONTHLY',color:   Color(0xff8F8F8F), secondcolor:  Color(0xffE8F8F8F),width: width*0.3)),
      //
      //                              SizedBox(height: height*0.02,),
      //
      //                              InkWell(
      //                                  onTap: (){
      //                                    Navigator.of(context).pushNamed(AdminPlanPaymentWhite.routename);
      //
      //                                  },
      //                                  child: MyCustomButton(text: 'YEARLY',color:   Color(0xffA6080D), secondcolor:  Color(0xffEC1C24),width: width*0.3)),
      //
      //
      //                            ],
      //                          ),
      //                        ),
      //                      ),
      //
      //
      //                    ],
      //                  ),
      //                ),
      //                SizedBox(width: width*0.015,),
      //
      //
      //                Container(
      //                  height: height*0.47,
      //
      //                  child: Stack(
      //                    children: [
      //
      //                      Container(
      //                        height: height*0.4,
      //                        width: width*0.45,
      //
      //                        decoration: BoxDecoration(
      //                            color: Colors.white,
      //                            border: Border.all(color: Colors.black),
      //                            borderRadius: BorderRadius.circular(20)
      //                        ),
      //
      //                        child: Column(
      //                          children: [
      //                            Container(
      //                              height: height*0.07,
      //                              width: double.infinity,
      //                              decoration: BoxDecoration(
      //                                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
      //                                color: Color(0xff8F8F8F),
      //
      //                              ),
      //                              child: Center(child: Text("Advanced",style: mystyle.getPTSanswhite(FontWeight.w400, 20 ))),
      //                            ),
      //                            SizedBox(height: height*0.02,),
      //                            RichText(
      //                              textAlign: TextAlign.center,
      //                              text: TextSpan(
      //                                text: '5 Users Included\n',
      //                                style:mystyle.getPTSansblack(FontWeight.w400, 20),
      //
      //                                children: const <TextSpan>[
      //                                  TextSpan(
      //                                      text: 'Unlimited Inventory\n',
      //                                      style: TextStyle(
      //                                          color: const Color(0xff000000),
      //                                          fontWeight: FontWeight.w400,
      //                                          fontSize: 20,
      //                                          fontFamily: 'PTSans-Regular')),
      //                                  TextSpan(
      //                                      text: '\$159.99',
      //                                      style: TextStyle(
      //                                          color: const Color(0xff000000),
      //                                          fontWeight: FontWeight.w700,
      //                                          fontSize: 20,
      //                                          fontFamily: 'PTSans-Regular')),
      //                                  TextSpan(
      //                                      text: ' Monthly or ',
      //                                      style: TextStyle(
      //                                          color: const Color(0xff000000),
      //                                          fontWeight: FontWeight.w400,
      //                                          fontSize: 20,
      //                                          fontFamily: 'PTSans-Regular')),
      //
      //                                  TextSpan(
      //                                      text: '\$1,725.00', style: TextStyle(
      //                                      color: const Color(0xff000000),
      //                                      fontWeight: FontWeight.w700,
      //                                      fontSize: 20,
      //                                      fontFamily: 'PTSans-Regular')),
      //                                  TextSpan(
      //                                      text: ' Yearly (10% Off)',
      //                                      style: TextStyle(
      //                                          color: const Color(0xff000000),
      //                                          fontWeight: FontWeight.w400,
      //                                          fontSize: 20,
      //                                          fontFamily: 'PTSans-Regular')),
      //                                ],
      //                              ),
      //                            ),
      //
      //                          ],
      //                        ),
      //                      ),
      //
      //                      Positioned(
      //                        width: width/2.2,
      //                        bottom: 0,
      //
      //                        child: Container(
      //                          alignment: Alignment.center,
      //
      //                          child: Column(
      //                            children: [
      //                              InkWell(
      //                                  onTap: (){
      //                                    Navigator.of(context).pushNamed(AdminPlanPaymentWhite.routename);
      //
      //                                  },
      //                                  child: MyCustomButton(text: 'MONTHLY',color:   Color(0xff8F8F8F), secondcolor:  Color(0xffE8F8F8F),width: width*0.3)),
      //
      //                              SizedBox(height: height*0.02,),
      //
      //                              InkWell(
      //                                  onTap: (){
      //                                    Navigator.of(context).pushNamed(AdminPlanPaymentWhite.routename);
      //
      //                                  },
      //                                  child: MyCustomButton(text: 'YEARLY',color:   Color(0xffA6080D), secondcolor:  Color(0xffEC1C24),width: width*0.3)),
      //
      //
      //                            ],
      //                          ),
      //                        ),
      //                      ),
      //
      //                    ],
      //                  ),
      //                ),
      //
      //              ],
      //           ),
      //           SizedBox(
      //             height: MediaQuery.of(context).size.height * 0.025,
      //           ),
      //
      //           Container(
      //             height: height*0.205,
      //
      //
      //             child: Stack  (
      //               children: [
      //                 Container(
      //                   width: width*1,
      //                   height: height*0.18,
      //                   margin: EdgeInsets.only(left: width*0.1,right: width*0.1),
      //
      //                   decoration: BoxDecoration(
      //                     borderRadius: BorderRadius.circular(10),
      //                     color: Colors.white,
      //                   ),
      //                   child: Column(
      //                     children: [
      //                       Container(
      //                         height: height*0.07,
      //                         width: double.infinity,
      //                         decoration: BoxDecoration(
      //                           borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
      //                           color: Color(0xff8F8F8F),
      //                         ),
      //
      //                         child: Center(child: Text("Addon Users",style: mystyle.getPTSanswhite(FontWeight.w400, 20 ))),
      //                       ),
      //
      //                       Text('1 User = \$4.99 Per Month\nor \$50 Per Year (15% Off!)',style: mystyle.getPTSansblack(FontWeight.w400, 16)),
      //
      //
      //
      //                     ],
      //                   ),
      //                 ),
      //
      //                 Positioned(
      //                   bottom: 0,
      //                   width: width*1,
      //                   child: Container(
      //                     alignment: Alignment.center,
      //                     child: Column(
      //                       children: [
      //                         InkWell(
      //                             onTap: (){
      //
      //                             },
      //                             child: MyCustomButton(text: 'ADD USERS',color:   Color(0xffA6080D), secondcolor:  Color(0xffEC1C24),width: width*0.3)),
      //
      //                       ],
      //                     ),
      //                   ),
      //                 ),
      //
      //               ],
      //             ),
      //           ),
      //
      //
      //
      //         ],
      //       ),
      //     )
      //   ],
      // ),
      body: Stack(
        children: [
          Image.asset('images/bg.png'),
          Container(
            width: width * 1,
            child: ListView(
              children: [

                SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                Container(
                    height: 65,
                    width: width*1,
                    child: Image.asset('images/LotGurus 1.png',)),
                SizedBox(height: MediaQuery.of(context).size.height*0.0025,),

                Center(
                  child: RichText(
                    text: TextSpan(
                      text: '',
                      style: TextStyle(fontSize: 31, color: Color(0xff818181)),
                      children: const <TextSpan>[
                        TextSpan(
                            text: 'Plan & Payment',
                            style: TextStyle(
                                color: const Color(0xff9A0509),
                                fontWeight: FontWeight.w400,
                                fontSize: 31,
                                fontFamily: 'PTSans-Regular')),
                      ],
                    ),
                  ),
                ),


                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.015,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(

                      height: height*0.385,


                      child: Stack(

                        children: [
                          Container(
                            height: height*0.35,
                            width: width*0.4,

                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(5)
                            ),

                            child: Column(
                              children: [
                                Container(
                                  height: height*0.07,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5)),
                                    color: Color(0xff9A0509),

                                  ),
                                  child: Center(child: Text("Base",style: mystyle.getPTSanswhite(FontWeight.w400, 20 ))),
                                ),
                                SizedBox(height: height*0.02,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 12.0,right: 12),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                      text: '5 Users Included\n',
                                      style:mystyle.getPTSansblack(FontWeight.w400, 15),

                                      children: const <TextSpan>[
                                        TextSpan(
                                            text: '100 Items in Inventory\n',
                                            style: TextStyle(
                                                color: const Color(0xff000000),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 15,
                                                fontFamily: 'PTSans-Regular')),
                                        TextSpan(
                                            text: '\$69.99 ',
                                            style: TextStyle(
                                                color: const Color(0xff000000),
                                                fontWeight: FontWeight.w700,
                                                fontSize: 15,
                                                fontFamily: 'PTSans-Regular')),
                                        TextSpan(
                                            text: 'Monthly or ',
                                            style: TextStyle(
                                                color: const Color(0xff000000),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 15,
                                                fontFamily: 'PTSans-Regular')),

                                        TextSpan(
                                            text: '\$750', style: TextStyle(
                                            color: const Color(0xff000000),
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15,
                                            fontFamily: 'PTSans-Regular')),
                                        TextSpan(
                                            text: ' Yearly (10% Off)',
                                            style: TextStyle(
                                                color: const Color(0xff000000),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 15,
                                                fontFamily: 'PTSans-Regular')),
                                      ],
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),

                          Positioned(

                            bottom: 0,
                            width: width*0.4,
                            child: Container(
                              alignment: Alignment.center,

                              child: Column(
                                children: [
                                  InkWell(
                                    onTap: (){
                                      Navigator.of(context).pushNamed(AdminPlanPaymentWhite.routename);
                                    },
                                    // child: MyCustomButton(text: 'MONTHLY',color:   Color(0xff8F8F8F), secondcolor:  Color(0xffE8F8F8F),width: width*0.3)
                                    //
                                    child: Container(
                                      height: 46,
                                      width: 115,

                                      decoration: BoxDecoration(

                                          gradient: LinearGradient(

                                            colors: [

                                              Color(0xff8F8F8F),
                                              Color(0xffE8F8F8F)

                                            ],

                                            end: Alignment.topRight,

                                            begin: Alignment.topLeft,

                                          ),
                                          borderRadius: BorderRadius.circular(6)
                                      ),

                                      child: Center(child: Text("MONTHLY",style: mystyle.getPTSanswhiteItalic(FontWeight.w700, 20))),
                                    ),
                                  ),

                                  SizedBox(height: height*0.005,),

                                  InkWell(
                                      onTap: (){
                                        Navigator.of(context).pushNamed(AdminPlanPaymentWhite.routename);
                                      },
                                      // child: MyCustomButton(text: 'YEARLY',color:   Color(0xffA6080D), secondcolor:  Color(0xffEC1C24),width: width*0.3)),
                                      child: Container(
                                        height: 46,
                                        width: 115,

                                        decoration: BoxDecoration(

                                            gradient: LinearGradient(

                                              colors: [

                                                Color(0xffA6080D),
                                                Color(0xffEC1C24)

                                              ],

                                              end: Alignment.topRight,

                                              begin: Alignment.topLeft,

                                            ),
                                            borderRadius: BorderRadius.circular(6)
                                        ),

                                        child: Center(child: Text("YEARLY",style: mystyle.getPTSanswhiteItalic(FontWeight.w700, 20))),
                                      )),

                                ],
                              ),
                            ),
                          ),


                        ],
                      ),
                    ),
                    SizedBox(width: width*0.015,),
                    Container(

                      height: height*0.385,


                      child: Stack(

                        children: [
                          Container(
                            height: height*0.35,
                            width: width*0.4,

                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(5)
                            ),

                            child: Column(
                              children: [
                                Container(
                                  height: height*0.07,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5)),
                                    color: Color(0xff8F8F8F),

                                  ),
                                  child: Center(child: Text("Advanced",style: mystyle.getPTSanswhite(FontWeight.w400, 20 ))),
                                ),
                                SizedBox(height: height*0.02,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 12.0,right: 12),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                      text: '',
                                      style:mystyle.getPTSansblack(FontWeight.w400, 15),

                                      children: const <TextSpan>[
                                        TextSpan(
                                            text: '12 Users Included Unlimited Inventory\n',
                                            style: TextStyle(
                                                color: const Color(0xff000000),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 15,
                                                fontFamily: 'PTSans-Regular')),
                                        TextSpan(
                                            text: '\$159.99 ',
                                            style: TextStyle(
                                                color: const Color(0xff000000),
                                                fontWeight: FontWeight.w700,
                                                fontSize: 15,
                                                fontFamily: 'PTSans-Regular')),
                                        TextSpan(
                                            text: 'Monthly or ',
                                            style: TextStyle(
                                                color: const Color(0xff000000),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 15,
                                                fontFamily: 'PTSans-Regular')),

                                        TextSpan(
                                            text: '\$1,725.00', style: TextStyle(
                                            color: const Color(0xff000000),
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15,
                                            fontFamily: 'PTSans-Regular')),
                                        TextSpan(
                                            text: ' Yearly (10% Off)',
                                            style: TextStyle(
                                                color: const Color(0xff000000),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 15,
                                                fontFamily: 'PTSans-Regular')),
                                      ],
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),

                          Positioned(

                            bottom: 0,
                            width: width*0.4,
                            child: Container(
                              alignment: Alignment.center,

                              child: Column(
                                children: [
                                  InkWell(
                                    onTap: (){
                                      Navigator.of(context).pushNamed(AdminPlanPaymentWhite.routename);
                                    },

                                    child: Container(
                                      height: 46,
                                      width: 115,

                                      decoration: BoxDecoration(

                                          gradient: LinearGradient(

                                            colors: [

                                              Color(0xff8F8F8F),
                                              Color(0xffE8F8F8F)

                                            ],

                                            end: Alignment.topRight,

                                            begin: Alignment.topLeft,

                                          ),
                                          borderRadius: BorderRadius.circular(6)
                                      ),

                                      child: Center(child: Text("MONTHLY",style: mystyle.getPTSanswhiteItalic(FontWeight.w700, 20))),
                                    ),
                                  ),

                                  SizedBox(height: height*0.005,),

                                  InkWell(
                                      onTap: (){
                                        Navigator.of(context).pushNamed(AdminPlanPaymentWhite.routename);
                                      },
                                      // child: MyCustomButton(text: 'YEARLY',color:   Color(0xffA6080D), secondcolor:  Color(0xffEC1C24),width: width*0.3)),
                                      child: Container(
                                        height: 46,
                                        width: 115,

                                        decoration: BoxDecoration(

                                            gradient: LinearGradient(

                                              colors: [

                                                Color(0xffA6080D),
                                                Color(0xffEC1C24)

                                              ],

                                              end: Alignment.topRight,

                                              begin: Alignment.topLeft,

                                            ),
                                            borderRadius: BorderRadius.circular(6)
                                        ),

                                        child: Center(child: Text("YEARLY",style: mystyle.getPTSanswhiteItalic(FontWeight.w700, 20))),
                                      )),

                                ],
                              ),
                            ),
                          ),


                        ],
                      ),
                    ),



                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),

                Container(
                  height: height*0.225,


                  child: Stack  (
                    children: [
                      Container(
                        width: width*1,
                        height: height*0.19,
                        margin: EdgeInsets.only(left: width*0.1,right: width*0.1),

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [

                            Container(
                              height: height*0.07,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5)),
                                color: Color(0xff8F8F8F),
                              ),

                              child: Center(child: Text("Addon Users",style: mystyle.getPTSanswhite(FontWeight.w400, 20 ))),
                            ),
                            SizedBox(height: height*0.015,),
                            Text('1 User = \$4.99 Per Month\nor \$50 Per Year (15% Off!)',style: mystyle.getPTSansblack(FontWeight.w400, 16)),



                          ],
                        ),
                      ),

                      Positioned(
                        bottom: 0,
                        width: width*1,
                        child: Container(
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              InkWell(
                                  onTap: (){
                                    Navigator.of(context).pushNamed(AdminNewUser.routename);
                                  },
                                  child: MyCustomButton(text: 'ADD USERS',color:   Color(0xffA6080D), secondcolor:  Color(0xffEC1C24),width: width*0.38)),

                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.0025,
                ),


              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }

  Widget buildLocation(String? title) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.only(left: width * 0.1, right: width * 0.1),
      height: height * 0.05,
      width: width * 1,
      child: Row(
        children: [


          Container(
            margin: EdgeInsets.only(left: width * 0.025),
            height: height * 0.03,
            child: Image.asset('images/flag.png',color: Color(0xff999999)),),

          Container(
              margin: EdgeInsets.only(left: width * 0.04),
              width: width * 0.5,
              child: Text(
                title!,
                style: mystyle.getPTSansblack(FontWeight.w700, 18),
              )),
          Icon(Icons.edit),
          Icon(Icons.close)
        ],
      ),
    );
  }


}
