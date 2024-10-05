import 'package:auth/model/user_model.dart';
import 'package:auth/service/auth_service.dart';
import 'package:auth/view/myinfo_page.dart';
import 'package:flutter/material.dart';



class LoginPage extends StatelessWidget {
   LoginPage({super.key});
final TextEditingController username = TextEditingController();
final TextEditingController password = TextEditingController();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return 
     Scaffold(
      backgroundColor: Color.fromARGB(255, 169, 204, 235),
        body: Column(
          children: [
            SizedBox(height: 30,),
        Image.asset('assets/images/log.png'),
            Padding(
              padding: const EdgeInsets.only(top:10,right: 10,left:10),
              child: TextField(
                controller: username,
                decoration: InputDecoration(
                  hintText: 'username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10,right: 10,left:10),
              child: TextField(
                controller: password,
                decoration: InputDecoration(
                  hintText: 'password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)))),
            ),
                  ElevatedButton(onPressed: ()async{
                    bool status = await login(UserModel(username: username.text, password: password.text ));
                    if (status) {
                     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Success"),
                  backgroundColor: Colors.green,
                ));
              Navigator.push(context, MaterialPageRoute(builder:(context) => MyinfoPage(),));
                    }
                    else{
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("failed"),
                  backgroundColor: Colors.red,
                ));
                    }
                  }
                  , child: Text('log in'))
          ],
        ),
      )
    ;}}