import 'package:flutter/material.dart';
import 'package:loturus/Screens/Quee_full.dart';
import 'package:loturus/Screens/textconstants.dart';
import 'package:loturus/widgets/bottomnavigationbar.dart';
import 'package:loturus/widgets/formbutton.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EditInventory extends StatelessWidget {
  static const routename="EditInventory";
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        fit: StackFit.values[1],
        children: [
          Image.asset('images/bg.png',fit: BoxFit.fill),
          SingleChildScrollView(
            child: Container(

              height: height*1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height*0.05,),


                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: '< ',
                        style: TextStyle(fontSize: 31, color: Colors.black),
                        children: const <TextSpan>[
                          TextSpan(
                              text: 'Edit',
                              style: TextStyle(
                                  color: const Color(0xff9A0509),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 31,
                                  fontFamily: 'PTSans-Regular')),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.025,),

                  FormButton(hint: '44675657',obsecure: false),
                  SizedBox(height: height*0.01,),
                  FormButton(hint: '7964976409874',obsecure: false),
                  SizedBox(height: height*0.01,),

                  FormButton(hint: 'Keystone',obsecure: false),
                  SizedBox(height: height*0.01,),
                  FormButton(hint: 'Cougar',obsecure: false),
                  SizedBox(height: height*0.01,),

                  FormButton(hint: 'Fifth Wheel',obsecure: false),
                  SizedBox(height: height*0.01,),
                  Drop_Down_Button(hint: 'SalesLot1',categ: ['1','2','3']),
                  SizedBox(height: height*0.01,),

                  Container(
                    height: height*0.15,
                    width: width*1,
                    margin: EdgeInsets.only(left: width*0.1,right: width*0.1),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black,width: 1),
                        borderRadius: BorderRadius.circular(6)
                    ),

                    child: Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: TextField(

                        decoration: InputDecoration(
                          hintText: "This trailer needs roof work.",
                          border: InputBorder.none,
                          hintStyle: mystyle.getPTSansblack(FontWeight.w400, 16),
                        ),
                      ),
                    ),

                  ),
                  SizedBox(height: height*0.025,),


                  Row(
                    children: [
                      SizedBox(width: width*0.1,),
                      InkWell(
                          onTap: (){
                            _show_drop_Dialog(context);
                          },
                          child: MyCustomButton(text: 'UPDATE',color:   Color(0xffA6080D), secondcolor:  Color(0xffEC1C24),width: width*0.385)),
                      SizedBox(width: width*0.025,),
                      MyCustomButton(text: 'CANCEL',color:   Color(0xff8F8F8F), secondcolor:  Color(0xff8F8F8F),width: width*0.385),


                      SizedBox(width: width*0.1,),
                    ],
                  ),
                  SizedBox(height: height*0.025,),





                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: MyBottomNavigationBar(),
    );

  }
  Future<String?> _show_drop_Dialog(BuildContext context) async{
    String ? myval='';
    await   showDialog(
        context: context,
        builder: (ctx) => Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
          ),
          alignment: Alignment.center,
          child: Container(
            height: MediaQuery.of(context).size.height*0.27,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                SizedBox(height: 20,),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Stock#: ",style: mystyle.getPTSansblack(FontWeight.w400, 22)),

                    Text("xxxxxxx",style:mystyle.getPTSansblack(FontWeight.w700, 22)),



                  ],
                ),
                SizedBox(height: 5,),
                Text("Has been updated",style: mystyle.getPTSansblack(FontWeight.w400, 22)),
                SizedBox(height: 25,),
                Center(
                  child: InkWell(
                      onTap: (){
                        myval='yes';
                        Navigator.of(context).pushNamed(QueeFull.routename);
                      },
                      child: MyCustomButton(text: 'OK',color:   Color(0xffA6080D), secondcolor:  Color(0xffEC1C24),width:  MediaQuery.of(context).size.width*0.4)),
                ),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ) ).then((value) {

    });
    return myval;
  }
}
