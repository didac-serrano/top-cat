# top-cat

### Features
Top cat is a simple application that allows the user to see the most liked pictures of cats. It consists on a single scrollable screen. Beware! They are so cute! Make sure not to spend too much time in the scroll of doom zone -but in case you did, nothing should break, right?

### Architecture
The application uses a sort of MVVM architecure using Factory for dependency injection
- *ViewModel*: is the central class, recieves outputs from services, does some business logic
- *View*: has a reference to ViewModel to populate itself, also responsible for navigation (we used SwiftUI NavigationStack).
- *Service*: does the API calls and hadles data to the ViewModel
- *Entity*: class that encapsulates the data
