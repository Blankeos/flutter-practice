class ChatModel {
  String name;
  String message;
  String time;
  String avatarUrl;

  ChatModel(
      {required this.name,
      required this.message,
      required this.time,
      required this.avatarUrl});
}

List<ChatModel> dummyData = [
  ChatModel(
    name: "Carlo Taleon",
    message: "Hey Flutter, you are so amazing!",
    time: "7:34 AM",
    avatarUrl: "https://carlo.vercel.app/imgs/carlo_about.jpg",
  ),
  ChatModel(
    name: "Von Xyphrus Keith",
    message: "haha I'm learning Flutter rn.",
    time: "4:00 PM",
    avatarUrl:
        "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bWFsZSUyMHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80",
  ),
  ChatModel(
    name: "Alejah Sardiniola",
    message: ":O really??",
    time: "2:12 PM",
    avatarUrl:
        "https://image.shutterstock.com/image-photo/stock-photo-profile-picture-of-smiling-millennial-asian-girl-isolated-on-grey-wall-background-look-at-camera-250nw-1836020740.jpg",
  ),
];
