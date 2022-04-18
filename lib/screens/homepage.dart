import 'package:flutter/material.dart';
import 'package:pet_application/helper/helper.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const Padding(
            padding: EdgeInsets.all(18.0),
            child: Text(
              "Hi Raddit\nGood Morning!",
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
                // fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(25.0),
                image: const DecorationImage(
                  alignment: Alignment.centerRight,
                  image: AssetImage("assets/cat.png"),
                )),
            padding: const EdgeInsets.all(12.0),
            margin: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Join the\nCommunity",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 120,
                  height: 30,
                  child: MaterialButton(
                    color: Colors.white,
                    shape: const StadiumBorder(),
                    child: const Text(
                      "Join Now",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 18.0, vertical: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Category",
                  style: TextStyle(
                    color: Color(0xff464646),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                    color: Colors.grey,
                    // fontSize: 20,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 120,
            child: ListView.builder(
              itemCount: category.length,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Column(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          alignment: Alignment.center,
                          child: Image.asset(
                            "assets/${category[index]["image"]}",
                            height: 50,
                            color: selectedIndex == index
                                ? kAccentColor
                                : Colors.grey,
                            width: 50,
                          ),
                          decoration: BoxDecoration(
                            color: selectedIndex == index
                                ? kPrimaryColor
                                : kAccentColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        const SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          category[index]["name"],
                          style: TextStyle(
                            color: selectedIndex == index
                                ? kPrimaryColor
                                : Colors.black,
                            fontSize: 18,
                            fontWeight: selectedIndex == index
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 18.0, vertical: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Nearby Veterinary",
                  style: TextStyle(
                    color: Color(0xff464646),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                    color: Colors.grey,
                    // fontSize: 20,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 18.0),
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            height: 100,
            decoration: BoxDecoration(
              color: kAccentColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/female.png",
                  ),
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Dr.Ariyo Hartono",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "Veterinary Dentist",
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.payment,
                                color: kPrimaryColor,
                              ),
                              const SizedBox(
                                width: 6.0,
                              ),
                              Text(
                                "Rp 75.000",
                                style: TextStyle(
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 6.0,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: kPrimaryColor,
                              ),
                              const SizedBox(
                                width: 6.0,
                              ),
                              Text(
                                "1.8 KM",
                                style: TextStyle(
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 18.0),
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            height: 100,
            decoration: BoxDecoration(
              color: kAccentColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/male.png",
                  ),
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Dr.Christine",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "General Veterinary",
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.payment,
                                color: kPrimaryColor,
                              ),
                              const SizedBox(
                                width: 6.0,
                              ),
                              Text(
                                "Rp 80.000",
                                style: TextStyle(
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 6.0,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: kPrimaryColor,
                              ),
                              const SizedBox(
                                width: 6.0,
                              ),
                              Text(
                                "2.1 KM",
                                style: TextStyle(
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
