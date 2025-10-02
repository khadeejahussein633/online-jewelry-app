import 'package:flutter/material.dart';
import 'package:jewelary_sys/presentation/Home/screens/home_screen.dart';
import 'package:jewelary_sys/presentation/auth/screens/sign_up.dart';


class LginScreen extends StatefulWidget {
  const LginScreen({super.key});

  @override
  State<LginScreen> createState() => _LginScreenState();
} 

class _LginScreenState extends State<LginScreen> {
  final TextEditingController emailcontroller =TextEditingController();
  final TextEditingController passwordcontroller =TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

      appBar: AppBar(title: Center(child: Text("Jewellery Online Shop",style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold),)),),

      
      body: 
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          
          children: [
            SizedBox(height: 40,),

            Center(child: Text("LOGIN",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
            SizedBox(height: 20,),
           
            
            Form(
              key: _formkey,
              child: Column(
              children: [
                TextFormField(
                  controller: emailcontroller,

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
                    controller: passwordcontroller,
                    obscureText: true,

                  decoration: InputDecoration(
                hintText: "Enter your password",
                prefixIcon:Icon(Icons.password) ,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green.shade800)
                )
              ),
        


                )
              ],
              

            )
            ),

            Text("Forget Password"),


            SizedBox(height: 20,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.shade800,
                  foregroundColor: Colors.white
                ),
                

                onPressed: (){
                
                   Navigator.of(context).push(MaterialPageRoute(builder: (_) => HomeScreen() ));

                }, child: Text("Login")),
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
                
                Navigator.of(context).push(MaterialPageRoute(builder: (_) =>SignUp()));
                    }, child: Text("Sign UP")),
            ),

          ],
        ),
      ),
    );
  }
}
