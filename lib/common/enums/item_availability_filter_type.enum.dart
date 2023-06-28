import "package:flutter/material.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";

enum ItemAvailabilityFilterType { showAvailable, showBorrowed, showAll }

Map<ItemAvailabilityFilterType, String> filterLocalizations({
  required BuildContext context,
}) {
  return <ItemAvailabilityFilterType, String>{
    ItemAvailabilityFilterType.showAll:
        AppLocalizations.of(context).allCategories,
    ItemAvailabilityFilterType.showAvailable:
        AppLocalizations.of(context).available,
    ItemAvailabilityFilterType.showBorrowed:
        AppLocalizations.of(context).borrowedItems,
  };
}
