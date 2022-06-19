import 'package:flutter/material.dart';
import 'package:loturus/Screens/textconstants.dart';
class FormButton extends StatelessWidget {

  final String ? hint;
  final bool? obsecure;
    FormButton({required this.hint,required this.obsecure});


  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;

    return Container(
      height: height*0.065,
      width: width*1,
      margin: EdgeInsets.only(left: width*0.1,right: width*0.1),
      decoration: BoxDecoration(
        color: Colors.white,
          border: Border.all(color: Colors.black,width: 1),
        borderRadius: BorderRadius.circular(6)
      ),

      child: Padding(
        padding: const EdgeInsets.only(left:8.0),
        child: TextField(
          obscureText: obsecure!,
          decoration: InputDecoration(
            hintText: hint,
            border: InputBorder.none,
            hintStyle: mystyle.getPTSansblack(FontWeight.w400, 16),
          ),
        ),
      ),

    );
  }
}

class MyCustomButton extends StatelessWidget {

  final String ? text;
  final Color ? color;
  final Color ? secondcolor;
  final double ? width;

  MyCustomButton ( { this.text,this.color,this.secondcolor,this.width } );

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;


    return Container(
      height: height*0.072,
      width: width,

      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color!,
            secondcolor!

          ],
          end: Alignment.topRight,
          begin: Alignment.topLeft,

        ),
          borderRadius: BorderRadius.circular(6)
      ),

child: Center(child: Text(text!,style: mystyle.getPTSanswhiteItalic(FontWeight.w700, 20))),
    );
  }
}

class Drop_Down_Button extends StatefulWidget {
String ? selected_categ;
final List<String> ? categ;
final String ?  hint;

Drop_Down_Button({required this.hint,required this.categ});

  @override
  State<Drop_Down_Button> createState() => _Drop_Down_ButtonState();
}

class _Drop_Down_ButtonState extends State<Drop_Down_Button> {
  @override

  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;

    return      Container(
        height: height*0.072,
        width: width*1,
        margin: EdgeInsets.only(left: width*0.1,right: width*0.1),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black,width: 1),
            borderRadius: BorderRadius.circular(6)
        ),
        padding: EdgeInsets.only(left: 10),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            hint: Text(
              widget.hint!,
              style: mystyle.getPTSansblack(FontWeight.w400, 16),
            ),
            value: widget.selected_categ,
            onChanged: (value) {
              setState(() {
                widget.selected_categ = (value as String?)!;
              });
            },
            icon: Icon(Icons.arrow_drop_down,size: 40,color: Colors.black),
            isExpanded: true,
            items:widget.categ!.map(
                    (e) => DropdownMenuItem(value: e, child: Text(e)))
                .toList(),
          ),
        )
    );
  }
}
