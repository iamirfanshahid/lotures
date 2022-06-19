
import 'package:flutter/material.dart';
import 'package:loturus/Admin/Screens/AdminPlanPayment.dart';
import 'package:loturus/Screens/SignupSuccess.dart';
import 'package:loturus/Screens/textconstants.dart';

class AdminPlanPaymentWhite extends StatelessWidget {
  static const routename="AdminPlanPaymentWhite";

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Center(
            child: Container(

              width: width*0.5,
              child: Text("Goes to PAYPAL or CC processing and user makes payment.",style: mystyle.getPTSansblack(FontWeight.w400, 20),textAlign: TextAlign.center),
            ),
          ),

          SizedBox(height: height*0.01,),

          InkWell(
            onTap: (){
              Navigator.of(context).pushNamed(AdminPlayPayment.routename);
            },
            child: Text("CONTINUE",
              style: mystyle.getPTSansblack(FontWeight.w700, 31),),
          )


        ],
      ),
    );
  }
}
