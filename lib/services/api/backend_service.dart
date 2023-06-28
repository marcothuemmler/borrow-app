import "package:borrow_app/views/authentication/auth.service.dart";
import "package:borrow_app/views/chat_list/chat_list.service.dart";
import "package:borrow_app/views/dashboard/item_list/item_list.service.dart";
import "package:borrow_app/views/dashboard/profile/categories_settings/categories_settings.service.dart";
import "package:borrow_app/views/dashboard/profile/group_settings/group_settings.service.dart";
import "package:borrow_app/views/dashboard/profile/profile_item_list/profile_item_list.service.dart";
import "package:borrow_app/views/group_selection/group_selection.service.dart";
import "package:borrow_app/views/invitation_list/invitation_list.service.dart";
import "package:borrow_app/views/item_detail/item_detail.service.dart";
import "package:borrow_app/views/item_editor/item_editor.service.dart";
import "package:borrow_app/views/profile_settings/profile_settings.service.dart";

abstract class BackendServiceAggregator
    implements
        AuthService,
        ItemListService,
        CategoriesSettingsService,
        GroupSelectionService,
        ItemDetailService,
        ChatListService,
        ProfileSettingsService,
        InvitationListService,
        ProfileItemListService,
        ItemEditorService,
        GroupSettingsService {}
