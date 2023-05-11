import 'package:ecomerce/Basedata.dart';
import 'package:ecomerce/di.dart';
import 'package:ecomerce/loginscreen/loginscreen_viewmodel.dart';
import 'package:ecomerce/registerscreen/registerscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../utilswidegets/ElivatedbuttomWideget.dart';
import '../utilswidegets/Formwidget.dart';
import '../utilswidegets/labelwidget.dart';

class loginscreen extends StatefulWidget {
  static String RoutName='login';

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends BaseStat<loginscreen,loginscreen_viewmodel>implements loginscreen_navigator {
  TextEditingController passwordconrlar = TextEditingController();
  TextEditingController emaileconrlar = TextEditingController();
  bool passwordshow = false;
  var formkey = GlobalKey<FormState>();

  @override
  loginscreen_viewmodel intitvieNaigat() {
    // TODO: implement intitvieNaigat
    return loginscreen_viewmodel(authtijection());
  }
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => viewmodel,
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('assets/images/rout5.png'),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Form(
                    key: formkey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text('Welcome Back To Route',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize:24),),
                        SizedBox(height: 10,),
                        Utiles_Labelwidget(label: 'E-mail Adress'),
                        Utiles_FormWidget(
                          controller: emaileconrlar,
                          'enter your E-mail Adress',
                          validator: (value) {
                            final bool emailValid = RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(value ?? '');
                            if (value == null || value.trim().isEmpty) {
                              return 'inter value';
                            }
                            if (!emailValid) {
                              return 'plz enter valid email';
                            }
                            return null;
                          },
                        ),
                        Utiles_Labelwidget(label: 'Password'),
                        Utiles_FormWidget(
                          controller: passwordconrlar,
                          'enter your Password',
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'enter value';
                            }
                            if (value.length < 6) {
                              return 'password unvalid';
                            }
                            return null;
                          },

                        ),
                        Align(alignment: Alignment.topRight,
                          child: TextButton(child: Text('forget password?',style: TextStyle(color: Colors.white)),onPressed: (){
                          },),
                        ),
                        SizedBox(
                          height: 27,
                        ),
                        Center(
                            child: Utiles_Elvatb(
                              onpressd: Onpressd,
                              text: 'login',
                            )),
                        Center(
                            child: TextButton(child: Text('Creat new acount!',style: TextStyle(color: Colors.white)),onPressed: (){
                              Navigator.pushReplacementNamed(context,Registerscreen.RoutName );
                            },)
                            ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  void Onpressd() {
    if (formkey.currentState!.validate()) {
      viewmodel.signup(emaileconrlar.text, passwordconrlar.text);
    }
  }


}