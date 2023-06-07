# top-cat

### Features
Top cat is a simple application that allows the user to see the most liked pictures of cats. It consists on a single scrollable screen. Beware! They are so cute! Make sure not to spend too much time in the scroll of doom zone -but in case you did, nothing should break, right?

### Architecture
The application uses VIPER architecture being the modules
- *Presenter*: recieves view actions and connects all modules
- *Interactor*: stores the data (in our case the list of movies)
- *DataManager*: does the API calls and hadles data to the Interactor
- *Entity*: class that encapsulates the data and performs minor adjustments
- *View*: recieves actions from the user and Entities to populate itself
- *Wireframe*: is responsible for creating modules and navigation
