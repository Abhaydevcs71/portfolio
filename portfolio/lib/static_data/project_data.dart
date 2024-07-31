class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? gitLink;
  final String? iosLink;
  final String? androidLink;
  final String? webLink;

  ProjectUtils({
    this.iosLink,
    this.androidLink,
    this.webLink,
    required this.image,
    required this.title,
    required this.subtitle,
    this.gitLink,
  });
}

List<ProjectUtils> projects = [
  ProjectUtils(
      image: 'assets/images/stay.jpg',
      title: 'Stay',
      subtitle:
          'STAY is a Flutter-based residential renting platform with real-time Firebase updates, secure authentication, and an intuitive interface for effortless property discovery and booking.',
      gitLink: 'https://github.com/Abhaydevcs71/Buy-or-Sell/tree/production'),
  ProjectUtils(
    image: 'assets/images/fudoh.jpg',
    title: 'FudOh',
    subtitle:
        'Fudoh, a Flutter-based food delivery app, uses Firebase for authentication and database management, includes Google Pay and Google Maps, and offers seamless operation across its admin panel, user, rider, and seller apps.',
    gitLink: 'https://github.com/Abhaydevcs71/food_delivery',
  ),
  ProjectUtils(
    image: 'assets/images/netflix.jpg',
    title: 'Netflix Clone',
    subtitle:
        'A Netflix clone app using Flutter, BLoC, and TDD. It enables seamless movie browsing with TMDB API data, offering detailed movie insights for an immersive cinematic experience.',
    gitLink: 'https://github.com/Abhaydevcs71/Netflix',
  ),
  ProjectUtils(
    image: 'assets/images/astrocast.jpg',
    title: 'Astrocast',
    subtitle:
        'Astrocast, a Flutter app using BLoC and TDD, offers daily zodiac insights and horoscopes. It ensures a seamless, responsive user experience with high-quality, reliable, and maintainable code.',
    gitLink: 'https://github.com/Abhaydevcs71/astrocast/tree/master',
  ),
  ProjectUtils(
      image: 'assets/images/weather.jpg',
      title: 'City Weather',
      subtitle:
          'A weather app built with Flutter, utilizing BLoC state management and the OpenWeather API. It provides real-time weather updates, forecasts, and detailed meteorological data for a seamless user experience.',
      gitLink: 'https://github.com/Abhaydevcs71/weather-app'),
  ProjectUtils(
    image: 'assets/images/todo.jpg',
    title: 'Todo App',
    subtitle:
        'A Flutter todo app using Firebase for authentication and database management. It allows secure login, real-time CRUD operations, and task management with a user-friendly interface.',
    gitLink: 'https://github.com/Abhaydevcs71/todo',
  )
];
