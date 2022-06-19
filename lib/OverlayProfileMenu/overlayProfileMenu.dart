import 'package:flutter/material.dart';
import 'package:loturus/Admin/Screens/AdmainMain.dart';
import 'package:loturus/Admin/Screens/AdminProfile.dart';
import 'package:loturus/Screens/Quee_full.dart';
import 'package:loturus/Screens/login.dart';
import 'package:loturus/Screens/textconstants.dart';
import 'package:loturus/widgets/formbutton.dart';

class OverleyProfileMenu extends StatelessWidget {
  static const routename="OverleyProfileMenu";


  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff313131),
      body: Container(
        height: height*1,
       alignment: Alignment.bottomRight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
              onTap: (){

                  Navigator.of(context).pushNamed(AdminMain.routename);

              },
              child: Container(
                width: width*0.25,
                height: height*0.065,
                color: Colors.white,
                child: Center(child: Text("Admin",style: mystyle.getPTSansblack(FontWeight.w700, 19))),
              ),
            ),
            SizedBox(height: height*0.0025,),

            InkWell(

              onTap: () {

                Navigator.of(context).pushNamed(AdminProfile.routename);

              },

              child: Container(

                width: width*0.25,
                height: height*0.065,
                color: Colors.white,

                child: Center(child: Text("Profile",style: mystyle.getPTSansblack(FontWeight.w700, 19))),

              ),
            ),
            SizedBox(height: height*0.0025,),
            InkWell(
              onTap: (){
                _show_logout_Dialog(context);
              },
              child: Container(
                width: width*0.25,
                height: height*0.065,
                color: Colors.white,
                child: Center(child: Text("Logout",style: mystyle.getPTSansblack(FontWeight.w700, 19))),
              ),
            ),
            SizedBox(height: height*0.0025,),
            InkWell(
              onTap: (){
                _show_logout_Dialog(context);
              },
              child: Container(
                width: width*0.25,
                height: height*0.1,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff000000).withOpacity(0.58),
                      Color(0xff000000),
                    ]
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('images/person.png'),
                    Text('PROFILE',style: mystyle.getPTSanswhite(FontWeight.w400, 16),)
                  ],
                ),
              ),
            ),



          ],
        ),
      ),
    );
  }



  Future<String?> _show_logout_Dialog(BuildContext context) async{
    String ? myval='';
    await   showDialog(
        context: context,
        builder: (ctx) => Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
          ),
          alignment: Alignment.center,
          child: Container(
            height: MediaQuery.of(context).size.height*0.35,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                SizedBox(height: 20,),

                Container(
                    margin: EdgeInsets.only(left: 10,right: 10),
                    child: Center(child: Text("Are you sure you would like to log out?: ",style: mystyle.getPTSansblack(FontWeight.w400, 22),textAlign: TextAlign.center,))),

                SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    InkWell(
                        onTap: (){
                         Navigator.of(context).pushNamed(Login.routename);
                        },
                        child: MyCustomButton(text: 'YES',color:   Color(0xffA6080D), secondcolor:  Color(0xffEC1C24),width:  MediaQuery.of(context).size.width*0.3)),

                    SizedBox(width:  MediaQuery.of(context).size.width*0.02,),
                    InkWell(
                        onTap: (){
                          myval="ADD ANOTHER";
                          Navigator.of(context).pop();
                        },
                        child: MyCustomButton(text: 'NO',color:   Color(0xff8F8F8F), secondcolor:  Color(0xff8F8F8F),width:  MediaQuery.of(context).size.width*0.3)),

                  ],
                ),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ) ).then((value) {

    });
    return myval;
  }


}
