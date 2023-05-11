
import 'dart:convert';

import 'package:ecomerce/API/requst/RigesterReiust.dart';
import 'package:ecomerce/API/responce/Regster_responser.dart';
import 'package:ecomerce/API/requst/Signrequst.dart';
import 'package:ecomerce/API/responce/Sigenresponse.dart';
import 'package:http/http.dart' as http;

class ApiManger{
  ApiManger._();
  static ApiManger? instaans=null;
  static ApiManger getapiinstans(){
    if(instaans==null){
      instaans=  ApiManger._();
    }
    return instaans!;
  }
   Future<RegsterResponser>getuseresponserigester(String name,String email,String phone,String password,String repassword )async{
  var url=Uri.https(apicontenturl.baseurl,apicontenturl.rigster,);
  var rigesterruqst=RigesterRequst(name: name,email: email,repassword:repassword ,password:password ,phone:phone );
   var uri=await http.post(url,body:rigesterruqst.toJson());
   return RegsterResponser.fromJson(jsonDecode(uri.body));
  } Future<Sigenresponse>getuseresponsesing( email,String password)async{
  var url=Uri.https(apicontenturl.baseurl,apicontenturl.login,);
  var sigenin=Signrequst(password:password,email: email );
   var uri=await http.post(url,body:sigenin.toJson());
   return Sigenresponse.fromJson(jsonDecode(uri.body));
  }
}
class apicontenturl{
  static const baseurl='route-ecommerce.vercel.app';
  static const rigster='api/v1/auth/signup';
  static const login='api/v1/auth/signin';


}