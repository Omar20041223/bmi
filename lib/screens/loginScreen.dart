import 'package:flutter/material.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Expanded(
            child: Container(
              color: Color(0xff436DFF),
            ),
          ),
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 90,
                      ),
                      Text("Login",style: TextStyle(fontSize: 40,color: Color(0xffFEFCFF)),),
                      Text("Enter a beautiful world",style: TextStyle(fontSize: 20,color: Color(0xffBDDAFF)),)

                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40)),
                      color: Colors.white
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 100),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Your Email",
                              prefixIcon: Icon(Icons.email),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5)
                              ),
                            ),
                      
                          ),
                          SizedBox(height: 15,),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Password",
                              prefixIcon: Icon(Icons.lock),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5)
                              ),
                            ),
                      
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              MaterialButton(onPressed: (){},
                                child: Text("forget password?",style: TextStyle(fontSize: 20,color: Colors.blue),),
                              )
                            ],
                          ),
                          SizedBox(height: 30,),
                          MaterialButton(onPressed: (){},
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xff4469FF),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              width: double.infinity,
                              child: Center(child: Text("LOGIN",style: TextStyle(fontSize: 30,color: Colors.white,fontStyle: FontStyle.italic),)),
                            )
                          ),
                          SizedBox(height: 60),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Don't Have An Account?",style: TextStyle(fontSize: 20)),
                              MaterialButton(onPressed: (){},
                                child: Text("Register now",style: TextStyle(fontSize: 20,color: Colors.blue),),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      )
    );
  }
}
