import 'package:bonyanaldoha/utils/constants.dart';

class DrawerListModel {
  final int id;
  String title;
  final String iconpath;
  DrawerListModel({this.id = 0, this.title = "", this.iconpath = ""});
}

List<DrawerListModel> drawerMenueList = [
  DrawerListModel(id: 0, title: "Home", iconpath: "$iconpath/Home.svg"),
  DrawerListModel(id: 1, title: "Buy", iconpath: "$iconpath/Buy.svg"),
  DrawerListModel(id: 2, title: "Rent", iconpath: "$iconpath/Rent.svg"),
  DrawerListModel(id: 3, title: "Commercial", iconpath: "$iconpath/Sell.svg"),
  // DrawerListModel(
  //     id: 4,
  //     title: "List a Property",
  //     iconpath: "$iconpath/CreateAListing.svg"),
  DrawerListModel(id: 5, title: "Favorite", iconpath: "$iconpath/Home.svg"),
  DrawerListModel(id: 6, title: "Compare", iconpath: "$iconpath/Home.svg"),
  DrawerListModel(id: 7, title: "Membership", iconpath: "$iconpath/Home.svg"),
  DrawerListModel(id: 8, title: "Blog", iconpath: "$iconpath/Blog.svg"),
  DrawerListModel(id: 9, title: "Help", iconpath: "$iconpath/Help.svg"),
  DrawerListModel(id: 10, title: "About", iconpath: "$iconpath/Home.svg"),
  // DrawerListModel(id: 11, title: "Settings", iconpath: "$iconpath/Home.svg"),
  DrawerListModel(
      id: 12, title: "Terms of Use", iconpath: "$iconpath/Terms_Of_Use.svg"),
  DrawerListModel(
      id: 13, title: "Contact Us", iconpath: "$iconpath/Contact _Us.svg"),
  DrawerListModel(id: 14, title: "Agents", iconpath: "$iconpath/Agent.svg"),
];
