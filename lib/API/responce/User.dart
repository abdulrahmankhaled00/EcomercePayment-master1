/// name : "Amr khaled"
/// email : "amr@rout.com"
/// phone : "01557043883"
/// password : "$2a$12$nK5sdWNxhAtbIFjJpBgiiO21zcmTqNeIgYGorijBApajm0sj.ADSK"
/// role : "user"
/// _id : "6400c98e3465a82107e38117"
/// createdAt : "2023-03-02T16:06:38.802Z"
/// updatedAt : "2023-03-02T16:06:38.802Z"
/// __v : 0

class User {
  User({
      this.name, 
      this.email, 
      this.phone, 
      this.password, 
      this.id,
      });

  User.fromJson(dynamic json) {
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    password = json['password'];
    id = json['_id'];
  }
  String? name;
  String? email;
  String? phone;
  String? password;
  String? id;


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['email'] = email;
    map['phone'] = phone;
    map['password'] = password;
    map['_id'] = id;

    return map;
  }

}