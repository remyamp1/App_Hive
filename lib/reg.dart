import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_app/login.dart';
class RegistrationExample extends StatefulWidget {
  const RegistrationExample({super.key});

  @override
  State<RegistrationExample> createState() => _RegistrationExampleState();
}

class _RegistrationExampleState extends State<RegistrationExample> {
  TextEditingController fullnameController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController confirmpasswordController=TextEditingController();
 TextEditingController phonenoController=TextEditingController();
TextEditingController createController=TextEditingController();
  late Box box;
  @override
  void initState(){
    super.initState();
    box=Hive.box('mybox');
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/image/backgroun.jpeg"),
        fit: BoxFit.cover)),
       child: 
      
      Center(
        child:
         Padding(
          padding: const EdgeInsets.all(20.0),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("CREATE NEW ACCOUNT",style: TextStyle(fontSize: 20,color: Colors.white),),
            SizedBox(height: 30),
                TextFormField(
                   controller: fullnameController,
                  decoration: InputDecoration(border: OutlineInputBorder(),label: Text('FullName')),),
                 
            
                
                SizedBox(height: 20),
            
                TextFormField
                
                (
                  controller: emailController,
                  decoration: InputDecoration(border: OutlineInputBorder(),label: Text("Email")),),
                     
            
                SizedBox(height: 20),
            
                TextFormField(
                   controller: passwordController,
                  decoration: InputDecoration(border: OutlineInputBorder(),label: Text('Password')),),
            
            
            
                SizedBox(height: 20),
            
                TextFormField(
                   controller: confirmpasswordController,
                  decoration: InputDecoration(border: OutlineInputBorder(),label: Text('ConfirmPassword')),),
              
                SizedBox(height: 20),
            
                TextFormField(
                   controller: phonenoController,
                  decoration: InputDecoration(border: OutlineInputBorder(),label: Text('Phone Number')),),
             SizedBox(height: 80),
                SizedBox(height: 40,
                width: 250,
                  child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 211, 151, 250),shape: RoundedRectangleBorder()),
                   
                    child: Text("Create an Account",style: TextStyle(fontSize: 20),),
                  
                  ),
                ),
                SizedBox(height: 40),
            
                Row(
                  
                  children: [
                    Text("Already have an Account?"),
                    SizedBox(width: 10),
                    ElevatedButton(onPressed: (){
                                
                      setState(() {
                        box.put('fullname',fullnameController .text);
                        box.put('email',emailController.text);
                        box.put('password',passwordController.text);
                        box.put('confirmpassword',confirmpasswordController.text);
                         box.put('phonenumber',phonenoController.text);
                      });
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginExample()));
                       },
                        style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 211, 151, 250),shape: RoundedRectangleBorder()),
                        child: Text("Login")),
                  ],
                )
              ],
            ),
          ),
        ),
      )
      ),
    );
  }
}