
#Desktop App Quest
This is a desktop app that takes screenshots of your screen.
### Feature Implemented:
1. Start, Stop and Pause Timer
2. Recored headshot and screenshots of entire screen every 10 sec
3. Display records
4. Display Timer

###### App Architecture and Folder Structure
The code of the app implements clean architecture to separate the UI, domain and data layers with a features-first approach for folder structure.
```
lib
├── core
│   ├── extension
├── features
│   ├── timer
│   │   ├── application
│   │   │    ├── cubit
│   │   ├── infrastructure
│   │   │    ├── models
│   │   │    ├── repository
│   │   └── presentation
│   │   │    ├── widgets (custom component)
│   │   │    ├── screen.dart
└── main.dart
```


https://github.com/SaujanBindukar/desktop_quest/assets/34705432/99a61c1a-a61b-4625-9f81-ce87f8cf832e

###### Screenshots
<img width="908" alt="Screenshot 2024-06-13 at 11 47 54 PM" src="https://github.com/SaujanBindukar/desktop_quest/assets/34705432/a00b22b6-5b39-485b-ba18-d0878e7265cd">
<img width="908" alt="Screenshot 2024-06-13 at 11 48 08 PM" src="https://github.com/SaujanBindukar/desktop_quest/assets/34705432/704793cf-928c-43c1-8346-6c5cc6e49a54">





