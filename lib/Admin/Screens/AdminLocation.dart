import 'package:flutter/material.dart';
import 'package:loturus/Screens/textconstants.dart';
import 'package:loturus/widgets/bottomnavigationbar.dart';
import 'package:loturus/widgets/formbutton.dart';

class AdminLocation extends StatefulWidget {
  static const routename="AdminLocation";
  @override

  State<AdminLocation> createState() => _AdminLocationState();
}

class _AdminLocationState extends State<AdminLocation> {
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
                            text: 'Locations',
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


                buildLocation("SalesLot1"),
                buildLocation("SalesLot1",),
                buildLocation(" Staging",),
                buildLocation("ServiceBay1",),
                buildLocation("ServiceBay2",),
                buildLocation("StorageLot",),
                buildLocation(" AcrossTheStreet",),


                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),

                Container(
                  margin: EdgeInsets.only(left: width * 0.1, right: width * 0.1),
                  child: Row(
                    children: [

                      Icon(Icons.add,size: 35,color: Color(0xff9A0509),),
                      Text("Add new location",style: mystyle.getPTSansblack(FontWeight.w700, 18),)


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
