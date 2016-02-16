![RevTwo Logo](logo.png)

This Sample App demonstrates many of the key features of the RevTwo In-App Support Platform.   The application provides a very simple user interface that highlights the features of the platform and shows various RevTwo API calls in action.   Included in this sample are:

1. **Ticket Creation**:  RevTwo help requests are managed by tickets.   When a user requests help, a ticket is created that can be viewed on the Web UI.    Tickets can be created using the built-in form in the RevTwo library or via your own view utilizing the API calls directly.
2. **Screen Sharing**:  The RevTwo library provides automatic support for screen sharing within your application.   Screen sharing is built into the library and does not require any API calls to activate.  
3. **Logging**:   The sample app provides example usage of the RevTwo logging API.   The call syntax matches the iOS log call syntax to enable easy conversion of existing application log calls. 
4. **File Browsing**:  The sample app includes several files in the app’s documents directory that can be viewed from the Web Portal.   The RevTwo library has built in support for file browsing as well as upload and download of files and does not require any special app integration to function.
5. **SQLite Database Browsing**:  The sample app has built in database browsing.   Apps can have one or many SQLite databases within their app space. With the SQLite Database browser you can view tables, rows and fields from the Web UI.

To use the sample app, you will need to:

1. Download the RevTwo CocoaPod by running pod install on this project.
2. Create an account on [revtwo.com](http://revtwo.com/) and add your api key to the sample app.

see our [tutorial](http://revtwo.com/docs/index.php/tutorials/) for full instructions
