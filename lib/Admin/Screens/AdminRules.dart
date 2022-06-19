import 'package:flutter/material.dart';
import 'package:loturus/Screens/textconstants.dart';
import 'package:loturus/widgets/bottomnavigationbar.dart';
import 'package:loturus/widgets/formbutton.dart';

class AdminRules extends StatefulWidget {
  static const routename="AdminRules";
  @override

  State<AdminRules> createState() => _AdminRulesState();
}

class _AdminRulesState extends State<AdminRules> {
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
                  height: MediaQuery.of(context).size.height * 0.05,
                ),



                Center(
                  child: RichText(
                    text: TextSpan(
                      text: '< ',
                      style: TextStyle(fontSize: 31, color: Color(0xff818181)),
                      children: const <TextSpan>[
                        TextSpan(
                            text: 'Roles ',
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
                  height: MediaQuery.of(context).size.height * 0.05,
                ),


                buildUser("Admin",false),
                buildUser("Salesman",false),
                buildUser("Technician",false),
                buildUser("Porter",false),


                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),

               Container(
                 margin: EdgeInsets.only(left: width * 0.1, right: width * 0.1),
                 child: Row(
                   children: [

                     Icon(Icons.add,size: 35,color: Color(0xff9A0509),),
                     Text("Add new Role",style: mystyle.getPTSansblack(FontWeight.w700, 18),)


                   ],
                 ),
               ),



              ],
            ),
          )
        ],
      ),
    bottomNavigationBar: MyBottomNavigationBar(),
    );
  }

  Widget buildUser(String? title,bool disabled) {
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
            child: Image.asset('images/flag.png',color: disabled?Color(0xff999999):Color(0xff9A0509),),
          ),
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
