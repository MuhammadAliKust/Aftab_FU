import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget {
  const ImageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Demo"),
      ),
      body: Column(
        children: [
          Image.asset('assets/images/1.png')
          // Image.network(
          //   'https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg',
          //   width: MediaQuery.of(context).size.width,
          //   height: 100,
          //   fit: B
          //   oxFit.cover,
          // ),
        ],
      ),
    );
  }
}
