class RouteDefinition {
  const RouteDefinition({required this.name, required this.path});

  final String name;
  final String path;
}

const homeRoute = RouteDefinition(name: "home", path: "/");
const loginRoute = RouteDefinition(name: "login", path: "login");
const signupRoute = RouteDefinition(name: "signup", path: "signup");
const welcomeRoute = RouteDefinition(name: "welcome", path: "welcome");
const groupSelectionRoute =
    RouteDefinition(name: "group-selection", path: "groups");
const groupRoute = RouteDefinition(name: "group", path: ":groupId");
const itemDetailRoute = RouteDefinition(name: "item", path: "item/:itemId");
const profileRoute = RouteDefinition(name: "profile", path: "profileSettings");
const groupSettingsRoute =
    RouteDefinition(name: "groupSettings", path: "groupSettings");
const categorySettingsRoute =
    RouteDefinition(name: "categorySettings", path: "categorySettings");
const chatRoute = RouteDefinition(name: "chat", path: "chat/:userId");
const profileItemListRoute = RouteDefinition(
  name: "profileItemList",
  path: "profileItemList",
);
const itemEditorRoute =
    RouteDefinition(name: "itemEditor", path: "itemEditor/:itemId");
const newItemRoute =
    RouteDefinition(name: "newItemRoute", path: "newItemRoute");
const chatListRoute = RouteDefinition(name: "chatList", path: "chats");
