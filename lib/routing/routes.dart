const RootRoute = "/home";

const OverViewPageDisplayName = "Overview";
const OverViewPageRoute = "/overview";

const CommandsPageDisplayName = "Commands";
const CommandsPageRoute = "/commands";

const AboutPageDisplayName = "About";
const AboutPageRoute = "/about";

class MenuItem {
  final String name;
  final String route;

  MenuItem(this.name, this.route);
}

List<MenuItem> sideMenuItems = [
  MenuItem(OverViewPageDisplayName, OverViewPageRoute),
  MenuItem(CommandsPageDisplayName, CommandsPageRoute),
  MenuItem(AboutPageDisplayName, AboutPageRoute)
];
