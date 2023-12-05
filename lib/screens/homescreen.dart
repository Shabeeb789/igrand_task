import 'package:flutter/material.dart';
import 'package:igrand/screens/detailpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    TextEditingController position = TextEditingController();
    TextEditingController description = TextEditingController();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                controller: name,
                decoration: InputDecoration(
                  labelText: "Enter Your Name",
                  hintText: "Enter Your Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: const OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                controller: position,
                decoration: InputDecoration(
                  labelText: "Enter Your Job",
                  hintText: "Enter Your Job",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: const OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: description,
                decoration: InputDecoration(
                  labelText: "why do you choose this job",
                  hintText: "why do you choose this job",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: const OutlineInputBorder(),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailPage(
                  name: name.text.toUpperCase(),
                  job: position.text.toUpperCase(),
                  description: description.text,
                ),
              ));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
