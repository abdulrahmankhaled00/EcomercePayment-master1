import 'package:ecomerce/API/responce/Regster_responser.dart';

import 'package:ecomerce/API/responce/Sigenresponse.dart';

import '../../../ApiManger.dart';
import '../auth_repo_contract.dart';

class AuthRemotDataSourceimpl implements AuthRemotDataSource{
  ApiManger apiManger;
AuthRemotDataSourceimpl(this.apiManger);
  Future<Sigenresponse> login(String email, String password) async{
    var signresponse = await apiManger.getuseresponsesing(email,password);
    return signresponse;
  }

  @override
  Future<RegsterResponser> rgister(String name, String email, String phon, String password, String repassword)async {
    var rigesterrespon = await apiManger.getuseresponserigester(name,
        email, phon, password, repassword);
    return rigesterrespon;
  }

}