import 'Errors.dart';
import 'User.dart';

/// data : {"name":"Amr khaled","email":"amr@rout.com","phone":"01557043883","password":"$2a$12$nK5sdWNxhAtbIFjJpBgiiO21zcmTqNeIgYGorijBApajm0sj.ADSK","role":"user","_id":"6400c98e3465a82107e38117","createdAt":"2023-03-02T16:06:38.802Z","updatedAt":"2023-03-02T16:06:38.802Z","__v":0}
/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY0MDBjOThlMzQ2NWE4MjEwN2UzODExNyIsImlhdCI6MTY3Nzc3MzE5OSwiZXhwIjoxNjg1NTQ5MTk5fQ.xhXfndeCYOHDahQZWFFP7rJSyeZIy9j9dIpgDZldAnQ"

class RegsterResponser {
  User? data;
  String? token;
  String? status;
  String? message;
  List<Errors>? errors;


  RegsterResponser({
      this.data,
      this.token,this.status,this.message});

  RegsterResponser.fromJson(dynamic json) {
    data = json['data'] != null ? User.fromJson(json['data']) : null;
    token = json['token'];
    status = json['status'];
    message = json['message'];
    if (json['errors'] != null) {
      errors = [];
      json['errors'].forEach((v) {
        errors?.add(Errors.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (data != null) {
      map['data'] = data?.toJson();
    }
    if (errors != null) {
      map['errors'] = errors?.map((v) => v.toJson()).toList();
    }
    map['token'] = token;
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