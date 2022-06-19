import 'package:flutter/material.dart';
import 'package:loturus/Screens/UserPayment.dart';
import 'package:loturus/Screens/textconstants.dart';
import 'package:loturus/widgets/formbutton.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Signup extends StatelessWidget {
  static const routename="Signup";
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack (
        fit: StackFit.values[1],
        children: [
          Image.asset('images/bg.png',fit: BoxFit.fill),
          SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height*1.3,
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                  Container(
                      height: 65,
                      width: width*1,
                      child: Image.asset('images/LotGurus 1.png',)),
                  SizedBox(height: MediaQuery.of(context).size.height*0.002,),
                  Text("Sign Up",style: mystyle.getPTSansRed(FontWeight.w400, 31),),
                  SizedBox(height: MediaQuery.of(context).size.height*0.025,),

                  FormButton(hint: 'First name',obsecure: false),
                  SizedBox(height: height*0.006,),
                  FormButton(hint: 'Last name',obsecure: false),
                   SizedBox(height: height*0.006,),

                  FormButton(hint: 'Street Address',obsecure: false),
                   SizedBox(height: height*0.006,),
                  FormButton(hint: 'Apartment#, suite#, etc.',obsecure: false),
                   SizedBox(height: height*0.006,),

                  FormButton(hint: 'City',obsecure: false),
                   SizedBox(height: height*0.006,),
                  Drop_Down_Button(hint: 'State',categ: ['1','2','3']),
                   SizedBox(height: height*0.006,),

                  Drop_Down_Button(hint: 'Zip',categ: ['11','22','33']),
                   SizedBox(height: height*0.006,),
                  FormButton(hint: 'Email',obsecure: false),
                   SizedBox(height: height*0.006,),
                  FormButton(hint: 'Phone/Cell',obsecure: false),
                  SizedBox(height: height*0.025,),


                  Row(
                    children: [
                      SizedBox(width: width*0.1,),
                      InkWell(
                          onTap: (){
                            Navigator.of(context).pushNamed(UserPlanPayment.routename);
                          },
                          child: MyCustomButton(text: 'NEXT',color:   Color(0xffA6080D), secondcolor:  Color(0xffEC1C24),width: width*0.385)),


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

    );

  }

}
