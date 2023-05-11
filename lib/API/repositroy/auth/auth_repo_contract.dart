
import 'package:ecomerce/API/responce/Sigenresponse.dart';
import '../../responce/Regster_responser.dart';

abstract class Authrepository{
  Future<String?>login(String email,String password);
  Future<String?>rgister(String name,String email,String phon,String password,String repassword);
}

abstract class AuthRemotDataSource{
  Future<Sigenresponse>login(String email,String password);
  Future<RegsterResponser>rgister(String name,String email,String phon,String password,String repassword);
}