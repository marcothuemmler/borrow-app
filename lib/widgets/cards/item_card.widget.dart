import "package:borrow_app/common/extensions/widget_extensions.dart";
import "package:borrow_app/views/dashboard/item_list/item_list.model.dart";
import "package:borrow_app/widgets/various_components/image_placeholder.widget.dart";
import "package:flutter/material.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";

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
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color:
                _item.isActive ? Colors.black12 : Colors.black.withOpacity(.1),
            offset: const Offset(0, 3),
            blurRadius: 6,
          ),
        ],
      ),
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      child: Card(
        color: _item.isActive
            ? Colors.white
            : Theme.of(context).scaffoldBackgroundColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        margin: EdgeInsets.zero,
        elevation: 0,
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          onTap: _onTap,
          child: Padding(
            padding: const EdgeInsets.all(3),
            child: SizedBox(
              height: 85,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 85,
                    height: 85,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.horizontal(
                        left: Radius.circular(7),
                        right: Radius.circular(3.5),
                      ),
                      child: Stack(
                        fit: StackFit.expand,
                        children: <Widget>[
                          _item.imageUrl is String
                              ? Image.network(
                                  _item.imageUrl!,
                                  width: double.infinity,
                                  height: double.infinity,
                                  fit: BoxFit.cover,
                                  errorBuilder: (_, __, ___) {
                                    return const ImagePlaceholder(
                                      size: 60,
                                      iconData: Icons.image_outlined,
                                    );
                                  },
                                  loadingBuilder: imageLoadingBuilder,
                                )
                              : const ImagePlaceholder(
                                  size: 60,
                                  iconData: Icons.image_outlined,
                                ),
                          if (!_item.isActive)
                            ColoredBox(
                              color: Colors.white60,
                              child: Center(
                                child: Transform.rotate(
                                  angle: -.2,
                                  child: Text(
                                    AppLocalizations.of(context).isBorrowed,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.blueAccent,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        ],
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
