import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Imageslider extends StatelessWidget {
  List<String> images = [
    "https://cdn.luxe.digital/media/2020/12/15110747/fastest-cars-world-2021-luxe-digital%402x-2048x1024.jpg",
    "https://cdn.luxe.digital/media/2020/12/15110730/fastest-cars-world-2021-hennessey-venom-GT-luxe-digital%402x.jpg",
    "https://specials-images.forbesimg.com/imageserve/5d35eacaf1176b0008974b54/960x0.jpg",
    "https://cdn.luxe.digital/media/2020/12/15110714/fastest-cars-world-2021-Bugatti-Chiron-Super-Sport-300-luxe-digital%402x.jpg",
    "https://cdn.luxe.digital/media/2020/12/15110735/fastest-cars-world-2021-Koenigsegg-Jesko-Absolut-luxe-digital%402x.jpg"
  ];
  int check = 10;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 400,
          height: 300,
          child: imageslider(context, images),
        ),
      ],
    );
  }
}

Swiper imageslider(BuildContext context, List images) {
  return new Swiper(
    itemCount: images.length,
    autoplay: true,
    itemBuilder: (BuildContext context, int index) {
      return Image.network(images[index]);
    },
  );
}
