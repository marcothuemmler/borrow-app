import 'package:borrow_app/views/chat_list/chat_list.model.dart';

abstract class ChatListService {
  Future<List<ChatRoomModel>> loadMyChatRooms();
}
