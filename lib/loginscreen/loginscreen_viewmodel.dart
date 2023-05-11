import 'package:ecomerce/Basedata.dart';
import '../API/ApiManger.dart';
import '../API/repositroy/auth/auth_repo_contract.dart';
import '../API/repositroy/auth/imp/auth_remot_datasource_imp.dart';
import '../API/repositroy/auth/imp/auth_repo_impl.dart';

abstract class loginscreen_navigator extends BaseNavigator{
}

class loginscreen_viewmodel extends BaseViewModel<loginscreen_navigator>{
  late Authrepository reprostiry;
  loginscreen_viewmodel(this.reprostiry);
  void signup(String emil, String password)async{


    try{
      navigator?.showloading();
      var signrespon = await reprostiry.login(emil,password);
      if(signrespon!=null){
        navigator?.hideloading();
        navigator?.showmessage(
          'token true',navigator!.gohomescreen
        );
        print('errrrros');

      }else{
        navigator?.hideloading();
        navigator?.showmessage('token not found',navigator!.popback);

        print('token');

      }
    }catch (e){
      print("catchhhhhh$e");
    }
  }
  }


