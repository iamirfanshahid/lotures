import 'package:flutter/material.dart';
import 'package:loturus/Screens/CheckEmail.dart';
import 'package:loturus/Screens/login.dart';
import 'package:loturus/Screens/textconstants.dart';
import 'package:loturus/widgets/formbutton.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ResetPassword extends StatelessWidget {
  static const routename="ResetPassword";
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
            height: MediaQuery.of(context).size.height*1,
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*0.144,),
                Container(
                    height: height*0.15,
                    width: width*1,
                    child: Image.asset('images/LotGurus 1.png',)),
                SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                Text("Reset Password",style: mystyle.getPTSansRed(FontWeight.w400, 31),),
                SizedBox(height: MediaQuery.of(context).size.height*0.025,),
                Container(
                    margin: EdgeInsets.only(left: width*0.1,right: width*0.1),
                    child: Text("Submit the email associated with your account below and we’ll send an email with instructions to reset you password.",style: mystyle.getPTSansblack(FontWeight.w400, 18),textAlign: TextAlign.start)),
                SizedBox(height: height*0.025,),
                Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: width*0.1),
                    child: Text("Email address:",style: mystyle.getPTSansblack(FontWeight.w400, 18),)),
                SizedBox(height: height*0.01,),
                FormButton(hint: 'jane@example.com',obsecure: false),

                SizedBox(height: height*0.025,),
                InkWell(
                  onTap: (){
                    Navigator.of(context).pushNamed(CheckEmail.routename);
                  },
                  child: Container(
                      margin: EdgeInsets.only(left: width*0.16,right: width*0.16),
                      child: MyCustomButton(text: 'SEND INSTRUCTIONS',color:   Color(0xffA6080D), secondcolor:  Color(0xffEC1C24),width: width*1)),
                ),
                SizedBox(height: height*0.025,),

                InkWell(
                  onTap: (){
                    Navigator.of(context).pushNamed(Login.routename);
                  },
                  child: Text.rich(TextSpan(
                      text: 'Go back to the ',
                      style:  mystyle.getPTSansblack(FontWeight.w400, 18),
                      children: [

                        TextSpan(
                          text: 'Login',
                          style: mystyle.getPTSansRed(FontWeight.w400, 18),
                        )
                      ]
                  )),
                )





              ],
            ),
          ),
        ],
      ),
    );

  }

}
