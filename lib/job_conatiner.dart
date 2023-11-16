import 'package:flutter/Material.dart';

class Partime_Jobsz extends StatelessWidget {
  final String imgpath;
  const Partime_Jobsz({super.key, required this.imgpath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 9),
      child: Card(
        elevation: 1,
        shadowColor: Colors.grey,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(14),
                topRight: Radius.circular(14),
              ),
              child: Stack(children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(1),
                    image: DecorationImage(
                      image: AssetImage(imgpath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 15,
                  left: -2,
                  child: Container(
                    padding:
                        const EdgeInsets.only(left: 30, right: 20, top: 2, bottom: 2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.red.shade400,
                    ),
                    child: Text(
                      "本日まで",
                      style: TextStyle(color: Colors.grey.shade100),
                    ),
                  ),
                )
              ]),
            ),
            Container(
              height: 240,
              width: double.infinity,
              decoration: const BoxDecoration(),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）",
                        style: TextStyle(fontSize: 17),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 2, bottom: 2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: Colors.orange.shade50,
                            ),
                            child: const Text(
                              "介護付き有料老人ホーム",
                              style: TextStyle(color: Colors.orange),
                            ),
                          ),
                          const Text('¥ 6,000',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    const Text("5月 31日（水）08 : 00 ~ 17 : 00",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500)),
                    const Text("北海道札幌市東雲町3丁目916番地17号",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500)),
                    const Text("交通費 300円",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("住宅型有料老人ホームひまわり倶楽部",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.grey)),
                          Icon(Icons.favorite_border,color: Colors.grey,size: 40)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
