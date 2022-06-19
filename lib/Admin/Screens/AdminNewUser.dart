import 'package:flutter/material.dart';
import 'package:loturus/Admin/Screens/AdminUsers.dart';
import 'package:loturus/Screens/textconstants.dart';
import 'package:loturus/widgets/bottomnavigationbar.dart';
import 'package:loturus/widgets/formbutton.dart';

class AdminNewUser extends StatefulWidget {
  static const routename="AdminNewUser";
  @override

  State<AdminNewUser> createState() => _AdminNewUserState();
}

class _AdminNewUserState extends State<AdminNewUser> {
List<Map<String,dynamic>> data=[
  {
    'title':'Perform Drops',
    'check':false
  },

  {
    'title':'Add/Edit/Delete Inventory',
    'check':false
  },  {
    'title':'Request One Ways',
    'check':false
  },  {
    'title':'Request Swaps',
    'check':false
  },  {
    'title':'Perform Drops',
    'check':false
  },  {
    'title':'Admin Access',
    'check':false
  }
];


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
                            text: 'New Users',
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



                Row(
                  children: [

                    Container(
                      height: height*0.075,
                      width: width*0.385,
                      margin: EdgeInsets.only(left: width*0.1),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black,width: 1),
                          borderRadius: BorderRadius.circular(6)
                      ),

                      child: Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: TextField(
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: "Firs Name",
                            border: InputBorder.none,
                            hintStyle: mystyle.getPTSansblack(FontWeight.w400, 16),
                          ),
                        ),
                      ),

                    ),
                    Container(
                      height: height*0.075,
                      width: width*0.385,
                      margin: EdgeInsets.only(left: width*0.025),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black,width: 1),
                          borderRadius: BorderRadius.circular(6)
                      ),

                      child: Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: TextField(
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: "Last Name",
                            border: InputBorder.none,
                            hintStyle: mystyle.getPTSansblack(FontWeight.w400, 16),
                          ),
                        ),
                      ),

                    ),
                  ],
                ),

                SizedBox(height: height*0.01,),

                FormButton(hint: 'Phone',obsecure: false),
                SizedBox(height: height*0.01,),
                FormButton(hint: 'Email',obsecure: false),
                SizedBox(height: height*0.01,),


                Drop_Down_Button(hint: 'Role',categ: ['1','2','3']),
                SizedBox(height: height*0.01,),

                Drop_Down_Button(hint: 'Location',categ: ['1','2','3']),
                SizedBox(height: height*0.025,),

                Column(
             children:  List.generate(data.length, (index) => Container(
               margin: EdgeInsets.only(left: width*0.2),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Checkbox(
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                       value: data[index]['check'], onChanged: (val){

                     data[index]['check']=val;
                   }),

                   Text(data[index]['title'].toString(),style: mystyle.getPTSansblack(FontWeight.w400, 18 )),

                 ],
               ),
             ))
           ),

                SizedBox(height: height*0.025,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyCustomButton(text: 'SAVE',color:   Color(0xffA6080D), secondcolor:  Color(0xffEC1C24),width: width*0.385),
                   SizedBox(width: width*0.05,),
                    InkWell(
                        onTap: (){
                          Navigator.of(context).pushNamed(AdminUsers.routename);
                        },
                        child: MyCustomButton(text: 'DELETE',color:   Color(0xff8F8F8F), secondcolor:  Color(0xffE8F8F8F),width: width*0.3)),

                  ],
                ),
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
