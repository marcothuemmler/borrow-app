## Borrow.app - Your private swap meet

### Introduction

"borrow.app", an application developed for the mobile applications lecture at Constance University Of Applied
Sciences.

Borrow app, as the name suggests, is an app that allows people to borrow things. People can create groups within their
community to be able to see what things other people are offering, and offer their own.

### Installation

* Install Flutter following the steps in [this resource](https://docs.flutter.dev/get-started/install)

* Run flutter pub get to install the dependencies.

```bash
flutter pub get
```

* Run flutter gen-l10n to generate localization files

```bash
flutter gen-l10n
```

* This project communicates with a [NestJS API](https://nestjs.com). You can configure the API_URL in the projects .env
  file located in the assets directory. A working instance of the API can be found
  at https://borrow-api-marcothuemmler.vercel.app/ </br>

    * <span style="color:#DC5000; font-weight:bold;font-style:italic">Note: Due to limitations of the hosting service,
      the WebSockets needed for the in-app chat unfortunately don't currently work on the public instance. Read more
      <a href="https://vercel.com/guides/do-vercel-serverless-functions-support-websocket-connections">here</a>
      </span>

    * **The API repository can be found [here](https://github.com/marcothuemmler/borrow-api)**

* Create a .env file in the projects assets directory. See .env.template for assistance

### Usage

* Run flutter run -d <YOUR_DEVICE_ID>. You can also use your IDE to run the project. Check
  out [this page](https://docs.flutter.dev/tools) for information about your preferred IDE.

```bash
flutter run -d <YOUR_DEVICE_ID>
```

### Architecture

This project is based on the MVC+S design pattern, which is itself based on the classic MVC pattern. The main difference
from MVC is that it adds a service layer. This leads to higher decoupling of the different layers of the application.

- **Model**: Holds the state of the application. The model is used in the view layer to display relevant information to
  the user, and manipulated by the controller layer.

- **View**: Describes the UI using the model and provides an interface for the user to interact with the controller
  layer.

- **Controller**: The controller layer holds the various commands which represent the business login of the application.
  These commands are used to manipulate the state of the application.

- **Service**: The service layer provides a way of communicating with external data sources, such as the applications
  backend API.

### Technologies used

* Riverpod

* go_router

* dio

* freezed

* flutter secure storage

* flutter_localizations

* intl

* Socket.IO

### Contributors

* Marco Thümmler
* Johannes Wirbser

### License

This project is available for use under the [MIT license](LICENSE)