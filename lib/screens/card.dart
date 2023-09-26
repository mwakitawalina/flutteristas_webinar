import 'package:flutter/material.dart';

class CardData {
  final String imagePath;
  final String title;
  final String amount;
  final String description;

  CardData({
    required this.imagePath,
    required this.title,
    required this.amount,
    required this.description,
  });
}

class CardScreen extends StatelessWidget {
  final List<CardData> cardDataList = [
    CardData(
      imagePath: "",
      title: "Add Card",
      amount: '',
      description: "",
    ),
    CardData(
      imagePath: "images/mastercard.png",
      title: "****2568",
      amount: '2390',
      description: "credit card",
    ),
    CardData(
      imagePath: "images/visa.png",
      title: "****5885",
      amount: '89067',
      description: "debit card",
    ),
  ];

  CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final cardWidth1 = screenWidth / 5;
    final cardWidth2 = screenWidth / 2;
    final cardWidth3 = screenWidth / 3;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(Icons.drag_indicator),
            ],
          ),
        ),
        actions: const [
          Row(
            children: [
              Icon(
                Icons.fiber_manual_record,
                size: 8,
              ),
              Icon(
                Icons.fiber_manual_record,
                size: 8,
              ),
              SizedBox(
                width: 16,
              ),
              CircleAvatar(
                backgroundImage: AssetImage("images/lina.jpg"),
              )
            ],
          )
        ],
      ),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "My Cards",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 200,
              child: SizedBox(
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: cardDataList.length,
                  itemBuilder: (context, index) {
                    final cardData = cardDataList[index];
                    double cardWidth;
                    Color cardColor;

                    if (index == 0) {
                      // First card with "Add Card" text
                      cardWidth = cardWidth1;
                      cardColor = const Color(0xFFFEEED7);
                      return SizedBox(
                        width: cardWidth,
                        height: 160,
                        child: Card(
                          elevation: 3.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Text(
                                  cardData.title,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    } else if (index == 1) {
                      cardWidth = cardWidth2;
                      cardColor = const Color(0xFF4D5085);
                    } else {
                      cardWidth = cardWidth3;
                      cardColor = const Color(0xFF7279E1);
                    }

                    return Padding(
                      padding: const EdgeInsets.all(8),
                      child: Card(
                        elevation: 3.0,
                        color: cardColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: SizedBox(
                          width: cardWidth,
                          height: 160,
                          child: Column(
                            children: [
                              Image.asset(
                                cardData.imagePath,
                                height: 20,
                                width: 40,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(height: 36.0),
                              Text(
                                cardData.title,
                                style: const TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 8.0),
                              Text(
                                cardData.amount,
                                style: const TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                cardData.description,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.0,
                                ),
                              ),
                              const SizedBox(height: 16.0),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: double.infinity,
              height: 298,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    const Icon(
                      Icons.maximize,
                      size: 64,
                      color: Color.fromRGBO(236, 235, 235, 1),
                    ),
                    //SizedBox(height: 2),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Transactions",
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 16),
                        Icon(
                          Icons.more_vert,
                          size: 26,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    // List with Image, Text, Space, and Text
                    Row(
                      children: [
                        Image.asset(
                          "images/amazon.jpg",
                          height: 50,
                          width: 60,
                        ),
                        const SizedBox(width: 12),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "15 June 2023",
                             style: TextStyle(
                              fontSize: 10,
                                color: Colors.black26,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text("Amazon",
                            style: TextStyle(
                              fontSize: 15,
                               fontWeight: FontWeight.bold
                            ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Text("310.00"),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "images/netflix.png",
                          height: 50,
                          width: 60,
                        ),
                        const SizedBox(width: 12),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "17 June 2023",
                             style: TextStyle(
                              fontSize: 10,
                                color: Colors.black26,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text("Netflix",
                            style: TextStyle(
                              fontSize: 15,
                               fontWeight: FontWeight.bold
                            ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Text("45.00"),
                      ],
                    ),
                     Row(
                      children: [
                        Image.asset(
                          "images/apple.png",
                          height: 50,
                          width: 60,
                        ),
                        const SizedBox(width: 12),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "24 June 2023",
                             style: TextStyle(
                              fontSize: 10,
                                color: Colors.black26,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text("ITunes",
                            style: TextStyle(
                              fontSize: 15,
                               fontWeight: FontWeight.bold
                            ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Text("35.00"),
                      ],
                    ),
                     
                    const SizedBox(height: 16),
                    // Text below the row
                    
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
