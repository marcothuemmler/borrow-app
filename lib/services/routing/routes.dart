class RouteDefinition {
  const RouteDefinition({required this.name, required this.path});
  final String name;
  final String path;
}

const homeRoute = RouteDefinition(name: "home", path: "/");
const loginRoute = RouteDefinition(name: "login", path: "login");
const signupRoute = RouteDefinition(name: "signup", path: "signup");
// TODO: pass user id for group selection
const groupsRoute = RouteDefinition(name: "groups", path: "groups");
const groupRoute = RouteDefinition(name: "group", path: "group/:groupId");
const itemRoute = RouteDefinition(name: "item", path: "item/:itemId");
const profileRoute = RouteDefinition(name: "profile", path: "profile");
