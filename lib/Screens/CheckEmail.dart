import 'package:flutter/material.dart';
import 'package:loturus/Screens/NewPassword.dart';
import 'package:loturus/Screens/textconstants.dart';
import 'package:loturus/widgets/formbutton.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CheckEmail extends StatelessWidget {
  static const routename="CheckEmail";
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
                Text("Check Email",style: mystyle.getPTSansRed(FontWeight.w400, 31),),
                SizedBox(height: MediaQuery.of(context).size.height*0.025,),
                Container(
                    margin: EdgeInsets.only(left: width*0.15,right: width*0.15),

                    child: Align(
                        alignment: Alignment.center,
                        child: Text("We have sent an email to you with instructions on how to update your password.",style: mystyle.getPTSansblack(FontWeight.w400, 18),textAlign: TextAlign.center,))),

                SizedBox(height: height*0.025,),
                InkWell(
                  onTap: (){
                    Navigator.of(context).pushNamed(NewPassword.routename);
                  },
                  child: Container(
                      margin: EdgeInsets.only(left: width*0.1,right: width*0.1),
                      child: MyCustomButton(text: 'BACK TO LOGIN',color:   Color(0xffA6080D), secondcolor:  Color(0xffEC1C24),width: width*0.5)),
                ),
                SizedBox(height: height*0.09,),





              ],
            ),
          ),
        ],
      ),
    );

  }

}
