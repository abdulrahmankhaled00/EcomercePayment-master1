import '../responce/Errors.dart';

class Signrequst {
  String? email;
  String? password;
  List<Errors>? errors;

  Signrequst({
      this.email,
      this.password});

  Signrequst.fromJson(dynamic json) {
    email = json['email'];
    password = json['password'];
    password = json['password'];
    if (json['errors'] != null) {
      errors = [];
      json['errors'].forEach((v) {
        errors?.add(Errors.fromJson(v));
      });
    }
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['email'] = email;
    map['password'] = password;
    if (errors != null) {
      map['errors'] = errors?.map((v) => v.toJson()).toList();
    }
    return map;
  }
  String messageerorre(){
    String message ='';
    errors?.forEach((element) {
      message+='${element.msg!}"\n"';
    });
    return message;
  }


}