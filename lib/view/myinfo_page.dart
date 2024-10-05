import 'package:auth/service/auth_service.dart';
import 'package:flutter/material.dart';

class MyinfoPage extends StatelessWidget {
  const MyinfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(future: getMyInfo(), 
      builder: (context, snapshot)
      {
        if (snapshot.hasData) {
          return Scaffold(backgroundColor: Color.fromARGB(255, 66, 111, 150),
  body: Column(children: [Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(height: 170,width: 466,decoration: BoxDecoration(color: const Color.fromARGB(255, 174, 206, 232),
    borderRadius: BorderRadius.circular(10),boxShadow: [BoxShadow(color: const Color.fromARGB(255, 12, 30, 76),offset: Offset(10, 10),blurRadius: 20)] ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(height: 145,width: 145,
            decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.contain,image:NetworkImage(snapshot.data!.image)),color: const Color.fromARGB(255, 218, 228, 237)),),
          ),
      
      
      SizedBox(width: 10,),
      
          Padding(
            padding: const EdgeInsets.only(top:20,left: 10),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [Row(children: [Text(snapshot.data!.firstName,style: TextStyle(
              fontSize: 20,fontWeight: FontWeight.w800,color: const Color.fromARGB(255, 17, 38, 55)
            ),),
            SizedBox(width: 5,),
            Text(snapshot.data!.maidenName,style: TextStyle(
              fontSize: 20,fontWeight: FontWeight.w800,color: const Color.fromARGB(255, 17, 38, 55)
            ),),
            SizedBox(width: 5,),
            Text(snapshot.data!.lastName,style: TextStyle(
              fontSize: 20,fontWeight: FontWeight.w800,color: const Color.fromARGB(255, 17, 38, 55)
            ),),
            
            ],),
            Row(children: [Text('age:',style: TextStyle(
              fontSize: 14,fontWeight: FontWeight.w600
            ),)
      
            ,SizedBox(width: 5,),
            Text(snapshot.data!.age.toString(),style: TextStyle(
              fontSize: 14,fontWeight: FontWeight.w600
            ),)
            
            ],),
                   Row(children: [
            Text('gender:',style: TextStyle(
              fontSize: 14,fontWeight: FontWeight.w600
            ),),
            SizedBox(width: 5,),
            Text(snapshot.data!.gender,style: TextStyle(
              fontSize: 14,fontWeight: FontWeight.w600
            ),),
                   ],),
            
             Row(children: [
            Text('birthdate:',style: TextStyle(
              fontSize: 14,fontWeight: FontWeight.w600
            ),),
            SizedBox(width: 5,),
            Text(snapshot.data!.birthDate,style: TextStyle(
              fontSize: 14,fontWeight: FontWeight.w600
            ),),
                   ],),
                   Row(children: [
            Text('Email:',style: TextStyle(
              fontSize: 14,fontWeight: FontWeight.w600
            ),),
            SizedBox(width: 5,),
            Text(snapshot.data!.email,style: TextStyle(
              fontSize: 14,fontWeight: FontWeight.w600
            ),),
                   ],),
    Row(children: [
            Text('phone:',style: TextStyle(
              fontSize: 14,fontWeight: FontWeight.w600
            ),),
            SizedBox(width: 5,),
            Text(snapshot.data!.phone,style: TextStyle(
              fontSize: 14,fontWeight: FontWeight.w600
            ),),
                   ],),
    
            
            ],),
          )
        ],
      ),
    ),
  ),
  // Container(height: 100,width: 500,decoration: BoxDecoration(color: const Color.fromARGB(255, 117, 155, 182)),
  // ),
  SizedBox(height: 20,) ,
 Container(height: 250,width: 466,decoration: BoxDecoration(color: const Color.fromARGB(255, 174, 206, 232),borderRadius: BorderRadius.circular(10),boxShadow: [BoxShadow(color: const Color.fromARGB(255, 12, 30, 76),offset: Offset(10, 10),blurRadius: 20)]),
   child: Column(
     children: [
      SizedBox(height: 20,),
       Text('Personal Information',style: TextStyle(
                  fontSize: 25,fontWeight: FontWeight.w800,color: const Color.fromARGB(255, 17, 38, 55)
                )),
                 SizedBox(height: 20,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(height: 150,width: 220,
                      child: Column(
                        children: [
                          ListTile(leading: CircleAvatar(backgroundColor: const Color.fromARGB(255, 70, 145, 206),child: Icon(Icons.height),),
                          title: Row(children: [Text('height:  ',style: TextStyle(
                                          fontSize: 14,fontWeight: FontWeight.w600,color: const Color.fromARGB(255, 17, 38, 55)
                                        )),
                                        Text(snapshot.data!.height.toString(),style: TextStyle(
                                          fontSize: 14,fontWeight: FontWeight.w600,color: const Color.fromARGB(255, 17, 38, 55)
                                        ))
                                        
                                        
                                        ],)
                          ),
                      ListTile(leading: CircleAvatar(backgroundColor: const Color.fromARGB(255, 70, 145, 206),child: Icon(Icons.line_weight),),
                          title: Row(children: [Text('weight:  ',style: TextStyle(
                                          fontSize: 14,fontWeight: FontWeight.w600,color: const Color.fromARGB(255, 17, 38, 55)
                                        )),
                                        Text(snapshot.data!.weight.toString(),style: TextStyle(
                                          fontSize: 14,fontWeight: FontWeight.w600,color: const Color.fromARGB(255, 17, 38, 55)
                                        ))
                                        
                                        
                                        ],)
                          ),
                      
                          ListTile(leading: CircleAvatar(backgroundColor: const Color.fromARGB(255, 70, 145, 206),child: Icon(Icons.bloodtype),),
                          title: Row(children: [Text('blood group:  ',style: TextStyle(
                                          fontSize: 14,fontWeight: FontWeight.w600,color: const Color.fromARGB(255, 17, 38, 55)
                                        )),
                                        Text(snapshot.data!.bloodGroup,style: TextStyle(
                                          fontSize: 14,fontWeight: FontWeight.w600,color: const Color.fromARGB(255, 17, 38, 55)
                                        ))
                                        
                                        
                                        ],)
                          ),
                      
                      
                        ],
                      ),
                    ),
                              
                              
                   Container(height: 150,width: 220,
                     child: Column(
                        children: [
                          ListTile(leading: CircleAvatar(backgroundColor: const Color.fromARGB(255, 70, 145, 206),child: Icon(Icons.remove_red_eye),),
                          title: Row(children: [Text('eye color:  ',style: TextStyle(
                                          fontSize: 14,fontWeight: FontWeight.w600,color: const Color.fromARGB(255, 17, 38, 55)
                                        )),
                                        Text(snapshot.data!.eyeColor,style: TextStyle(
                                          fontSize: 14,fontWeight: FontWeight.w600,color: const Color.fromARGB(255, 17, 38, 55)
                                        ))
                                        
                                        
                                        ],)
                          ),
                      ListTile(leading: CircleAvatar(backgroundColor: const Color.fromARGB(255, 70, 145, 206),child: Icon(Icons.hail_rounded),),
                          title: Row(children: [Text('hair color:  ',style: TextStyle(
                                          fontSize: 14,fontWeight: FontWeight.w600,color: const Color.fromARGB(255, 17, 38, 55)
                                        )),
                                        Text(snapshot.data!.hair.color,style: TextStyle(
                                          fontSize: 14,fontWeight: FontWeight.w600,color: const Color.fromARGB(255, 17, 38, 55)
                                        ))
                                        
                                        
                                        ],)
                          ),
                      
                          ListTile(leading: CircleAvatar(backgroundColor: const Color.fromARGB(255, 70, 145, 206),child: Icon(Icons.type_specimen),),
                          title: Row(children: [Text('hair type:  ',style: TextStyle(
                                          fontSize: 14,fontWeight: FontWeight.w600,color: const Color.fromARGB(255, 17, 38, 55)
                                        )),
                                        Text(snapshot.data!.hair.type,style: TextStyle(
                                          fontSize: 14,fontWeight: FontWeight.w600,color: const Color.fromARGB(255, 17, 38, 55)
                                        ))
                                        
                                        
                                        ],)
                          ),
                      
                      
                        ],
                      ),
                   ),
                              
                  ],
                )
     ],
   ),
 ),
 SizedBox(height: 20,),
  Container(height: 250,width: 466,decoration: BoxDecoration(color: const Color.fromARGB(255, 174, 206, 232),borderRadius: BorderRadius.circular(10),boxShadow: [BoxShadow(color: const Color.fromARGB(255, 12, 30, 76),offset: Offset(10, 10),blurRadius: 20)]),
   child: Column(
    children: [
      SizedBox(height: 10,),
      Text('Work Information',style: TextStyle(
                  fontSize: 25,fontWeight: FontWeight.w800,color: const Color.fromARGB(255, 17, 38, 55)
                )),
                ListTile(leading: CircleAvatar(backgroundColor: const Color.fromARGB(255, 63, 128, 177),child: Icon(Icons.work),),
                title: Row(children: [Text('Role :  ',style: TextStyle(
                                          fontSize: 14,fontWeight: FontWeight.w600,color: const Color.fromARGB(255, 17, 38, 55)
                                        )),
                                        Text(snapshot.data!.role,style: TextStyle(
                                          fontSize: 14,fontWeight: FontWeight.w600,color: const Color.fromARGB(255, 17, 38, 55)
                                        ))
                                        
                                        
                                        ],)),
                                        ListTile(leading: CircleAvatar(backgroundColor: const Color.fromARGB(255, 63, 128, 177),child: Icon(Icons.engineering),),
                title: Row(children: [Text('company department :  ',style: TextStyle(
                                          fontSize: 14,fontWeight: FontWeight.w600,color: const Color.fromARGB(255, 17, 38, 55)
                                        )),
                                        Text(snapshot.data!.company.department,style: TextStyle(
                                          fontSize: 14,fontWeight: FontWeight.w600,color: const Color.fromARGB(255, 17, 38, 55)
                                        ))
                                        
                                        
                                        ],)),
                                        ListTile(leading: CircleAvatar(backgroundColor: const Color.fromARGB(255, 63, 128, 177),child: Icon(Icons.abc),),
                title: Row(children: [Text('company name :  ',style: TextStyle(
                                          fontSize: 14,fontWeight: FontWeight.w600,color: const Color.fromARGB(255, 17, 38, 55)
                                        )),
                                        Text(snapshot.data!.company.name,style: TextStyle(
                                          fontSize: 14,fontWeight: FontWeight.w600,color: const Color.fromARGB(255, 17, 38, 55)
                                        ))
                                        
                                        
                                        ],)),
                                        ListTile(leading: CircleAvatar(backgroundColor: const Color.fromARGB(255, 63, 128, 177),child: Icon(Icons.location_city),),
                title: Row(children: [Text('company location :  ',style: TextStyle(
                                          fontSize: 14,fontWeight: FontWeight.w600,color: const Color.fromARGB(255, 17, 38, 55)
                                        )),
                                        Text(snapshot.data!.company.address.city,style: TextStyle(
                                          fontSize: 14,fontWeight: FontWeight.w600,color: const Color.fromARGB(255, 17, 38, 55)
                                        ))
                                        
                                        
                                        ],))
    ],
   ),)
  
  
  
  
  ],),
);
          
        }else if(snapshot.hasError){
          return Text('you need access token');
        }
         else {
         return Center(child: CircularProgressIndicator());
        }
      }),
    );
  }
}