import "package:flutter/material.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";

class InvitationListItem extends StatelessWidget {
  const InvitationListItem({
    super.key,
    required String groupName,
    String? groupDescription,
    required void Function() onTapJoin,
    required void Function() onTapDelete,
  })  : _groupName = groupName,
        _groupDescription = groupDescription,
        _onTapJoin = onTapJoin,
        _onTapDelete = onTapDelete;

  final String _groupName;
  final String? _groupDescription;
  final void Function() _onTapJoin;
  final void Function() _onTapDelete;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: ListTile(
        leading: const Icon(Icons.group),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(_groupName),
            if (_groupDescription is String) Text(_groupDescription!),
          ],
        ),
        trailing: PopupMenuButton<ListTile>(
          icon: const Icon(Icons.more_vert),
          itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem<ListTile>(
                onTap: _onTapJoin,
                child: ListTile(
                  title: Text(AppLocalizations.of(context).joinGroup),
                ),
              ),
              PopupMenuItem<ListTile>(
                onTap: _onTapDelete,
                child: ListTile(
                  title: Text(AppLocalizations.of(context).deleteInvitation),
                ),
              ),
            ];
          },
        ),
      ),
    );
  }
}
