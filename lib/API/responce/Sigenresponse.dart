class Sigenresponse {
  String? status;
  String? message;
  String? token;
  Sigenresponse({
      this.status, 
      this.message, 
      this.token,});

  Sigenresponse.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    token = json['token'];
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['message'] = message;
    map['token'] = token;
    return map;
  }

}