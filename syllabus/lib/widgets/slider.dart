import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Slide extends StatelessWidget {
  const Slide({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
            options: CarouselOptions(height: 150,autoPlay: true, viewportFraction: 1),
            items: ["https://mediaproxy.salon.com/width/1200/https://media.salon.com/2020/08/albert-einstein-space-0827201.jpg","https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/Paul_Dirac.jpg/250px-Paul_Dirac.jpg","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUsAEEbgDSWYpWIjtIGFfZs9J1BsVaDdPQaw&usqp=CAU","https://www.history.com/.image/t_share/MTU3ODc4ODU0NzY4MjcyNzEz/teslas-death-ray.jpg"].map((i) {
              return Builder(
                builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: const BoxDecoration(
                color: Colors.amber
              ),
              // child: Text('text $i', style: TextStyle(fontSize: 16.0),)
              child: Image.network(i,fit: BoxFit.cover,),
              
              
            );
                },
              );
            }).toList(),
          );
  }
}
