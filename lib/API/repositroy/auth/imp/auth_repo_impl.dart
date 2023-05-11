import '../auth_repo_contract.dart';

class Authrepositoryimpl implements Authrepository{
  AuthRemotDataSource authRemotDataSource;
  Authrepositoryimpl(this.authRemotDataSource);
  @override
  Future<String?> login(String email, String password) async{
   var logintoken= await authRemotDataSource.login(email, password);
          return logintoken.token;
  }

  @override
  Future<String?> rgister(String name, String email, String phone, String password, String repassword)async {
    var registertoken= await authRemotDataSource.rgister(name, email, phone, password, repassword);
    return registertoken.token;
  }
}