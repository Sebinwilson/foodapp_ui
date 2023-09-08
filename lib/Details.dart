import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool _isFavorite = false;
  bool isDetailsSelected = true;
  bool isReservedSelected = false;
  bool showFullText = false;
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 60,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_outlined,
              color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.favorite,
              color: _isFavorite ? Colors.orange : Colors.grey,
            ),
            onPressed: () {
              setState(() {
                _isFavorite = !_isFavorite;
              });
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 400,
              width: 400,
              child: ClipRRect(
                child: Image.asset(
                  'assets/images/Burg.jpg',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 30, bottom: 5),
                  child: Text(
                    'Beef Burger',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 30, bottom: 10),
                  child: Row(
                    children: [
                      Text(
                        'Steamed Cheeseburger',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 130),
                      Text(
                        '\$5.50',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isDetailsSelected = true;
                            isReservedSelected = false;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary:
                              isDetailsSelected ? Colors.orange : Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Text('Details'),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                isDetailsSelected = false;
                                isReservedSelected = true;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              primary: isReservedSelected
                                  ? Colors.orange
                                  : Colors.grey,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: const Text('Reserved'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                    height: 10), // Add spacing before the text section
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      Text(
                        'What makes the steamed cheeseburger different from typical cheeseburgers is the way it is prepared',
                        maxLines: showFullText ? null : 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 98, 98, 98),
                        ),
                      ),
                      showFullText
                          ? const Text(
                              'What makes the steamed cheeseburger different from typical cheeseburgers is the way it is prepared. Instead of being fried in a pan or grilled on a grill, it is steamed in a stainless-steel cabinet containing trays that hold either a hamburger patty or a chunk of cheese.',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color.fromARGB(255, 114, 112, 112),
                              ),
                            )
                          : Row(
                              children: [
                                TextButton(
                                  onPressed: () {
                                    setState(() {
                                      showFullText = true;
                                    });
                                  },
                                  child: const Text(
                                    'Show more',
                                    style: TextStyle(
                                      color: Colors.orange,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                const Text(
                                  '...',
                                  style: TextStyle(
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 236, 232, 232),
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(20),
                      right: Radius.circular(20),
                    ),
                  ),
                  width: 150,
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: IconButton(
                              onPressed: () {
                                setState(() {
                                  if (quantity > 1) {
                                    quantity--;
                                  }
                                });
                              },
                              icon: const Icon(Icons.remove))),
                      Text(
                        quantity.toString(),
                        style: const TextStyle(fontSize: 20),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: IconButton(
                            color: Colors.black,
                            onPressed: () {
                              setState(() {
                                quantity++;
                              });
                            },
                            icon: const Icon(Icons.add)),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(20), right: Radius.circular(20)),
                  ),
                  width: 165,
                  height: 60,
                  child: const Center(
                    child: Text(
                      'Add to Cart',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
