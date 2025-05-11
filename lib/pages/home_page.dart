import 'package:dribbledesign/utilities/ExerciseTile.dart';
import 'package:dribbledesign/utilities/emot_icon_face.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
          items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.message),label: '')
      ]),
      body:  SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                           const Text('Hi Rohit',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                         const SizedBox(height: 8,),
                         Text('11 May, 2025',style: TextStyle(color: Colors.blue[200]),),
                       ],
                     ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(12)
                        ),
                        padding: const EdgeInsets.all(12),
                        child: const Icon(Icons.notifications,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),

                 const SizedBox(height: 25,),
                 Container(
                   decoration: BoxDecoration(
                     color: Colors.blue[600],
                     borderRadius: BorderRadius.circular(12),
                   ),
                   padding: const EdgeInsets.all(12),
                   child:const Row(
                     children: [
                       Icon(Icons.search,color: Colors.white,),
                       SizedBox(width: 5,),
                       Text('Search',style: TextStyle(color: Colors.white),)
                     ],
                   ),
                 ),
                const SizedBox(height: 25,) ,
               const Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text("How do You Feel?",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                   Icon(Icons.more_horiz,color: Colors.white,)
                 ],
               ),
                 const SizedBox(height: 25,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Column(
                       children: [
                         EmotIconFace(icon: "🤨"),
                         SizedBox(height: 8,),
                         Text("Bad", style: TextStyle(color: Colors.white),)
                       ],
                     ),
                     Column(
                       children: [
                         EmotIconFace(icon: "🙂"),
                         SizedBox(height: 8,),
                         Text("Fine", style: TextStyle(color: Colors.white),)
                       ],
                     ),
                     Column(
                       children: [
                         EmotIconFace(icon: "😌"),
                         SizedBox(height: 8,),
                         Text("Well", style: TextStyle(color: Colors.white),)
                       ],
                     ),
                     Column(
                       children: [
                         EmotIconFace(icon: "😄"),
                         SizedBox(height: 8,),
                         Text("Happy", style: TextStyle(color: Colors.white),)
                       ],
                     )
                   ],
                 )
                ],
              ),
            ),
            const SizedBox(height: 25,),
            Expanded(child: ClipRRect(
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50)),
              child: Container(
                color: Colors.grey[200],
                padding: const EdgeInsets.only(top: 25,left: 25,right: 25),
                child: Center(
                  child: Column(
                    children: [
                     const  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Exercises',
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                          ),
                          Icon(Icons.more_horiz)
                        ],
                      ),
                     const SizedBox(height: 20,),
                     Expanded(child: ListView(
                       children: const [
                         Exercisetile(icon: Icons.favorite,exerciseName: "Speaking Skills",noOfExercises: "16 exercises",color: Colors.orange,),
                         Exercisetile(icon: Icons.person,exerciseName: "Reading Skills",noOfExercises: "8 exercises",color: Colors.green,),
                         Exercisetile(icon: Icons.star,exerciseName: "Writing Skills",noOfExercises: "15 exercises",color: Colors.pink,)
                       ],
                     ))
                    ],
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
