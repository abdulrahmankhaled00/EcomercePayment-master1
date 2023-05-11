import 'package:ecomerce/API/ApiManger.dart';
import 'package:ecomerce/API/repositroy/auth/imp/auth_remot_datasource_imp.dart';
import 'package:ecomerce/API/repositroy/auth/imp/auth_repo_impl.dart';

import 'API/repositroy/auth/auth_repo_contract.dart';

Authrepository getAuthrepository(AuthRemotDataSource dataSource){
  return Authrepositoryimpl(dataSource);
}
AuthRemotDataSource getAuthRemotDataSource(ApiManger apimanger){
  return AuthRemotDataSourceimpl(apimanger);
}

ApiManger getApimanger(){
  return ApiManger.getapiinstans();
}

Authrepository authtijection(){
  return getAuthrepository(getAuthRemotDataSource(getApimanger()));
}