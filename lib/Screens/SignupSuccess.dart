import 'package:flutter/material.dart';
import 'package:loturus/Admin/Screens/AdmainMain.dart';
import 'package:loturus/Screens/SingleDrop.dart';
import 'package:loturus/Screens/textconstants.dart';
import 'package:loturus/widgets/formbutton.dart';


class SignupSuccess extends StatelessWidget {
  static const routename="SignupSuccess";
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
              height: MediaQuery.of(context).size.height*1,
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height*0.18,),
                  Center(
                    child: Container(
                        height: height*0.11,
                        child: Image.asset('images/LotGurus 1.png',)),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.02,),

                  Text("Account Success",style: mystyle.getPTSansRed(FontWeight.w400, 31),),
                  SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                  Container(
                      margin: EdgeInsets.only(left: width*0.1,right: width*0.1),
                      child: Text("Your account is ready for use!",style: mystyle.getPTSansblack(FontWeight.w400, 18),)),

                  SizedBox(height: height*0.025,),
                  Container(
                      margin: EdgeInsets.only(left: width*0.1,right: width*0.1),
                      child: InkWell(
                          onTap: (){
                            Navigator.of(context).pushNamed(SingleDrop.routename);
                          },
                          child: MyCustomButton(text: 'GO TO SEARCH',color:   Color(0xffA6080D), secondcolor:  Color(0xffEC1C24),width: width*0.5))),
                  SizedBox(height: height*0.015,),
                  Container(
                    alignment: Alignment.center,
                      margin: EdgeInsets.only(left: width*0.1,right: width*0.1),
                      child: Text("Begin using the app with default settings. None of your information will be shown yet.",style: mystyle.getPTSansblack(FontWeight.w400, 18),textAlign: TextAlign.center,)),


                  SizedBox(height: height*0.025,),
                  InkWell(
                      onTap: (){
                        Navigator.of(context).pushNamed(AdminMain.routename);
                      },
                      child: MyCustomButton(text: 'GO TO The Admin',color:   Color(0xff8F8F8F), secondcolor:  Color(0xff8F8F8F),width: width*0.5)),

                  SizedBox(height: height*0.025,),
                  Container(
                      margin: EdgeInsets.only(left: width*0.1,right: width*0.1),
                      child: Text("Set up Users and Locations to get started organizing your lots.",style: mystyle.getPTSansblack(FontWeight.w400, 18),textAlign: TextAlign.center,)),





                ],
              ),
            ),
          ),
        ],
      ),
    );

  }

}
