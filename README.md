# Deal-It Backend

This is the backend for Deal-It.

## Run instructions
1. Clone the repository by typing ```git clone https://github.com/alexanderchao123/dealer-backend.git```
2. ```cd``` into the repository
3. Run: ```bundle install``` in the terminal
4. Make sure PostgreSQL application is open
5. Run: ```rails db:create``` in the terminal to create the database our application will be using
6. Run: ```rails db:migrate``` in the terminal to migrate our tables
7. Once the database is initialized, run: ```rails s``` to start the server

## Future Improvements
Create a user and setup the association between the user and the decks, meaning the user will have many decks and a deck belongs to the user. Add authentication so the user will be able to log in, so that only the creator of the deck can draw from the deck.
