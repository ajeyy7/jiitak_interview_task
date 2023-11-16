import 'package:flutter/Material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Review_Img extends StatelessWidget {
  final String imgg;
  const Review_Img({super.key, required this.imgg});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 120,
            height:120,
            decoration: const BoxDecoration(
            ),
            child: Stack(
              children: [
                Image(image: AssetImage(imgg),
                fit: BoxFit.cover),
                const Positioned(
                    top: 8,
                    right: 8,
                    child: FaIcon(FontAwesomeIcons.x,size: 16,color: Colors.white,))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
