import 'package:card_swiper/card_swiper.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

import 'chat_screen.dart';

class MessengerScreen extends StatefulWidget {
  const MessengerScreen({super.key});

  @override
  State<MessengerScreen> createState() => _MessengerScreenState();
}

class _MessengerScreenState extends State<MessengerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 20,
        title: const Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage("assets/images/photo_5776066023789805967_y.jpg"),
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              "Chats",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  child: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.camera_alt)),
                ),
                const SizedBox(
                  width: 8,
                ),
                CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    child: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.edit)))
              ],
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 60,
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey[200],
                    filled: true,
                    hintText: "Search",
                    prefixIcon: const Icon(Icons.search),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 80,
                child: ListView.separated(
                    clipBehavior: Clip.none,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => const CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 33,
                      child: CircleAvatar(
                        radius: 31,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 28,
                          backgroundImage:
                          AssetImage("assets/images/photo_5776066023789805967_y.jpg"),
                        ),
                      ),
                    ),
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 12,
                    ),
                    itemCount: 15),
              ),
              const SizedBox(
                height: 8,
              ),
              ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    String name = Faker().person.name();
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChatScreen(
                              image: "assets/images/photo_5776066023789805967_y.jpg",
                              name: name,
                            ),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          const Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundImage:
                                AssetImage("assets/images/photo_5776066023789805967_y.jpg"),
                              ),
                              PositionedDirectional(
                                  end: 3,
                                  bottom: 3,
                                  child: CircleAvatar(
                                    radius: 8,
                                    backgroundColor: Colors.white,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.green,
                                      radius: 5,
                                    ),
                                  ))
                            ],
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                name,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              Text(
                                "I Love it",
                                style: TextStyle(
                                    color: Colors.grey[600], fontSize: 12),
                              ),
                            ],
                          ),
                          Spacer(),
                          const Icon(Icons.verified_outlined)
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: 10)
            ],
          ),
        ),
      ),
    );
  }
}