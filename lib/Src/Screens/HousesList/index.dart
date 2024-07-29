import 'package:flutter/material.dart';
class HousesListPage extends StatelessWidget {
  const HousesListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
              itemCount: 4,
              itemBuilder:(context,index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                color: Colors.yellow,
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                      color: Colors.black,
                    )),
                    Expanded(
                        flex: 1,
                        child: Container(
                      color: Colors.blueAccent,
                    ))
                  ],
                ),
              ),
            );
          }
          )
          ),
        ),
      );
  }
}
