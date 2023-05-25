import 'package:borrow_app/views/dashboard/item_list/item_list.model.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final void Function()? onTap;
  final ItemModel item;

  const ItemCard({super.key, required this.onTap, required this.item});

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
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        margin: EdgeInsets.zero,
        elevation: 0,
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
            child: SizedBox(
              height: 90,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(7),
                      bottomLeft: Radius.circular(7),
                    ),
                    child: Image(
                      image: AssetImage("assets/images/default.jpg"),
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "@${item.owner.username}",
                          style: const TextStyle(
                            color: Colors.black54,
                            fontSize: 12,
                          ),
                          maxLines: 1,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          item.name,
                          style: const TextStyle(fontWeight: FontWeight.w700),
                          maxLines: 1,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                item.description ?? "",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                softWrap: false,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
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
      ),
    );
  }
}
