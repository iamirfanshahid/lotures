import 'package:flutter/material.dart';
import 'package:loturus/Screens/SearchResult.dart';
import 'package:loturus/Screens/textconstants.dart';
import 'package:loturus/widgets/bottomnavigationbar.dart';
import 'package:loturus/widgets/formbutton.dart';

class SingleDrop extends StatefulWidget {
  static const routename="SingleDrop";
  @override

  State<SingleDrop> createState() => _SingleDropState();
}

class _SingleDropState extends State<SingleDrop> with SingleTickerProviderStateMixin{

  late TabController _controller;

  @override
  void initState() {
    // TODO: implement initState

    super.initState();

    _controller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose

    super.dispose();
    _controller.dispose();
  }

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

bool advanced=false;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        fit: StackFit.values[1],
        children: [
          Image.asset('images/bg.png',fit: BoxFit.fill),
          ListView(

            children: [
_controller.index==0?
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.18,
              ): SizedBox(
    height: MediaQuery.of(context).size.height * 0.068,
    ),


              Center(
                child: RichText(
                  text: TextSpan(
                    text: '',
                    style: TextStyle(fontSize: 31, color: Color(0xff818181)),
                    children: const <TextSpan>[
                      TextSpan(
                          text: 'Search',
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
                height: MediaQuery.of(context).size.height * 0.013,
              ),


              Container(
                height: height*1,

                child: Column(
                  children: [
                    Container(
                      margin:
                      EdgeInsets.only(left: width * 0.1, right: width * 0.1),
                      height: height * 0.08,
                      width: width * 1,
                      decoration: BoxDecoration(
                        color: Color(0xffC4C4C4),
                        border: Border.all(color: Color(0xffCCCCCC), width: 0.7),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child: Container(
                        alignment: Alignment.center,
                        width: width * 1,
                        child: TabBar(
                          padding: EdgeInsets.only(top: 5, bottom: 5),
                          indicator: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          labelColor: Color(0xff000000),
                          unselectedLabelColor: Color(0xff000000),

                          indicatorColor: Color(0xff000000),
                          indicatorSize: TabBarIndicatorSize.label,
                          labelStyle: mystyle.getPTSansblack(FontWeight.w700, 17),
                          isScrollable: true,
                          indicatorWeight: height * 0.004,
                          unselectedLabelStyle:mystyle.getPTSansblack(FontWeight.w400, 17),
                          onTap: (val){
                            print(val.toString());

                            setState(() {

                          });

                          },
                          controller: _controller,
                          tabs: [
                            Tab(
                              child: // Adobe XD layer: 'Emergency (6)' (text)
                              Padding(
                                padding: const EdgeInsets.only(left: 35, right: 35),
                                child: Text(
                                  'Basic',
                                ),
                              ),
                            ),
                            Tab(
                              child: // Adobe XD layer: 'Emergency (6)' (text)
                              Padding(
                                padding: const EdgeInsets.only(left: 35, right: 35),
                                child: Text(
                                  'Advanced',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.025,
                    ),
                    Expanded(
                      child: TabBarView(
                          controller: _controller,
                          children: [
                            Column(
                              children: [
                                Container(
                                    width: width*0.75,

                                    child: Text("Use basic search to find inventory by stock# (Start with first 4 digits)."))
                                ,
                                SizedBox(
                                  height: height * 0.02,
                                ),
                                Container(
                                  height: height*0.075,
                                  width: width*1,
                                  margin: EdgeInsets.only(left: width*0.15,right: width*0.15),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.black,width: 1),
                                      borderRadius: BorderRadius.circular(6)
                                  ),

                                  child: Padding(
                                    padding: const EdgeInsets.only(left:8.0),
                                    child: TextField(
                                      style: mystyle.getPTSansblack(FontWeight.w700, 25),
                                      obscureText: false,
                                      textAlign: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        hintText: "Inventory",
                                        border: InputBorder.none,

                                        hintStyle: mystyle.getPTSansblack(FontWeight.w400, 16),
                                      ),
                                    ),
                                  ),

                                ),

                                SizedBox(
                                  height: height * 0.025,
                                ),



                                InkWell(
                                    onTap: (){

                                      Navigator.of(context).pushNamed(SearchResult.routename);

                                    },
                                    child: MyCustomButton(text: 'Search',color:   Color(0xffA6080D), secondcolor:  Color(0xffEC1C24),width: width*0.45)),




                              ],



                            ),

                            Column(
                              children: [

                                Container(
                                    margin: EdgeInsets.only(left: width*0.1,right: width*0.1),
                                    child: Text("Find inventory by using one of the following options:",style: mystyle.getPTSansblack(FontWeight.w400, 18))),

                                SizedBox(height: height*0.01,),
                                Drop_Down_Button(hint: 'Falcon',categ: ['1','2','3']),
                                SizedBox(height: height*0.01,),

                                Drop_Down_Button(hint: 'Marauder',categ: ['11','22','33']),


                                SizedBox(height: height*0.01,),
                                Drop_Down_Button(hint: 'Vin',categ: ['1','2','3']),
                                SizedBox(height: height*0.01,),

                                Drop_Down_Button(hint: 'Type',categ: ['11','22','33']),
                                SizedBox(height: height*0.01,),
                                Drop_Down_Button(hint: 'Location',categ: ['1','2','3']),
                                SizedBox(height: height*0.025,),



                                InkWell(
                                    onTap: (){

                                      Navigator.of(context).pushNamed(SearchResult.routename);

                                    },
                                    child: MyCustomButton(text: 'Search',color:   Color(0xffA6080D), secondcolor:  Color(0xffEC1C24),width: width*0.385)),







                              ],
                            ),

                          ]),
                    ),
                  ],
                ),
              ),
            ],
          ),
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
