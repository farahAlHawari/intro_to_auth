import 'package:auth/model/userInfo_model.dart';
import 'package:auth/model/user_model.dart';
import 'package:dio/dio.dart';

String token = "";
Future<bool> login(UserModel user) async {
  try {
    Dio dio = Dio();
    Response response =
        await dio.post('https://dummyjson.com/auth/login', data: user.toMap());
    if (response.statusCode == 200) {
      token = response.data["accessToken"];
      return true;
    } else {
      return false;
    }
  } catch (e) {
    return false;
  }
}

Future<UserInfoModel> getMyInfo() async {
  
  Dio dio = Dio();
  Response response = await dio.get("https://dummyjson.com/auth/me",
  
      options: Options(headers: {"Authorization": "Bearer $token"}));
       UserInfoModel user = UserInfoModel.fromMap(response.data);
  return user;
    
}
