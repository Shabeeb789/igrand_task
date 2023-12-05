import 'package:flutter/material.dart';

//detail page//

class DetailPage extends StatelessWidget {
  String name;
  String job;
  String description;
  DetailPage(
      {super.key,
      required this.name,
      required this.job,
      required this.description});

  @override
  Widget build(BuildContext context) {
    //create card with white color//
    return Card(
      margin: const EdgeInsets.all(16),
      child: Center(
        child: Column(
          children: [
            // use stack for using circleavathar in center of container//

            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 240,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red),
                ),
                Positioned(
                  bottom: -30,
                  left: 50,
                  right: 50,
                  child: CircleAvatar(
                    radius: 60,
                    child: Image.network(
                        "https://s.ndtvimg.com/images/entities/300/virat-kohli-967.png"),
                  ),
                )
              ],
            ),

            const SizedBox(
              height: 50,
            ),
            Text(
              "I am $name",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "I am $job",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                color: Colors.red,
                thickness: 3,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              description,
              style:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.add_a_photo),
                Icon(Icons.add_a_photo),
                Icon(Icons.add_a_photo),
              ],
            )
          ],
        ),
      ),
    );
  }
}
