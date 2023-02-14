import 'package:flutter/material.dart';
import 'Home_Page.dart';


class MySecondPage extends StatefulWidget {
  const MySecondPage({Key? key}) : super(key: key);
  @override
  State<MySecondPage> createState() => _MySecondPageState();
}

var sofaImage = 'Images/brown.jpg' ;
int counter = 1 ;
var borderColor1 = Colors.grey.shade300 ;
var borderColor2 = Colors.grey.shade300 ;
var borderColor3 = Colors.grey.shade300 ;


class _MySecondPageState extends State<MySecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.white,
        elevation: 0.0,
        leading:InkWell(
          onTap: (){ Navigator.push(context,MaterialPageRoute(builder: (context) =>const MyHomePage()));},
            child: const Icon(Icons.arrow_back, color: Colors.black,)),
        actions:  [
          Row(
              children: const [
                 SizedBox(width: 30,),
                 Text('Sofa',textAlign:TextAlign.center,style: TextStyle(fontSize:20,color:Colors.black,fontWeight: FontWeight.bold),),
                SizedBox(width: 150,),
                Icon(Icons.shopping_bag_rounded , color: Colors.black,),
                SizedBox(width: 15,),
              ],
            ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 35),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                  child: Image.asset(sofaImage ,)
              ),
              const SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text("Sofa" ,style: TextStyle(fontSize: 25 ,fontWeight: FontWeight.bold),),
                  Expanded(child: SizedBox()),
                  Text("\$65" ,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                ],
              ),
              const SizedBox(height: 15,),
              Wrap(
                  children: [
                    Text('This is text can be changed This is text can be changed This is text can be changed This is'
                  ' text can be changed This is text can be changed This is text can be changed This is text can be changed. ',
                     style:TextStyle(color: Colors.grey.shade400 , fontSize: 17 , wordSpacing: 2 ,height:1.5) ,),
                ]
              ),
              const SizedBox(height: 25,),
              Row(
                children:   [
                  const Text('Color',style: TextStyle(fontSize:20 ,fontWeight: FontWeight.bold),),
                  const SizedBox(width: 20,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        sofaImage = 'Images/brown.jpg';
                        borderColor1 =  const Color(0xffCFB997) ;
                        borderColor2 = Colors.grey.shade300 ;
                        borderColor3 = Colors.grey.shade300 ;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color:borderColor1 ,
                          width: 3.5
                        ),
                        color: Colors.brown,
                        borderRadius: const BorderRadius.all(Radius.circular(80)),
                      ),
                      width: 30,
                      height: 30,
                    ),
                  ),
                  const SizedBox(width: 10,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        sofaImage ='Images/blue.png';
                        borderColor1 = Colors.grey.shade300 ;
                        borderColor2 = const Color(0xffCFB997) ;
                        borderColor3 = Colors.grey.shade300 ;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color:borderColor2,
                          width: 3.5
                        ),
                        color: Colors.blue.shade900,
                        borderRadius: const BorderRadius.all(Radius.circular(80)),
                      ),
                      width: 30,
                      height: 30,
                    ),
                  ),
                  const SizedBox(width: 10,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        sofaImage ='Images/pink.png';
                        borderColor1 = Colors.grey.shade300 ;
                        borderColor2 = Colors.grey.shade300 ;
                        borderColor3 = const Color(0xffCFB997) ;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color:borderColor3,
                          width: 3.5
                        ),
                        color: Colors.pink.shade200,
                        borderRadius: const BorderRadius.all(Radius.circular(80)),
                      ),
                      width: 30,
                      height: 30,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25,),
              Row(
                children: [
                  const Text('Quantity',style: TextStyle(fontSize:20 ,fontWeight: FontWeight.bold),),
                  const SizedBox(width: 20,),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                    decoration: const BoxDecoration(
                      color: Color(0xffCFB997),
                      borderRadius: BorderRadius.all(Radius.circular(30))
                    ),
                    child:Row(
                      children: [
                        InkWell(
                          child: const CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.brown,
                            child: Text("-",style: TextStyle(color: Colors.white,fontSize: 30),),),
                           onTap: (){
                            setState(() {
                              if(counter <= 1 ) { counter = 1 ; } else{ counter -- ; }
                            });
                          },
                        ),
                        const SizedBox(width: 15,),
                        Text(counter.toString(),style: const TextStyle(color: Colors.black,fontSize: 25,),),
                        const SizedBox(width: 15,),
                        InkWell(
                          child: const CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.brown,
                            child:Icon(Icons.add ,color: Colors.white,size: 20,),
                          ),
                          onTap: (){
                            setState(() {
                              counter ++ ;
                            });
                          },
                        ),
                      ],

                    ),

                  )
                ],
              ),
              const SizedBox(height: 55,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 60 ,vertical: 15),
                 decoration: const BoxDecoration(
                        color: Color(0xffCFB997),
                        borderRadius: BorderRadius.all(Radius.circular(30))
                    ),
                 child: const Text("Add to cart",style: TextStyle(color:Colors.brown , fontWeight: FontWeight.bold ,fontSize: 15),),

                    ),
              const SizedBox(height: 15,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 60 ,vertical: 15),
                 decoration: const BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.all(Radius.circular(30))
                    ),
                 child: const Text("BUY NOW",style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold ,fontSize: 15),),

                    ),
            ],
          ),
        ),
      ),
    );
  }
}
