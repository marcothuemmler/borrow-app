class RouteDefinition {
  const RouteDefinition({required this.name, required this.path});
  final String name;
  final String path;
}

const homeRoute = RouteDefinition(name: "home", path: "/");
const loginRoute = RouteDefinition(name: "login", path: "login");
const signupRoute = RouteDefinition(name: "signup", path: "signup");
const groupsRoute = RouteDefinition(name: "groups", path: "groups");
const groupRoute = RouteDefinition(name: "group", path: "group");
const itemRoute = RouteDefinition(name: "item", path: "item");
const profileRoute = RouteDefinition(name: "profile", path: "profile");
