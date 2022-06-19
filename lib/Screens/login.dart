import 'package:flutter/material.dart';
import 'package:loturus/Screens/SingleDrop.dart';
import 'package:loturus/Screens/resetpassword.dart';
import 'package:loturus/Screens/signup.dart';
import 'package:loturus/Screens/textconstants.dart';
import 'package:loturus/widgets/formbutton.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatelessWidget {
static const routename="Login";
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
                 SizedBox(height: MediaQuery.of(context).size.height*0.15,),
                 Container(
                     height: height*0.15,
                     width: width*1,
                     child: Image.asset('images/LotGurus 1.png',)),
                 SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                 Text("Welcome!",style: mystyle.getPTSansRed(FontWeight.w400, 31),),
                 SizedBox(height: MediaQuery.of(context).size.height*0.016,),
                 Text("Login or sign up below.",style: mystyle.getPTSansblack(FontWeight.w400, 18),),
                 SizedBox(height: height*0.025,),
                 FormButton(hint: 'Email',obsecure: false),
                 SizedBox(height: height*0.025,),
                 FormButton(hint: 'Password',obsecure: true),
                 SizedBox(height: height*0.025,),
                 Row(
                   children: [
                     SizedBox(width: width*0.1,),
                     InkWell(
                         onTap: (){
                           Navigator.of(context).pushNamed(SingleDrop.routename);
                         },
                         child: MyCustomButton(text: 'LOG IN',color:   Color(0xffA6080D), secondcolor:  Color(0xffEC1C24),width: width*0.385)),

                     SizedBox(width: width*0.025,),
                     InkWell(
                         onTap: (){
                           Navigator.of(context).pushNamed(Signup.routename);
                         },
                         child: MyCustomButton(text: 'SIGN UP',color:   Color(0xff8F8F8F), secondcolor:  Color(0xff8F8F8F),width: width*0.385)),

                     SizedBox(width: width*0.1,),
                   ],
                 ),
                 SizedBox(height: height*0.025,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text("Forgot your password? ",  style:  mystyle.getPTSansblack(FontWeight.w400, 18),)
                  ,InkWell(

                         onTap: (){
                           Navigator.of(context).pushNamed(ResetPassword.routename);
                         },
                         child: Text("Reset",  style: mystyle.getPTSansRed(FontWeight.w400, 18),))
                   ],
                 )






               ],
             ),
           ),
         ],
       ),
    );

  }

}
