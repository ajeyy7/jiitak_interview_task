import 'package:flutter/Material.dart';

class Red_chk_Box extends StatelessWidget {
  const Red_chk_Box({super.key, required this.textt});
  final String textt;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              color: Colors.orange.shade700,
                borderRadius: BorderRadius.circular(2),
                border: Border.all(color: Colors.orange.shade700)
            ),
            child:const Center(child: Icon(Icons.check,size: 15,color: Colors.white,)),
          ),
          const SizedBox(width: 6),
          Text(textt)
        ],
      ),
    );
  }
}
