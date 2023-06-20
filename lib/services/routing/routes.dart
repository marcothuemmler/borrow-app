class RouteDefinition {
  const RouteDefinition({required this.name, required this.path});

  final String name;
  final String path;
}

const RouteDefinition homeRoute = RouteDefinition(name: "home", path: "/");
const RouteDefinition loginRoute =
    RouteDefinition(name: "login", path: "login");
const RouteDefinition signupRoute =
    RouteDefinition(name: "signup", path: "signup");
const RouteDefinition welcomeRoute =
    RouteDefinition(name: "welcome", path: "welcome");
const RouteDefinition groupSelectionRoute =
    RouteDefinition(name: "group-selection", path: "groups");
const RouteDefinition groupRoute =
    RouteDefinition(name: "group", path: ":groupId");
const RouteDefinition itemDetailRoute =
    RouteDefinition(name: "item", path: "item/:itemId");
const RouteDefinition profileRoute =
    RouteDefinition(name: "profile", path: "profileSettings");
const RouteDefinition groupSettingsRoute =
    RouteDefinition(name: "groupSettings", path: "groupSettings");
const RouteDefinition categorySettingsRoute =
    RouteDefinition(name: "categorySettings", path: "categorySettings");
const RouteDefinition chatRoute =
    RouteDefinition(name: "chat", path: "chat/:userId");
const RouteDefinition profileItemListRoute =
    RouteDefinition(name: "profileItemList", path: "profileItemSettings");
const RouteDefinition itemEditorRoute =
    RouteDefinition(name: "itemEditor", path: ":groupId/itemEditor/:itemId");
const RouteDefinition newItemRoute =
    RouteDefinition(name: "newItemRoute", path: ":groupId/newItemRoute");
const RouteDefinition chatListRoute =
    RouteDefinition(name: "chatList", path: "chats");
const RouteDefinition invitationsRoute =
    RouteDefinition(name: "invitations", path: "invitations");
