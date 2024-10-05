class UserModel {
  String username;
  String password;

UserModel({
  required this.username,
  required this.password,
});

toMap(){
  return{
    "password":password,
    "username":username,
  };
}

}