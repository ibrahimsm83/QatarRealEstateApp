class LoginModel {
  LoginModel({
    required this.error,
    required this.code,
    required this.data,
    required this.message,
  });
  late final bool error;
  late final int code;
  late final Data data;
  late final String message;
  
  LoginModel.fromJson(Map<String, dynamic> json){
    error = json['error'];
    code = json['code'];
    data = Data.fromJson(json['data']);
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['error'] = error;
    _data['code'] = code;
    _data['data'] = data.toJson();
    _data['message'] = message;
    return _data;
  }
}

class Data {
  Data({
    required this.token,
    required this.user,
  });
  late final String token;
  late final User user;
  
  Data.fromJson(Map<String, dynamic> json){
    token = json['token'];
    user = User.fromJson(json['user']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['token'] = token;
    _data['user'] = user.toJson();
    return _data;
  }
}

class User {
  User({
    required this.id,
    required this.userTypeId,
    required this.userTypeTitle,
    required this.countryCodeId,
    required this.countryCodeCode,
    required this.fullName,
    required this.email,
    required this.number,
    required this.gender,
     this.status,
     this.orderBy,
     this.createdByCompId,
     this.createdByUserId,
     this.updatedByUserId,
     this.deletedByUserId,
    required this.createdAt,
    required this.updatedAt,
     this.deletedAt,
  });
  late final int id;
  late final int userTypeId;
  late final String userTypeTitle;
  late final int countryCodeId;
  late final int countryCodeCode;
  late final String fullName;
  late final String email;
  late final int number;
  late final String gender;
  late final Null status;
  late final Null orderBy;
  late final Null createdByCompId;
  late final Null createdByUserId;
  late final Null updatedByUserId;
  late final Null deletedByUserId;
  late final String createdAt;
  late final String updatedAt;
  late final Null deletedAt;
  
  User.fromJson(Map<String, dynamic> json){
    id = json['id'];
    userTypeId = json['user_type_id'];
    userTypeTitle = json['user_type_title'];
    countryCodeId = json['country_code_id'];
    countryCodeCode = json['country_code_code'];
    fullName = json['full_name'];
    email = json['email'];
    number = json['number'];
    gender = json['gender'];
    status = null;
    orderBy = null;
    createdByCompId = null;
    createdByUserId = null;
    updatedByUserId = null;
    deletedByUserId = null;
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['user_type_id'] = userTypeId;
    _data['user_type_title'] = userTypeTitle;
    _data['country_code_id'] = countryCodeId;
    _data['country_code_code'] = countryCodeCode;
    _data['full_name'] = fullName;
    _data['email'] = email;
    _data['number'] = number;
    _data['gender'] = gender;
    _data['status'] = status;
    _data['order_by'] = orderBy;
    _data['created_by_comp_id'] = createdByCompId;
    _data['created_by_user_id'] = createdByUserId;
    _data['updated_by_user_id'] = updatedByUserId;
    _data['deleted_by_user_id'] = deletedByUserId;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['deleted_at'] = deletedAt;
    return _data;
  }
}