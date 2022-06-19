import 'package:flutter/material.dart';
import 'package:loturus/Admin/Screens/AdmainMain.dart';
import 'package:loturus/Admin/Screens/AdminAccount.dart';
import 'package:loturus/Admin/Screens/AdminEditUSer.dart';
import 'package:loturus/Admin/Screens/AdminLocation.dart';
import 'package:loturus/Admin/Screens/AdminNewUser.dart';
import 'package:loturus/Admin/Screens/AdminPlanPayment.dart';
import 'package:loturus/Admin/Screens/AdminProfile.dart';
import 'package:loturus/Admin/Screens/AdminRules.dart';
import 'package:loturus/Admin/Screens/AdminUsers.dart';
import 'package:loturus/Admin/Screens/adminplanpayment_white.dart';
import 'package:loturus/Inventory/editInventory.dart';
import 'package:loturus/OverlayProfileMenu/overlayProfileMenu.dart';
import 'package:loturus/Screens/CheckEmail.dart';
import 'package:loturus/Screens/NewPassword.dart';
import 'package:loturus/Screens/Quee_full.dart';
import 'package:loturus/Screens/RequestSwapMap.dart';
import 'package:loturus/Screens/SearchResult.dart';
import 'package:loturus/Screens/SignupSuccess.dart';
import 'package:loturus/Screens/SingleDrop.dart';
import 'package:loturus/Screens/SingleDropInfo.dart';
import 'package:loturus/Inventory/addInventory.dart';
import 'package:loturus/Screens/SingleDropMap.dart';
import 'package:loturus/Screens/UserPayment.dart';
import 'package:loturus/Screens/login.dart';
import 'package:loturus/Screens/payment.dart';
import 'package:loturus/Screens/resetpassword.dart';
import 'package:loturus/Screens/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OverleyProfileMenu(),
      routes: {
        'AdminEditUser':(context)=>AdminEditUser(),
        'SingleDropMap':(context)=>SingleDropMap(),
        'AdminMain':(context)=>AdminMain(),
        'Pyament':(context)=>Pyament(),
        'Login': (context) => Login(),
        'SingleDrop': (context) => SingleDrop(),
        'AdminNewUser': (context) => AdminNewUser(),
        'AdminLocation': (context) => AdminLocation(),
        'AdminPlayPayment': (context) => AdminPlayPayment(),
        'AdminProfile': (context) => AdminProfile(),
        'AdminRules': (context) => AdminRules(),
        'AdminUsers': (context) => AdminUsers(),
        'AddInventory': (context) => AddInventory(),
        'EditInventory': (context) => EditInventory(),
        'OverleyProfileMenu': (context) => OverleyProfileMenu(),
        'CheckEmail': (context) => CheckEmail(),
        'NewPassword': (context) => NewPassword(),
        'QueeFull': (context) => QueeFull(),
        'RequestSwapMap': (context) => RequestSwapMap(),
        'ResetPassword': (context) => ResetPassword(),
        'SearchResult': (context) => SearchResult(),
        'Signup': (context) => Signup(),
        'SignupSuccess': (context) => SignupSuccess(),
        'SingleDropInfo': (context) => SingleDropInfo(),
        'AdminAccount': (context) => AdminAccount(),
        'UserPlanPayment': (context) => UserPlanPayment(),
        'AdminPlanPaymentWhite':(context)=>AdminPlanPaymentWhite()
      },
    );
  }
}
