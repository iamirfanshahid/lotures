import 'package:flutter/material.dart';
import 'package:loturus/Admin/Screens/AdminEditUSer.dart';
import 'package:loturus/Admin/Screens/AdminNewUser.dart';
import 'package:loturus/Screens/textconstants.dart';
import 'package:loturus/widgets/bottomnavigationbar.dart';
import 'package:loturus/widgets/formbutton.dart';

class AdminUsers extends StatefulWidget {
  static const routename="AdminUsers";

  @override
  State<AdminUsers> createState() => _AdminUsersState();
}

class _AdminUsersState extends State<AdminUsers> {
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
                  height: height * 0.075,
                ),



                Center(
                  child: RichText(
                    text: TextSpan(
                      text: '< ',
                      style: TextStyle(fontSize: 31, color: Color(0xff818181)),
                      children: const <TextSpan>[
                        TextSpan(
                            text: 'Users ',
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


                buildUser("Bob Smith",false),
                buildUser("Joe Dumars",false),
                buildUser("Harold Heckubah",false),
                buildUser("Josey Wales",false),
                buildUser("Mike Hunt",false),
                buildUser("Janet Reno",true),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),

                Center(child: InkWell(
                    onTap: (){
                      Navigator.of(context).pushNamed(AdminNewUser.routename);
                    },
                    child: MyCustomButton(text: 'ADD USERS',color:   Color(0xffA6080D), secondcolor:  Color(0xffEC1C24),width: width*0.45))),

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
            child: Image.asset('images/rename.png',color: disabled?Color(0xff999999):Color(0xff9A0509),),
          ),
          Container(
              margin: EdgeInsets.only(left: width * 0.025),
              width: width * 0.5,
              child: Text(
                title!,
                style: mystyle.getPTSansblack(FontWeight.w700, 18),
              )),
          InkWell(
              onTap: (){
                Navigator.of(context).pushNamed(AdminEditUser.routename);
              },
              child: Icon(Icons.edit)),
          Icon(Icons.close)
        ],
      ),
    );
  }


}
