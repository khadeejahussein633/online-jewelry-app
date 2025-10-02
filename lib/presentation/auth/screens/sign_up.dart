import 'package:flutter/material.dart';
import 'package:jewelary_sys/presentation/auth/screens/login.dart';


class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40,),
              Row(
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon:  Icon(Icons.arrow_back,color: Colors.green.shade400,)),
                  Text("back",style: TextStyle(color: Colors.green.shade400),),
          
                 
                ],
              ),
          
                SizedBox(height: 40,),
                  Center(child: Text("Create Account",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),)),
          
                  SizedBox(height: 40,),
                    TextFormField(
                   
          
                    decoration: InputDecoration(
                  hintText: "Enter your name",
                 
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green.shade800)
                  )
                  
                ),
                    ),
          
          
          
                    SizedBox(height: 20,),
          
                     
          
                 // SizedBox(height: 20,),
                  // TextField(
                  //   decoration:InputDecoration(
                  //     labelText: "Email address",
                  //     hintText: "ENter Your Email",
                  //     labelStyle:  TextStyle(color: Colors.green.shade400),
                  //     focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green.shade400),
                  //     borderRadius: BorderRadius.circular(20),
          
                      
                  //     ),
                      
                  //   ),
                  // ),
          
                    TextFormField(
                   
          
                    decoration: InputDecoration(
                  hintText: "Enter your email",
                  prefixIcon:Icon(Icons.email) ,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green.shade800)
                  )
                  
                ),
                    ),
          
          
          
          
          
                  SizedBox(height: 20,),
          
                    TextFormField(
                   
          
                     
          
                    decoration: InputDecoration(
                  hintText: "Enter your password",
          
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green.shade800)
                  )
                ),
                    ),
          
                                SizedBox(height: 20,),
          
          
          
                     TextFormField(
                   
          
                    decoration: InputDecoration(
                  hintText: "Conform Your Password",
                  
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green.shade800)
                  )
                  
                ),
                    ),
          
          
          
          
                                SizedBox(height: 20,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade800,
                    foregroundColor: Colors.white
                  ),
          
                  onPressed: (){
          
                    
                  }, child: Text("SignUp")),
              ),

              SizedBox(height: 16,),
          
          
               SizedBox(
                
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade800,
                    foregroundColor: Colors.white
                  ),
          
                  onPressed: (){
                     Navigator.of(context).push(MaterialPageRoute(builder: (_) => LginScreen()));
          
                    
                  }, child: Text("SignUp")),
              )
                  
            ],
          
          
          
          ),
        ),
      ),
    );
  }
}
