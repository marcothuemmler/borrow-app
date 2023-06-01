class RouteDefinition {
  const RouteDefinition({required this.name, required this.path});
  final String name;
  final String path;
}

const homeRoute = RouteDefinition(name: "home", path: "/");
const loginRoute = RouteDefinition(name: "login", path: "login");
const signupRoute = RouteDefinition(name: "signup", path: "signup");
const welcomeRoute = RouteDefinition(name: "welcome", path: "welcome");
const groupSelectionRoute = RouteDefinition(name: "group-selection", path: "group-selection");
const groupRoute = RouteDefinition(name: "group", path: "group/:groupId");
const itemDetailRoute = RouteDefinition(name: "item", path: "item/:itemId");
const profileRoute = RouteDefinition(name: "profile", path: "profile");
const groupSettingsRoute = RouteDefinition(name: "groupSettings", path: "groupSettings");
