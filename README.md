# INActors
Exercise:
Design and develop an iOS (Swift) application that allows to search for an actor by Name (eg Adrien Brody) and list the films in which he have participated, in order chronological.

Development:
App name: INActos
Design: this app is designed with a tab bar that has two items, the first one has an intro to the app an the second one is a navigation controller that contain two views, a search view and a description view, the search view has a search bar in which is entered the actor name an a table that shows the results, this table have been set up with a reusable cell that allows open the description view 

Tecnichal solution: 
1. Design of the structure described in the Design topic
2. Class RequestTMDB: this class allows make a request to themoviedb api saving the results in an array of dictionaries
3. Class ActorsTableViewController: here the array of dictionaries that come from RequestTMDB class is read through the search bar and the results are showed into the table
4. Class ActorsCellViewController: contains the elements definition to the reusable cell of the ActorsTableViewController
5. Class ActorsDescriptionViewController: this class receive the movies listed according the selected actor and shows those results in order chronological in a table, with the movie poster an release date 
6. Class MoviesCellViewController: contains the elements definition to the reusable cell of the ActorsDescriptionViewController
7. Class AboutAppViewController: app introduction
