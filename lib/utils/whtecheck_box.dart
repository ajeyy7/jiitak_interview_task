import 'package:flutter/Material.dart';

class Wht_ChkBx extends StatelessWidget {
  final String textt;
  const Wht_ChkBx({super.key, required this.textt});

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
                borderRadius: BorderRadius.circular(2),
                border: Border.all(color: Colors.grey)
            ),
          ),
          const SizedBox(width: 6),
          Text(textt)
        ],
      ),
    );
  }
}
