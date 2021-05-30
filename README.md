# THETA List Files Demonstration

## List Files and Thumbnails

![screenshot](docs/images/screenshot.gif)

## Show 360 Image with Navigation on Separate Screen

![full size image with navigation](docs/images/full_size_image.gif)

## Project Overview

Demonstration of using Flutter to communicate with the RICOH THETA 360 camera.
Flutter recently moved to 2.2 (after moving to 2.0 only a few months before)
and dart 2.13.  The demonstration code shows the use of the following technology
as a test to make sure the new packages still work with the RICOH THETA
and the most recent stable version of Flutter:

* Flutter 2.2
* Dart 2.13 with sound null-safety
* http: ^0.13.3 - network connection with camera
  * alternative dio not tested
* provider: ^5.0.0 - state management
  * alternatives: GetX, BLoC not tested
* panorama: ^0.4.1


## Project Goals

* provide example of scalable Flutter application architecture for RICOH THETA mobile apps
  * previous examples became too confusing as the number of commands increased
* show example of http request/response state management using provider
  * alternative state management approaches under consideration: BLoC and GetX
* produce sharable example of using thumbnails with the RICOH THETA SC2
  * there is a bug in the API
* improve separation of network and data processing code from the buttons in the gui
* test http package, which has some limitations for RICOH THETA development
  * digest authentication does not work with the THETA - not implemented in this app
  * motionJPEG livePreview does not work with the V and Z1 - not implemented

## Planned Educational Assets to Help Developers

* usable code example for a gentle introduction  to RICOH THETA SC2 API - this GitHub repo
* technical how to for SC2 API - article on theta360.guide site
* high level architectural concepts on how to structure RICOH THETA apps
with Flutter - blog. concepts usable for any app with http connection.


## Design Considerations

Choose the simplest and most common approach that meets the goals. For example,
MVC is one of the oldest and most common architectural paradigms.  Provider is the
easist and most state management approaches.

---

## App Architecture

[Discussion on Reddit](https://www.reddit.com/r/FlutterDev/comments/nl1qb5/architecture_patterns_for_flutter_applications/)

### Reference Template for MVC+S Architecture

[organization example from gskinner](https://blog.gskinner.com/archives/2020/09/flutter-state-management-with-mvcs.html)

![example strategy](https://blog.gskinner.com/wp-content/uploads/2020/09/ApplicationFrameHost_2020-09-09_09-07-401.png)

#### Controller

* application-level commands initiated from the button
* can be chained together from the button press

#### Services

* external API calls
* parse and return data
* services do not touch the model

### Classic MVC

![MVC classic](docs/images/mvc_class.png)

### Architecture for thumbnail project

Based on MVC+S as explained in gskinner article. Deviated from example by
putting data structure for thumbnail in commands to make encapsulation
of commands easier in the future.

![app architecture v3](docs/images/architecture_v4.png)

* model
  * ChangeNotifiers (provider)
* view
  * screens
  * sections (portion of screen)
  * components like buttons
* commands
  * build the data that is shown on the response window. send it to view.
  * individual commands that are triggered and populated from view
  * data structures used by commands
  * commands (utility functions) that are trigged by other commands
* services
  * fundamental http connection, error handling, common across multiple services such as get info, listFiles
    * manage http request and pass response to commands
  * service that combines multiple services into a single abstraction such as "get thumb bytes". Example: external service (such as http network) functionality through multiple http network requests, one request per thumbnail. 
  * Other examples of services not covered in this app
    * local storage (for example if on Windows desktop, the pictures folder)
    * firebase

## Reference

* [eBay Motors](https://medium.com/ebaytech/ebay-motors-state-management-bd85cfc602a2)
* [Design Patterns in Flutter- Part 1(MVC) by Yashwant Kumar](https://medium.com/flutterdevs/design-patterns-in-flutter-part-1-c32a3ddb00e2)
* [A Design Pattern for Flutter by Greg Perry](https://medium.com/follow-flutter/a-design-pattern-for-flutter-db6ccaea2413)
* [Flutter: State Management using an MVC+S Architecture by Shawn Blais, Sept 14, 2020](https://blog.gskinner.com/archives/2020/09/flutter-state-management-with-mvcs.html)
