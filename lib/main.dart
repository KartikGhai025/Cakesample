import 'package:flutter/material.dart';
//import 'package:website/sections/section1.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
//import 'package:website/sections/section2.dart';
//import 'package:website/sections/section3.dart';

void main() => runApp(const Portfolio());

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: const Website(),
      ),
    );
  }
}

class Website extends StatelessWidget {
  const Website({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Section_one(),
          Section_two(),
          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Section_three(),
              ],
            ),
          ),
          Card(
            child: Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('images/image1.jpg'),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Kartik'),
              ),
            ),
            margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
          ),
          SizedBox(
            height: 2,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.circular(10),
            ),
            height: size.height * 0.5,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    height: size.height * 0.25,
                    width: size.width * 0.25,
                    color: Colors.white),
                TextButton(
                  child: Icon(
                    Icons.arrow_circle_down,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Container(
            color: Colors.black,
            height: 30,
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.hdr_plus,
                  color: Colors.white,
                ),
                Icon(Icons.follow_the_signs, color: Colors.white),
                Icon(Icons.pets, color: Colors.white),
              ],
            ),
          ),
          Container(
            height: 20,
            width: double.infinity,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}

class Section_one extends StatelessWidget {
  const Section_one({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.circle,
            color: Colors.red,
          ),
          Icon(Icons.crop_square_sharp, color: Colors.red),
          Icon(Icons.search, color: Colors.red),
        ],
      ),
    );
  }
}

class Section_two extends StatelessWidget {
  const Section_two({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ImageSlideshow(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.4,
        initialPage: 0,
        indicatorColor: Colors.blue,
        indicatorBackgroundColor: Colors.grey,
        children: [
          Image.asset(
            'images/image1.jpg',
            fit: BoxFit.fitHeight,
          ),
          Image.asset(
            'images/image2.jpg',
            fit: BoxFit.fitHeight,
          ),
          Image.asset(
            'images/image3.jpg',
            fit: BoxFit.fitHeight,
          ),
        ],
        onPageChanged: (value) {
          print('Page changed: $value');
        },
        autoPlayInterval: 3000,
      ),
    );
  }
}

class Section_three extends StatelessWidget {
  const Section_three({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: Row(
        children: [
          Container(
            color: Colors.red[400],
            child: Image.asset(
              "images/section31.jpg",
              fit: BoxFit.fill,
            ),
            height: 200,
            width: 150,
            //color: Colors.red[400],
          ),
          const SizedBox(
            width: 01,
          ),
          Container(
              child: Image.asset(
                "images/section32.jpg",
                fit: BoxFit.fill,
              ),
              height: 200,
              width: 150,
              color: Colors.yellow[400]),
          const SizedBox(
            width: 01,
          ),
          Container(
            child: Image.asset(
              "images/section33.jpg",
              fit: BoxFit.fill,
            ),
            height: 200,
            width: 150,
            color: Colors.cyan[200],
          ),
          const SizedBox(
            width: 1,
          ),
          Container(
            child: Image.asset(
              "images/section31.jpg",
              fit: BoxFit.fill,
            ),
            height: 200,
            width: 150,
            color: Colors.green,
          ),
          const SizedBox(
            width: 1,
          ),
          Container(
            child: Image.asset(
              "images/section32.jpg",
              fit: BoxFit.fill,
            ),
            height: 200,
            width: 150,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
