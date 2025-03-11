class UserModel {
  final String name;
  final String profileImageUrl;

  UserModel({required this.name, required this.profileImageUrl});
}

class StoryModel {
  final UserModel user;
  final String statusText; // e.g. "الحمد لله دائماً وأبداً"

  StoryModel({required this.user, required this.statusText});
}

class ChatModel {
  final UserModel user;
  final String lastMessage;
  final String time; // e.g. "3:00 ص"

  ChatModel({
    required this.user,
    required this.lastMessage,
    required this.time,
  });
}

final List<StoryModel> dummyStories = [
  StoryModel(
    user: UserModel(
      name: 'Mohammed',
      profileImageUrl:
          'https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?cs=srgb&dl=pexels-justin-shaifer-501272-1222271.jpg&fm=jpg', // placeholder
    ),
    statusText: 'الحمد لله دائماً وأبداً',
  ),
  StoryModel(
    user: UserModel(
      name: 'Meto BaSha',
      profileImageUrl:
          'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
    ),
    statusText: '🎉',
  ),
  StoryModel(
    user: UserModel(
      name: 'Mostafa',
      profileImageUrl:
          'https://media.istockphoto.com/id/1410538853/photo/young-man-in-the-public-park.jpg?s=612x612&w=0&k=20&c=EtRJGnNOFPJ2HniBSLWKzsL9Xf7GHinHd5y2Tx3da0E=',
    ),
    statusText: 'صورة شخصية',
  ),
  StoryModel(
    user: UserModel(
      name: 'Mohammed',
      profileImageUrl:
          'https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?cs=srgb&dl=pexels-justin-shaifer-501272-1222271.jpg&fm=jpg', // placeholder
    ),
    statusText: 'الحمد لله دائماً وأبداً',
  ),
  StoryModel(
    user: UserModel(
      name: 'Meto BaSha',
      profileImageUrl:
          'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
    ),
    statusText: '🎉',
  ),
  StoryModel(
    user: UserModel(
      name: 'Mostafa',
      profileImageUrl:
          'https://media.istockphoto.com/id/1410538853/photo/young-man-in-the-public-park.jpg?s=612x612&w=0&k=20&c=EtRJGnNOFPJ2HniBSLWKzsL9Xf7GHinHd5y2Tx3da0E=',
    ),
    statusText: 'صورة شخصية',
  ),
];

final List<ChatModel> dummyChats = [
  ChatModel(
    user: UserModel(
      name: 'Bilal Muhammed',
      profileImageUrl:
          'https://t3.ftcdn.net/jpg/02/00/90/24/360_F_200902415_G4eZ9Ok3Ypd4SZZKjc8nqJyFVp1eOD6V.jpg',
    ),
    lastMessage: '🤣',
    time: '2:10 am',
  ),
  ChatModel(
    user: UserModel(
      name: 'Ali Zaki',
      profileImageUrl:
          'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?cs=srgb&dl=pexels-simon-robben-55958-614810.jpg&fm=jpg',
    ),
    lastMessage: 'عيييب',
    time: '2:00 am',
  ),
  ChatModel(
    user: UserModel(
      name: 'Ahmed Samir',
      profileImageUrl:
          'https://st.depositphotos.com/2117297/2195/i/450/depositphotos_21952931-stock-photo-attractive-man.jpg',
    ),
    lastMessage: '👍',
    time: '11:50 am',
  ),
  ChatModel(
    user: UserModel(
      name: 'Mohamed H Elshikh',
      profileImageUrl:
          'https://media.istockphoto.com/id/2172317014/photo/happy-hispanic-man-working-on-laptop-at-home.jpg?s=1024x1024&w=is&k=20&c=G6P05vFtvAhlnbHrad7zdkk7EUN-SwaFH7eIpgvHWwc=',
    ),
    lastMessage: 'اي',
    time: '3:15 am',
  ),
  ChatModel(
    user: UserModel(
      name: 'Esraa',
      profileImageUrl:
          'https://plus.unsplash.com/premium_photo-1690407617542-2f210cf20d7e?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fHww',
    ),
    lastMessage: 'اي دا',
    time: '3:00 am',
  ),
  // Add more if needed...
];
