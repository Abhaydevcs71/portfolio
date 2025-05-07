class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? gitLink;
  final String? iosLink;
  final String? androidLink;
  final String? webLink;
  final bool? isPersonal;

  ProjectUtils({
    this.iosLink,
    this.androidLink,
    this.webLink,
    required this.image,
    required this.title,
    required this.subtitle,
    this.gitLink,
    this.isPersonal,
  });
}

List<ProjectUtils> projects = [
  ProjectUtils(
    image: 'assets/images/stay.jpg',
    title: 'Stay',
    subtitle:
        'STAY is a Flutter-based residential renting platform with real-time Firebase updates, secure authentication, and an intuitive interface for effortless property discovery and booking.',
    gitLink: 'https://github.com/Abhaydevcs71/Buy-or-Sell/tree/production',
    isPersonal: false,
  ),
  ProjectUtils(
    image: 'assets/images/fudoh.jpg',
    title: 'FudOh',
    subtitle:
        'Fudoh, a Flutter-based food delivery app, uses Firebase for authentication and database management, includes Google Pay and Google Maps, and offers seamless operation across its admin panel, user, rider, and seller apps.',
    gitLink: 'https://github.com/Abhaydevcs71/food_delivery',
    isPersonal: false,
  ),
  ProjectUtils(
    image: 'assets/images/netflix.jpg',
    title: 'Netflix Clone',
    subtitle:
        'A Netflix clone app using Flutter, BLoC, and TDD. It enables seamless movie browsing with TMDB API data, offering detailed movie insights for an immersive cinematic experience.',
    gitLink: 'https://github.com/Abhaydevcs71/Netflix',
    isPersonal: false,
  ),
  ProjectUtils(
    image: 'assets/images/astrocast.jpg',
    title: 'Astrocast',
    subtitle:
        'Astrocast, a Flutter app using BLoC and TDD, offers daily zodiac insights and horoscopes. It ensures a seamless, responsive user experience with high-quality, reliable, and maintainable code.',
    gitLink: 'https://github.com/Abhaydevcs71/astrocast/tree/master',
    isPersonal: false,
  ),
  ProjectUtils(
    image: 'assets/images/weather.jpg',
    title: 'City Weather',
    subtitle:
        'A weather app built with Flutter, utilizing BLoC state management and the OpenWeather API. It provides real-time weather updates, forecasts, and detailed meteorological data for a seamless user experience.',
    gitLink: 'https://github.com/Abhaydevcs71/weather-app',
    isPersonal: false,
  ),
  ProjectUtils(
    image: 'assets/images/todo.jpg',
    title: 'Todo App',
    subtitle:
        'A Flutter todo app using Firebase for authentication and database management. It allows secure login, real-time CRUD operations, and task management with a user-friendly interface.',
    gitLink: 'https://github.com/Abhaydevcs71/todo',
    isPersonal: false,
  ),
  ProjectUtils(
    image: 'assets/images/readyShip.jpg',
    title: 'ReadyShip',
    subtitle:
        'Designed and developed a courier support app for seamless shipment booking and tracking on smartphones and PDA devices. Integrated third-party APIs to enhance functionality and streamline shipping operations. Built features tailored for courier companies to manage shipment deliveries efficiently.',
    androidLink:
        'https://play.google.com/store/apps/details?id=com.ragtech.readyship',
    isPersonal: true,
  ),
  ProjectUtils(
    image: 'assets/images/target.jpg',
    title: 'Target-CRM',
    subtitle:
        'Developed TARGET, a CRMsolution tailored for sales professionals to manage customer details and sales pipelines efficiently.Implemented lead management,Deals management,current location tracking and task monitoring feature.Integrated communication tools, including email, chat, and call functionalities, for seamless interactions.',
    androidLink:
        'https://play.google.com/store/apps/details?id=com.ragtech.target',
    isPersonal: true,
  )
];
