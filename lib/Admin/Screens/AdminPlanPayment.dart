import 'package:flutter/material.dart';
import 'package:loturus/Screens/SingleDrop.dart';
import 'package:loturus/Screens/textconstants.dart';
import 'package:loturus/widgets/bottomnavigationbar.dart';
import 'package:loturus/widgets/formbutton.dart';

class AdminPlayPayment extends StatefulWidget {
  static const routename="AdminPlayPayment";
  @override
  State<AdminPlayPayment> createState() => _AdminPlayPaymentState();
}

class _AdminPlayPaymentState extends State<AdminPlayPayment> {
  bool full = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        fit: StackFit.values[1],
        children: [
          Image.asset('images/bg.png',fit: BoxFit.fill),
          Container(
            width: width * 1,
            child: ListView(
              children: [
                SizedBox(
                  height: height * 0.025,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Container(
                    height: 100,
                    width: width * 1,
                    child: Image.asset(
                      'images/LotGurus 1.png',
                    )),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),


                Center(
                  child: RichText(
                    text: TextSpan(
                      text: '< ',
                      style: TextStyle(
                        fontSize: 31,
                          color: Color(0xff818181)
                      ),

                      children: const <TextSpan>[
                        TextSpan(
                    text: 'Payment Success ',
                      style: TextStyle(
                          color:const  Color(0xff9A0509),
                          fontWeight: FontWeight.w400,
                          fontSize: 31,
                          fontFamily: 'PTSans-Regular'
                      )

                        ),
                      ],
                    ),
                  ),
                ),


                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),
                Center(
                  child: Container(
                      width: width * 0.7,
                      child: Text(
                        "Your payment has been received for June 1, 2022 to July 1, 2022.",
                        style: mystyle.getPTSansblack(FontWeight.w400, 18),
                        textAlign: TextAlign.center,
                      )),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                ),


                Center(
                  child: InkWell(
                    onTap: (){
                      Navigator.of(context).pushNamed(SingleDrop.routename);

                    },
                    child: MyCustomButton(
                        text: 'GO TO SEARCH',
                        color: Color(0xffA6080D),
                        secondcolor: Color(0xffEC1C24),
                        width: width * 0.55),
                  ),
                ),


                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),


                Center(
                  child: Container(
                      width: width * 0.7,
                      child: Text(
                        "Begin using the app with default settings. None of your information will be shown yet.",
                        style: mystyle.getPTSansblack(FontWeight.w400, 18),
                        textAlign: TextAlign.center,
                      )),
                ),


              ],
            ),
          )
        ],
      ),
   bottomNavigationBar: MyBottomNavigationBar(),
    );

  }
}
