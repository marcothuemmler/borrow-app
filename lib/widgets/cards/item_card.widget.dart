import "package:borrow_app/views/dashboard/item_list/item_list.model.dart";
import "package:flutter/material.dart";

class ItemCard extends StatelessWidget {
  final void Function()? _onTap;
  final ItemListItemModel _item;

  const ItemCard({
    super.key,
    required void Function()? onTap,
    required ItemListItemModel item,
  })  : _onTap = onTap,
        _item = item;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: <BoxShadow>[
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
          onTap: _onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
            child: SizedBox(
              height: 90,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 90,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(7),
                        bottomLeft: Radius.circular(7),
                      ),
                      child: Image(
                        width: double.infinity,
                        height: double.infinity,
                        image: _item.imageUrl is String
                            ? NetworkImage(_item.imageUrl!)
                            : Image.asset("assets/images/default.jpg").image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "@${_item.owner.username}",
                          style: const TextStyle(
                            color: Colors.black54,
                            fontSize: 12,
                          ),
                          maxLines: 1,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          _item.name,
                          style: const TextStyle(fontWeight: FontWeight.w700),
                          maxLines: 1,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                _item.description ?? "",
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
