<p align="center">
  <a href="https://flutter.io/">
    <img src="https://flutter.dev/assets/flutter-lockup-c13da9c9303e26b8d5fc208d2a1fa20c1ef47eb021ecadf27046dea04c0cebf6.png" alt="Logo" width=200 height=72>
  </a>

  <h3 align="center">UBA Flutter Redux Architecture</h3>

  <p align="center">
    This is the flagship flutter redux architecture
  </p>
</p>

[![Codemagic build status](https://api.codemagic.io/apps/5eb2dacdbfb8fa2fe2dcc5c5/5eb2dacdbfb8fa2fe2dcc5c4/status_badge.svg)](https://codemagic.io/apps/5eb2dacdbfb8fa2fe2dcc5c5/5eb2dacdbfb8fa2fe2dcc5c4/latest_build)

## Table of contents

- [Quick start](#quick-start)
- [What's included](#whats-included)
- [Project structure](#project-structure)
- [Bugs and feature requests](#bugs-and-feature-requests)
- [Contributing](#contributing)
- [Creators](#creators)
- [Thanks](#thanks)
- [Copyright and license](#copyright-and-license)

## Quick start

This is a normal flutter app. You should follow the instructions in the [official documentation](https://flutter.io/docs/get-started/install).

## What's included

* Fetch todos

## Project structure
### **This project is divided into three main parts: `redux`, `views`, and `utils`**

> `main`: The **main** (*entry point*) is the entry point for the application.

#### 1- redux: 

##### Language: Dart

The redux is responsible for the business logic of the app. It is used by the views.

The structure of **redux** is as follows: `-lib/redux:`

>`/actions` : The `Action` carry the information in their payload and pass it to reducers. In Dart programming language the actions can be represented by different classes.

>`/models` : Models are the basic blocks of the application, they usually reflect the fields of the tables on the Backend.

>`/reducers` : Reducers receive the information through actions and implement the business logic layer to handle data and generate the next state of the application.

>`/services` : Services are the classes that communicate to our backend API, they usually house the requests.

> `/state` : The state is a representation of the application generic data like User State.


## 2- Views:

#### Language: Dart

The main components of **Views** are structured as follows:
> `/components`: This folder contains all the components that are specific but used across multiple features. Components are usually widgets like dialogs, buttons, textfields.

> `/routes`: This folder handles all routing within the application.

> `/screens`: The screens are the UI representations for every feature in the aplication


## 3- Utils:

#### Language: Dart

The main components of **Utils** are application wide utilities like color converter and validators.


## Bugs and feature requests

Have a bug or a feature request? Please first read the [issue guidelines](https://gitlab.com/ubainnovate/flutter_redux_architecture/-/blob/master/CONTRIBUTING.md) and search for existing and closed issues. If your problem or idea is not addressed yet, [please open a new issue](https://gitlab.com/ubainnovate/flutter_redux_architecture/-/issues/new).

## Contributing

Please read through our [contributing guidelines](https://gitlab.com/ubainnovate/flutter_redux_architecture/-/tree/master/CONTRIBUTING.md). Included are directions for opening issues, coding standards, and notes on development.


## Creators

**Gerrard Ezeugwa for Uba Innovation Lab**

- <https://github.com/gerrarde>

## Thanks

Thanks to all contributors and their support:

## Copyright and license

Code and documentation copyright 2020 the creator. Code released under the [MIT License](https://gitlab.com/ubainnovate/flutter_redux_architecture/-/tree/master/CONTRIBUTING/LICENSE).

Enjoy :metal:
