import 'package:ecomerce/API/ApiManger.dart';
import 'package:ecomerce/API/repositroy/auth/auth_repo_contract.dart';
import 'package:ecomerce/API/repositroy/auth/imp/auth_repo_impl.dart';
import 'package:ecomerce/Basedata.dart';

import '../API/repositroy/auth/imp/auth_remot_datasource_imp.dart';

abstract class registerscreen_nagigator extends BaseNavigator {
}

class registerscerrn_viewmogel extends BaseViewModel<registerscreen_nagigator> {

 late Authrepository reprostiry;
  registerscerrn_viewmogel(this.reprostiry);

  void signup(nameconrlar, emaileconrlar, Phonecontrolar, passwordconrlar,
      repasswordconrlar) async {

    try{
      navigator?.showloading();
      var rigesterrespon = await reprostiry.rgister(nameconrlar,
          emaileconrlar,Phonecontrolar, passwordconrlar, repasswordconrlar);
      if(rigesterrespon!=null){
        navigator?.hideloading();
        navigator?.showmessage('token not found',navigator!.gohomescreen);
        print('errrrros');

      }else{
        navigator?.hideloading();
        navigator?.showmessage('token not found',navigator!.popback
        );
        print('token');

      }
    }catch (e){
      print("catchhhhhh$e");
    }
  }
}
