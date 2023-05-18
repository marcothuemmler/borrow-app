import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final void Function()? onTap;

  const ItemCard({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 6),
            blurRadius: 20,
          ),
        ],
      ),
      margin: const EdgeInsets.symmetric(vertical: 13, horizontal: 20),
      child: Card(
        elevation: 0,
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          onTap: onTap,
          // child: Padding(
          // padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
          child: SizedBox(
            height: 90,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Image(
                  image: AssetImage("assets/images/default.jpg"),
                  fit: BoxFit.contain,
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "@Username",
                      style: TextStyle(color: Colors.black54, fontSize: 11),
                      maxLines: 1,
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Item name",
                      style: TextStyle(fontWeight: FontWeight.w700),
                      maxLines: 1,
                    ),
                    Text(
                      "Item description",
                      maxLines: 1,
                    ),
                  ],
                ),
                const Spacer(),
                // IconButton(
                //   padding: EdgeInsets.zero,
                //   onPressed: () {},
                //   icon: const Icon(
                //     Icons.more_horiz,
                //   ),
                //   visualDensity: VisualDensity.compact,
                //   splashRadius: 20,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
