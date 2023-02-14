import 'package:flutter/material.dart';
import 'Second_Page.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


var textColor1 = const Color(0xffCFB997);
var textColor2 = const Color(0xffCFB997);
var textColor3 = const Color(0xffCFB997);
var fillColor1 = Colors.white;
var fillColor2 = Colors.white;
var fillColor3 = Colors.white;


class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(left:25),
            child: Icon(Icons.list , color:Colors.white, size: 30,)
        ),
        elevation: 0.0,
        backgroundColor: const Color(0xffCFB997),
        actions:[
          Padding(
            padding:const EdgeInsets.symmetric(horizontal:25),
            child:Row(
              children: [
                const Icon(Icons.search , color:Colors.white, size: 30,),
                const SizedBox(width: 15,),
                Container(
                  width: 35,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(3),), //BorderRadius.all
                    border:Border.all(color:Colors.white , width: 2,)
                  ),
                  child: Image.asset('Images/profile.jpg'),
                ),
              ],
            ) ,
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                color: Color(0xffCFB997),
                borderRadius: BorderRadius.only(bottomLeft:Radius.circular(80),bottomRight: Radius.circular(80)),
            ),
            height: 350,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 35,horizontal: 30),
            child:Column(
              crossAxisAlignment:CrossAxisAlignment.start ,
              children: [
                const Text("Explore",style:TextStyle(fontSize: 30,color:Colors.white,fontWeight:FontWeight.bold),),
                const SizedBox(height: 45,),
                SingleChildScrollView(
                  scrollDirection:Axis.horizontal,
                  child:Row(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(20)), // Image border
                        child:Image.asset("Images/chairs.jpg",width: 200,),
                      ),
                      const SizedBox(width: 30,),
                      ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(20)), // Image border
                        child:Image.asset("Images/sofa.jpg",width: 200,),
                      ),
                      const SizedBox(width: 30,),
                      ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(20)), // Image border
                        child:Image.asset("Images/tables.jpg",width: 200,),
                      ),
                      const SizedBox(width: 30,),
                    ],
                  ),
                ),
                const SizedBox(height: 35,),
                Row(
                  children: [
                    InkWell(
                      onTap: (){
                        setState(() {
                            textColor1 = Colors.white;
                            fillColor1 = const Color(0xffCFB997);
                            //---------------------------------
                            textColor2 = const Color(0xffCFB997);
                            textColor3 = const Color(0xffCFB997);
                            fillColor2 = Colors.white;
                            fillColor3 = Colors.white;
                        });
                      },
                      child:Container(
                        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 25),
                        decoration:BoxDecoration(
                          color:  fillColor1,
                          borderRadius:const BorderRadius.all(Radius.circular(40)),
                          border:Border.all(color:const Color(0xffCFB997),width: 2)
                        ),
                        child: Text("Chairs",textAlign:TextAlign.center,style:TextStyle(color:textColor1,fontSize: 20 ),),
                      ),
                    ),
                    const SizedBox(width: 15,),
                    InkWell(
                      onTap: (){
                        setState(() {
                            textColor2 = Colors.white;
                            fillColor2 = const Color(0xffCFB997);
                            //-----------------------------------
                            fillColor1 = Colors.white;
                            fillColor3 = Colors.white;
                            textColor1 = const Color(0xffCFB997);
                            textColor3 = const Color(0xffCFB997);
                        });
                      },
                      child:Container(
                        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                        decoration:BoxDecoration(
                            color:  fillColor2,
                            borderRadius:const BorderRadius.all(Radius.circular(40)),
                          border:Border.all(color:const Color(0xffCFB997),width: 2)
                        ),
                        child: Text("Sofa",textAlign:TextAlign.center,style:TextStyle(color:textColor2,fontSize: 20 ),),
                      ),
                    ),
                    const SizedBox(width: 15,),
                    InkWell(
                      onTap: (){
                        setState(() {
                            textColor3 = Colors.white;
                            fillColor3 = const Color(0xffCFB997);
                            //------------------------------------
                            textColor1 = const Color(0xffCFB997);
                            textColor2 = const Color(0xffCFB997);
                            fillColor1 = Colors.white;
                            fillColor2 = Colors.white;
                        });
                      },
                      child:Container(
                        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 25),
                        decoration:BoxDecoration(
                            color:  fillColor3,
                          borderRadius:const BorderRadius.all(Radius.circular(40)),
                          border:Border.all(color:const Color(0xffCFB997),width: 2)
                        ),
                        child: Text("Tables",textAlign:TextAlign.center,style:TextStyle(color:textColor3,fontSize: 20 ),),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30,),
                Row(
                  children: [
                    InkWell(
                      child: Stack(
                        children: [
                          Container(
                            margin:const EdgeInsets.only(top: 10),
                            width: 160,
                            height: 150,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              color:Color(0xd0eed8b5)
                            ),
                          ),
                          Container(
                            margin:const EdgeInsets.only(left: 95),
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: const BoxDecoration(
                                color: Color(0xffCFB997),
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            child: const Text("New",style:TextStyle(color: Colors.white,fontSize: 15),),

                          ),
                          Container(
                            margin:const EdgeInsets.only(top:25,left: 15),
                            child:  Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                                const Text("Grey Chair",style:TextStyle(color:Colors.brown,fontSize: 17),),
                                const SizedBox(height: 5,),
                                Row(
                                  children: const [
                                    Text("\$65",style:TextStyle(color:Colors.brown,fontSize: 15),),
                                    SizedBox(width: 70,),
                                    Icon(Icons.star,color:Colors.brown,size:17,),
                                    Text("4.9",style:TextStyle(color:Colors.brown,fontSize: 15),),
                                  ],
                                ),
                                Image.asset('Images/chair1.png',width: 120 ,)
                            ],
                          )
                      ),
                  ],
                  ),
                      onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) =>const MySecondPage()));                      },),
                    const SizedBox(width: 35,),
                    Stack(
                      children: [
                        Container(
                          margin:const EdgeInsets.only(top: 10),
                          width: 160,
                          height: 150,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              color:Color(0xd0eed8b5)
                          ),
                        ),
                        Container(
                          margin:const EdgeInsets.only(left: 95),
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: const BoxDecoration(
                              color: Color(0xffCFB997),
                              borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          child: const Text("New",style:TextStyle(color: Colors.white,fontSize: 15),),

                        ),
                        Container(
                            margin:const EdgeInsets.only(top:25,left: 15),
                            child:  Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                                const Text("Grey Chair",style:TextStyle(color:Colors.brown,fontSize: 17),),
                                const SizedBox(height: 5,),
                                Row(
                                  children: const [
                                    Text("\$65",style:TextStyle(color:Colors.brown,fontSize: 15),),
                                    SizedBox(width: 70,),
                                    Icon(Icons.star,color:Colors.brown,size:17,),
                                    Text("4.9",style:TextStyle(color:Colors.brown,fontSize: 15),),
                                  ],
                                ),
                                Image.asset('Images/chair1.png',width: 120 ,)
                              ],
                            )
                        ),
                      ],
                    ),
              ],
            ),
              ],
          )
       ),
       ]
      ),
    );
  }
}
