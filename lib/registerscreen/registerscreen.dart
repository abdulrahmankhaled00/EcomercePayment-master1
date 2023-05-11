import 'package:ecomerce/Basedata.dart';
import 'package:ecomerce/di.dart';
import 'package:ecomerce/registerscreen/registerscerrn_viewmogel.dart';
import 'package:ecomerce/utilswidegets/ElivatedbuttomWideget.dart';
import 'package:ecomerce/utilswidegets/Formwidget.dart';
import 'package:ecomerce/utilswidegets/labelwidget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../MyHomescreen/MyHomescreen.dart';

class Registerscreen extends StatefulWidget {
  static String RoutName = 'register';

  @override
  State<Registerscreen> createState() => _RegisterscreenState();
}

class _RegisterscreenState
    extends BaseStat<Registerscreen, registerscerrn_viewmogel>
    implements registerscreen_nagigator {
  TextEditingController nameconrlar = TextEditingController();

  TextEditingController emaileconrlar = TextEditingController();

  TextEditingController Phonecontrolar = TextEditingController();

  TextEditingController passwordconrlar = TextEditingController();

  TextEditingController repasswordconrlar = TextEditingController();

  bool passwordshow = false;

  var formkey = GlobalKey<FormState>();

  registerscerrn_viewmogel intitvieNaigat() {
    // TODO: implement intitvieNaigat
    return registerscerrn_viewmogel(authtijection());
  }

  @override
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
                        Utiles_Labelwidget(label: 'Fullname'),
                        Utiles_FormWidget('enter your fullname',
                            controller: nameconrlar, validator: (text) {
                          if (text == null || text.trim().isEmpty) {
                            return 'please enter your fullname';
                          }
                          return null;
                        }),
                        Utiles_Labelwidget(label: 'Mobile Number'),
                        Utiles_FormWidget(
                          controller: Phonecontrolar,
                          'enter your Mobile Number',
                          textInputType: TextInputType.number,
                          validator: (value) {

                              return null;
                          },
                        ),
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
                        Utiles_Labelwidget(label: 're-password'),
                        Utiles_FormWidget(
                          controller: repasswordconrlar,
                          'enter re-password',
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'enter value';
                            }
                            if (repasswordconrlar.text != passwordconrlar.text) {
                              return 'password wrong';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 27,
                        ),
                        Center(
                            child: Utiles_Elvatb(
                          onpressd: Onpressd,
                          text: 'sign up',
                        ))
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
      viewmodel.signup(nameconrlar.text, emaileconrlar.text,
          Phonecontrolar.text, passwordconrlar.text, repasswordconrlar.text);
    }
  }
}
