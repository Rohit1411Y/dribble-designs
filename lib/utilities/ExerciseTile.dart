import 'package:flutter/material.dart';

class Exercisetile extends StatelessWidget {
  final icon;
  final String exerciseName;
  final String noOfExercises;
  final Color color;
  const Exercisetile({super.key,required this.icon,required this.exerciseName,required this.noOfExercises,required this.color});

  @override
  Widget build(BuildContext context) {
    return  Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.only(top: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius:BorderRadius.circular(12),
                  child: Container(
                      color:color,
                      padding: const EdgeInsets.all(16),
                      child:  Icon(icon,color: Colors.white,)),
                ),
                const SizedBox(width: 12,),
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(exerciseName,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                   const SizedBox(height: 5,),
                    Text(noOfExercises,style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                  ],),

              ],
            ),
            const Icon(Icons.more_horiz)
          ],
        )
    );
  }
}
