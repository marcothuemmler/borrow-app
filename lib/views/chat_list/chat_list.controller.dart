import 'package:borrow_app/services/routing/routes.dart';
import 'package:borrow_app/services/storage/secure_storage.service.dart';
import 'package:borrow_app/views/chat/chat.model.dart';
import 'package:borrow_app/views/chat_list/chat_list.model.dart';
import 'package:borrow_app/views/chat_list/chat_list.service.dart';
import 'package:borrow_app/views/chat_list/chat_list.view.dart';
import 'package:go_router/go_router.dart';

class ChatListControllerImplementation extends ChatListController {
  ChatListControllerImplementation({
    ChatListModel? model,
    required ChatListService chatListService,
    required SecureStorageService storageService,
    required GoRouter router,
  })  : _chatListService = chatListService,
        _storageService = storageService,
        _router = router,
        super(
          model ??
              const ChatListModel(
                isLoading: false,
                hasError: false,
                chats: [],
              ),
        ) {
    _init();
  }

  final ChatListService _chatListService;
  final SecureStorageService _storageService;
  final GoRouter _router;

  void _init() async {
    state = state.copyWith(isLoading: true, hasError: false);
    try {
      final response = await _chatListService.loadMyChatRooms();
      state = state.copyWith(chats: response, isLoading: false);
    } catch (error) {
      state = state.copyWith(hasError: true, isLoading: false);
    }
  }

  @override
  void navigateToChat({required String chatRoomId}) async {
    final userId = await _storageService.read(key: "user-id");
    final ids = chatRoomId.split("|");
    final itemId = ids.elementAt(0);
    final ownerId = ids.elementAt(1);
    final otherUserId = ownerId == userId ? ids.elementAt(2) : ownerId;
    final item = MessageItemModel(id: itemId, ownerId: ownerId);
    _router.pushNamed(
      chatRoute.name,
      extra: item,
      pathParameters: {"userId": otherUserId},
    );
  }
}
