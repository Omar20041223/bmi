
import 'package:flutter/material.dart';
class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  double result = 0 ;

  final TextEditingController number1 = TextEditingController();

  final TextEditingController number2 = TextEditingController();

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child:
             Container(
              decoration: BoxDecoration(
                color: Color(0xff4CB6AC),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50))
              ),
              child: SingleChildScrollView(
                child: Column(

                  children: [
                    SizedBox(height: 40,),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextFormField(
                        controller: number1,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)
                          ),
                          hintText: "Number1",
                          hintStyle: TextStyle(color: Colors.black,fontSize: 20)
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextFormField(
                        controller: number2,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5)
                            ),
                            hintText: "Number2",
                            hintStyle: TextStyle(color: Colors.black,fontSize: 20)
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 130,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 30,
                  height: 20,
                  color: Color(0xff00796A),
                ),
                Text("Result = $result",style: TextStyle(fontSize: 30),),
                Container(
                  width: 30,
                  height: 20,
                  color: Color(0xff00796A),
                ),
              ],
            ),
          ),
          Expanded(child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xff4CB6AC),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50))
                ),

              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(onTap:(){
                    setState(() {
                      result = double.parse(number1.text) + double.parse(number2.text);
                    });
                  },child: CircleAvatar(
                    backgroundColor: Color(0xff009788),
                    radius: 30,
                    child: Icon(Icons.add,color: Color(0xff003452),),
                  )),
                  InkWell(
                    onTap: (){
                      setState(() {
                        result = double.parse(number1.text) - double.parse(number2.text);
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: Color(0xff009788),
                      radius: 30,
                      child: Icon(Icons.remove,color: Color(0xff003452)),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        result = double.parse(number1.text) * double.parse(number2.text);
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor:Color(0xff009788),
                      radius: 30,
                      child:Text("X",style: TextStyle(fontSize: 25,color: Color(0xff003452)),)
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        result = double.parse(number1.text) / double.parse(number2.text);
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor:Color(0xff009788),
                      radius: 30,
                      child: Text("/",style: TextStyle(fontSize: 25,color: Color(0xff003452)),)
                    ),
                  ),
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}
