
import 'package:flutter/material.dart';
import 'package:loturus/Admin/Screens/AdminAccount.dart';
import 'package:loturus/Admin/Screens/AdminLocation.dart';
import 'package:loturus/Admin/Screens/AdminNewUser.dart';
import 'package:loturus/Admin/Screens/AdminPlanPayment.dart';
import 'package:loturus/Admin/Screens/AdminProfile.dart';
import 'package:loturus/Admin/Screens/AdminRules.dart';
import 'package:loturus/Admin/Screens/AdminUsers.dart';
import 'package:loturus/Screens/textconstants.dart';
import 'package:loturus/widgets/bottomnavigationbar.dart';
import 'package:loturus/widgets/buildtile.dart';
import 'package:loturus/widgets/formbutton.dart';

class AdminMain extends StatefulWidget {
  static const routename="AdminMain";
  @override
  State<AdminMain> createState() => _AdminMainState();

}

class _AdminMainState extends State<AdminMain> {
  bool full=false;

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
            width: width*1,
            child: ListView(

              children: [

                SizedBox(height: height*0.01,),


                SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                Container(
                    height: 80,
                    width: width*1,
                    child: Image.asset('images/LotGurus 1.png',)),
                SizedBox(height: MediaQuery.of(context).size.height*0.005,),


                Center(child: Text("Administration",style: mystyle.getPTSansRed(FontWeight.w400, 31),)),

                SizedBox(height: MediaQuery.of(context).size.height*0.01,),

                Center(child: Text("Manage your LotGuru account.",style: mystyle.getPTSansblack(FontWeight.w400, 18),)),

                SizedBox(height: MediaQuery.of(context).size.height*0.025,),
                Column(
                  children: [
                    MyCustomButton(text: 'SERVICES',color:   Color(0xffA6080D), secondcolor:  Color(0xffEC1C24),width: width*0.55),
                    SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                    InkWell(
                        onTap: (){
                          Navigator.of(context).pushNamed(AdminUsers.routename);
                        },
                        child: MyCustomButton(text: 'USERS',color:   Color(0xffA6080D), secondcolor:  Color(0xffEC1C24),width: width*0.55)),


                    SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                    InkWell(
                        onTap: (){
                          Navigator.of(context).pushNamed(AdminRules.routename);
                        },
                        child: MyCustomButton(text: 'ROLES',color:   Color(0xffA6080D), secondcolor:  Color(0xffEC1C24),width: width*0.55)),


                    SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                    InkWell(
                        onTap: (){
                          Navigator.of(context).pushNamed(AdminLocation.routename);
                        },
                        child: MyCustomButton(text: 'LOCATIONS',color:   Color(0xffA6080D), secondcolor:  Color(0xffEC1C24),width: width*0.55)),
                    SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                    InkWell(
                        onTap: (){
                          Navigator.of(context).pushNamed(AdminAccount.routename);
                        },
                        child: MyCustomButton(text: 'PAYMENTS',color:   Color(0xffA6080D), secondcolor:  Color(0xffEC1C24),width: width*0.55)),
                    SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                    InkWell(
                        onTap: (){
                          Navigator.of(context).pushNamed(AdminProfile.routename);
                        },
                        child: MyCustomButton(text: 'PROFILE',color:   Color(0xffA6080D), secondcolor:  Color(0xffEC1C24),width: width*0.55)),


                  ],
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
