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
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  color: Colors.blueAccent.withOpacity(0.1),
                  height: 200,
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
                            padding: EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Houser Tittle",style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700
                                ),
                                ),
                                const SizedBox(height: 25,),
                                Text("Houser price",style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600
                                ),
                                ),
                                Text("Houser size",style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600
                                ),
                                ),
                                Text("Houser parking",style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600
                                ),
                                ),
                                Text("Number of rooms",style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600
                                ),
                                ),
                                Text("Houser Year",style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600
                                ),),
                                Text("House Location",style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600
                                ),)
                              ],
                            ),
                      ))
                    ],
                  ),
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
