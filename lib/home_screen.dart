import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xoffset = 0;
  double yoffset = 0;

  bool isDrawerOpen = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xoffset, yoffset, 0)
        ..scale(isDrawerOpen ? 0.87 : 1.00)
        ..rotateZ(isDrawerOpen ? -50 : 0),
      duration: Duration(milliseconds: 200),
      color: Colors.yellow.shade200,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
         Container(
          child: Column(
            children: [
                 Container(
        
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: <Widget>[
                  isDrawerOpen
                      ? GestureDetector(
                          child: Icon(Icons.arrow_back_ios),
                          onTap: () {
                            setState(() {
                              xoffset = 0;
                              yoffset = 0;
                              isDrawerOpen = false;
                            });
                          },
                        )
                      : GestureDetector(
                          child: Icon(Icons.menu),
                          onTap: () {
                            setState(() {
                              xoffset = 290;
                              yoffset = 80;
                              isDrawerOpen = true;
                            });
                          },
                        ),
                  Text(
                    ' Drawer',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black87,
                        decoration: TextDecoration.none),
                  ),
                  Container()
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              children: <Widget>[
                NewPadding(
                  image1: 'assets/fish.png',
                  text1: 'Fish',
                  image2: 'assets/monkey.png',
                  text2: 'Monkey',
                ),
                NewPadding(
                  image1: 'assets/turtle.png',
                  text1: 'Turtle',
                  image2: 'assets/fox.png',
                  text2: 'Fox',
                ),
                NewPadding(
                  image1: 'assets/cat.png',
                  text1: 'Cat',
                  image2: 'assets/dog.png',
                  text2: 'Dog',
                ),
                NewPadding(
                  image1: 'assets/bird.png',
                  text1: 'Bird',
                  image2: 'assets/fox.png',
                  text2: 'Fox',
                ),
                NewPadding(
                  image1: 'assets/fish.png',
                  text1: 'Fish',
                  image2: 'assets/owl.png',
                  text2: 'Owl',
                ),
              ],
            )
            ],
          ),
         )
          ],
        ),
      ),
    );
  }
}

class NewPadding extends StatelessWidget {
  final String image1;
  final String text1;
  final String image2;
  final String text2;

  const NewPadding({
    super.key,
    required this.image1,
    required this.text1,
    required this.image2,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
                color: Colors.yellow.shade200,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 0),
                  )
                ]),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage(image1),
                  ),
                ),
                Text(
                  text1,
                  style: TextStyle(color: Colors.black87, fontSize: 15),
                )
              ],
            ),
          ),
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
           color: Colors.yellow.shade200,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 0),
                  )
                ]),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage(image2),
                  ),
                ),
                Text(
                  text2,
                  style: TextStyle(color: Colors.black87, fontSize: 15),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
