import 'package:flutter/material.dart';
import 'package:loturus/Screens/textconstants.dart';
import 'package:loturus/widgets/bottomnavigationbar.dart';
import 'package:loturus/widgets/formbutton.dart';

class AdminProfile extends StatefulWidget {
  static const routename="AdminProfile";
  @override

  State<AdminProfile> createState() => _AdminProfileState();
}

class _AdminProfileState extends State<AdminProfile> {


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
                  height: height * 0.06,
                ),



                Center(
                  child: RichText(
                    text: TextSpan(
                      text: '< ',
                      style: TextStyle(fontSize: 31, color: Color(0xff818181)),
                      children: const <TextSpan>[
                        TextSpan(
                            text: 'Profile',
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
                  height: MediaQuery.of(context).size.height * 0.025,
                ),



                FormButton(hint: 'Bob',obsecure: false),
                SizedBox(height: height*0.005,),
                FormButton(hint: 'Smith',obsecure: false),
                SizedBox(height: height*0.005,),

                FormButton(hint: '123-456-7890',obsecure: false),
                SizedBox(height: height*0.005,),
                FormButton(hint: 'bob.smith@aol.com',obsecure: false),
                SizedBox(height: height*0.005,),


                Drop_Down_Button(hint: 'Location',categ: ['1','2','3']),
                SizedBox(height: height*0.005,),

                Drop_Down_Button(hint: 'Admin',categ: ['1','2','3']),
                SizedBox(height: height*0.025,),



                Center(child: MyCustomButton(text: 'SAVE',color:   Color(0xffA6080D), secondcolor:  Color(0xffEC1C24),width: width*0.385)),
                SizedBox(height: height*0.025,),



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
