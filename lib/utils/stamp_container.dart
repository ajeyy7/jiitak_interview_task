import 'package:flutter/material.dart';

class Stamp_Container extends StatelessWidget {
  const Stamp_Container({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18,right: 18,top: 15,bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: 240,
            width: 350,
            decoration: BoxDecoration(
                color: Colors.white,
              borderRadius: BorderRadius.circular(20)
            ),
            child: GridView.builder(

                itemCount: 15,

                gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/icons/verified.png"))
                      ),
                    ),
                  );
                })
          ),
          const Text('2 / 2枚目'),
        ],
      ),
    );
  }
}
