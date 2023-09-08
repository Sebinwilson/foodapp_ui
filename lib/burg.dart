import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Details.dart';
import 'package:google_fonts/google_fonts.dart';

class Burg extends StatefulWidget {
  const Burg({Key? key});

  @override
  _BurgState createState() => _BurgState();
}

class _BurgState extends State<Burg> {
  int pageIndex = 0;
  String selectedButton = 'All'; // Default selected button
  bool isFavorite = false; // Heart icon state

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          toolbarHeight: 60,
          leading: ClipOval(
            child: Image.asset(
              'assets/images/harry.webp',
              width: 40,
              height: 40,
              fit: BoxFit.cover,
            ),
          ),
          title: const Text(''),
          actions: [
            IconButton(
              icon: const Icon(Icons.shopping_cart, color: Colors.black),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                            text: 'Choose\n',
                            style: TextStyle(color: Colors.black),
                          ),
                          TextSpan(
                            text: 'Your Favorite',
                            style: TextStyle(color: Colors.black),
                          ),
                          TextSpan(
                            text: ' Food',
                            style: TextStyle(color: Colors.orange),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(26, 146, 144, 144),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          width: 150,
                          child: const TextField(
                            decoration: InputDecoration(
                              hintText: 'Enter your items here',
                              prefixIcon: Icon(Icons.search),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.orange,
                        ),
                        child: IconButton(
                          icon: const Icon(
                            Icons.list_rounded,
                            color: Colors.white,
                            size: 35,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedButton = 'All';
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: selectedButton == 'All'
                            ? Colors.orange
                            : Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text(
                        'All',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedButton = 'Pizza';
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: selectedButton == 'Pizza'
                            ? Colors.orange
                            : Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text('Pizza'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedButton = 'Burger';
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: selectedButton == 'Burger'
                            ? Colors.orange
                            : Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text('Burger'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedButton = 'Taco';
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: selectedButton == 'Taco'
                            ? Colors.orange
                            : Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text('Taco'),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 19),
                Column(
                  children: [
                    const SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailsScreen()),
                              );
                            },
                            child: Container(
                              width: 200,
                              height: 200,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 5,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Stack(
                                alignment: Alignment
                                    .center, // Align content in the center
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 5),
                                        child: Image.asset(
                                          'assets/images/Burgernew.png',
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Text(
                                        'Beef Burger',
                                        style: GoogleFonts.asap(
                                          color: const Color.fromARGB(
                                              255, 0, 0, 0),
                                          fontSize: 18,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 20),
                                        child: Text(
                                          'Steamed Cheeseburger',
                                          style: GoogleFonts.asap(
                                            color: const Color.fromARGB(
                                                255, 0, 0, 0),
                                            fontSize: 13,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      const Padding(
                                        padding: EdgeInsets.only(right: 120),
                                        child: Text(
                                          '\$5.50',
                                          style: TextStyle(
                                            color: Colors.orange,
                                            fontSize:
                                                25, // Adjust the size if needed
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Positioned(
                                    top: 0,
                                    right: 0,
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          isFavorite = !isFavorite;
                                        });
                                      },
                                      child: Icon(
                                        isFavorite
                                            ? Icons.favorite
                                            : Icons.favorite_border,
                                        color: isFavorite
                                            ? Colors.orange
                                            : Colors.grey,
                                        size: 24,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 10,
                                    right: 10,
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.orange,
                                      ),
                                      child: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 20, // Adjust the size if needed
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 200,
                            height: 200,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 5,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Stack(
                              alignment: Alignment
                                  .center, // Align content in the center
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 5),
                                      child: Image.asset(
                                        'assets/images/Masala pizza.jpg',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Text(
                                      'Masala Pizza',
                                      style: GoogleFonts.asap(
                                        color:
                                            const Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 18,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Text(
                                        'Chicken Butter Masala',
                                        style: GoogleFonts.asap(
                                          color: const Color.fromARGB(
                                              255, 0, 0, 0),
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    const Padding(
                                      padding: EdgeInsets.only(right: 120),
                                      child: Text(
                                        '\$5.60',
                                        style: TextStyle(
                                          color: Colors.orange,
                                          fontSize:
                                              25, // Adjust the size if needed
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isFavorite = !isFavorite;
                                      });
                                    },
                                    child: Icon(
                                      isFavorite
                                          ? Icons.favorite
                                          : Icons.favorite_border,
                                      color: isFavorite
                                          ? Colors.orange
                                          : Colors.grey,
                                      size: 24,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  right: 10,
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.orange,
                                    ),
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 20, // Adjust the size if needed
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Nearest',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      'See more',
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 5),
                                  child: Image.asset(
                                    'assets/images/Burrito.JPG',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  'Burrito',
                                  style: GoogleFonts.asap(
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 18,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Text(
                                    'Surf and Turf',
                                    style: GoogleFonts.asap(
                                      color: const Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 5),
                                const Padding(
                                  padding: EdgeInsets.only(right: 120),
                                  child: Text(
                                    '\$5.10',
                                    style: TextStyle(
                                      color: Colors.orange,
                                      fontSize: 25,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              top: 0,
                              right: 0,
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isFavorite = !isFavorite;
                                  });
                                },
                                child: Icon(
                                  isFavorite
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  color:
                                      isFavorite ? Colors.orange : Colors.grey,
                                  size: 24,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 10,
                              right: 10,
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.orange,
                                ),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 5),
                                  child: Image.asset(
                                    'assets/images/Steak Sandwich.jpg',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  'Steak Sandwich',
                                  style: GoogleFonts.asap(
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 18,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Text(
                                    'Ribeye Steak Sandwich',
                                    style: GoogleFonts.asap(
                                      color: const Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 5),
                                const Padding(
                                  padding: EdgeInsets.only(right: 120),
                                  child: Text(
                                    '\$5.00',
                                    style: TextStyle(
                                      color: Colors.orange,
                                      fontSize: 25,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              top: 0,
                              right: 0,
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isFavorite = !isFavorite;
                                  });
                                },
                                child: Icon(
                                  isFavorite
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  color:
                                      isFavorite ? Colors.orange : Colors.grey,
                                  size: 24,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 10,
                              right: 10,
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.orange,
                                ),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          index: pageIndex,
          backgroundColor: const Color.fromARGB(255, 255, 252, 248),
          color: const Color.fromARGB(255, 255, 158, 1),
          animationDuration: const Duration(microseconds: 20),
          items: const <Widget>[
            Icon(
              Icons.home,
              size: 30,
            ),
            Icon(Icons.favorite, size: 30),
            Icon(Icons.qr_code_scanner_sharp),
            Icon(Icons.notifications, size: 30),
            Icon(Icons.person, size: 30),
          ],
          onTap: (index) {
            setState(() {
              pageIndex = index;
            });
          },
        ),
      ),
    );
  }
}
