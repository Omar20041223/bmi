import 'package:flutter/material.dart';

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  bool x = true ;
  bool y = true ;
  double height = 150;
  int weight = 50;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff090F1F),
        appBar: AppBar(
          backgroundColor: Color(0xff090E21)
          ,centerTitle: true
          ,title: Text("BMI CALCULATOR",style: TextStyle(color: Color(0xffBCBFC6),fontSize: 30,),),),
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: (){
                          x=!x;
                          setState(() {
                            if(x==false&&y==false) {
                              y = true;
                            }
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: x?Color(0xff1D1E33):Colors.green,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.male,size: 60,color: Color(0xffFFFEFF),),
                              SizedBox(height: 5,),
                              Text("Male",style: TextStyle(color: Color(0xffFEFFFF),fontSize: 30),)
                            ],
                          ),

                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    Expanded(
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            y=!y;
                            if(y==false&&x==false){
                              x = true;
                            }
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: y?Color(0xff1D1E33):Colors.green,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.female,size: 60,color: Color(0xffFFFEFF),),
                              SizedBox(height: 5,),
                              Text("Female",style: TextStyle(color: Color(0xffFFFEFF),fontSize: 30),)
                            ],
                          ),

                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Color(0xff1D1E33),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("HEIGHT",style: TextStyle(color: Color(0xff484759),fontSize: 20),),
                  Text("${height.round()}cm",style: TextStyle(color: Color(0xffFFFEFF),fontSize: 35),),
                  Slider(value: height, onChanged:(z){
                    setState(() {
                      height = z;
                    });
                  },min: 100,max: 220,),
                ],
              ),


            )),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xff1D1E33),
                            borderRadius: BorderRadius.circular(12)
                        ),
                        child: Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("WEIGHT",style: TextStyle(color: Color(0xff484759),fontSize: 20),),
                              Text("$weight",style: TextStyle(color: Color(0xffFFFEFF),fontSize: 50),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                      backgroundColor: Color(0xff4C4F5E),
                                      foregroundColor: Colors.white,
                                      onPressed: (){
                                        setState(() {
                                          weight--;
                                        });
                                      },
                                      child : Icon(Icons.remove)),
                                  SizedBox(width: 10,),
                                  FloatingActionButton(
                                      backgroundColor: Color(0xff4C4F5E),
                                      foregroundColor: Colors.white,
                                      onPressed: (){
                                        setState(() {
                                          weight++;
                                        });
                                      },
                                      child : Icon(Icons.add)),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xff1D1E33),
                            borderRadius: BorderRadius.circular(12)
                        ),
                        child: Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("AGE",style: TextStyle(color: Color(0xff484759),fontSize: 20),),
                              Text("$age",style: TextStyle(color: Color(0xffFFFEFF),fontSize: 50),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                      backgroundColor: Color(0xff4C4F5E),
                                      foregroundColor: Colors.white,
                                      onPressed: (){
                                        setState(() {
                                          age--;
                                        });
                                      },
                                      child : Icon(Icons.remove)),
                                  SizedBox(width: 10,),
                                  FloatingActionButton(
                                      backgroundColor: Color(0xff4C4F5E),
                                      foregroundColor: Colors.white,
                                      onPressed: (){
                                        setState(() {
                                          age++;
                                        });
                                      },
                                      child : Icon(Icons.add)),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffEB1555),
                ),
                child:
                MaterialButton(onPressed: (){},child: Text("CALCULATE",style: TextStyle(color: Colors.white,fontSize: 30,fontStyle: FontStyle.italic),),)
            )

          ],
        )
    );

  }
}

