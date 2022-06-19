import 'package:flutter/material.dart';
import 'package:loturus/Screens/login.dart';
import 'package:loturus/Screens/textconstants.dart';
import 'package:loturus/widgets/formbutton.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewPassword extends StatelessWidget {
  static const routename="NewPassword";
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
                  SizedBox(height: MediaQuery.of(context).size.height*0.15,),
                  Container(
                      height: height*0.15,
                      width: width*1,
                      child: Image.asset('images/LotGurus 1.png',)),
                  SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                  Text("Create New Password",style: mystyle.getPTSansRed(FontWeight.w400, 31),),
                  SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                  Container(
                      margin: EdgeInsets.only(left: width*0.07,right: width*0.05),
                      child: Text("Must be different from previous passwords, contain one capital letter, one number and one symbol (@##\$*_!).",style: mystyle.getPTSansblack(FontWeight.w400, 18),textAlign: TextAlign.center,)),
                  SizedBox(height: height*0.015,),
                  Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: width*0.15),
                      child: Text("New password:",style: mystyle.getPTSansblack(FontWeight.w400, 18),)),
                  SizedBox(height: height*0.0025,),
                  Container(
                      margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                      child: FormButton(hint: 'Enter password',obsecure: true)),
                  SizedBox(height: height*0.025,),
                  Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: width*0.15,right: width*0.05),
                      child: Text("Confirm password:",style: mystyle.getPTSansblack(FontWeight.w400, 18),)),
                  SizedBox(height: height*0.01,),
                  Container(
                      margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                      child: FormButton(hint: 'Confirm password',obsecure: true)),

                  SizedBox(height: height*0.025,),

                  InkWell(
                    onTap: (){
                      Navigator.of(context).pushNamed(Login.routename);
                    },
                    child: Container(
                        margin: EdgeInsets.only(left: width*0.2,right: width*0.2),
                        child: MyCustomButton(text: 'RESET PASSWORD',color:   Color(0xffA6080D), secondcolor:  Color(0xffEC1C24),width: width*1)
                    ),
                  ),



                ],
              ),
            ),
          ),
        ],
      ),
    );

  }

}
