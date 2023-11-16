import 'package:flutter/material.dart';

class Job_Page extends StatefulWidget {
  const Job_Page({super.key});

  @override
  State<Job_Page> createState() => _Job_PageState();
}

class _Job_PageState extends State<Job_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Job"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.black54,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              const Icon(Icons.add)
            ],
          ),
        ],
      ),
    );
  }
}
