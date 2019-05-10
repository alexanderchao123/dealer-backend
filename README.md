# Deal-It Backend

This is the backend for Deal-It.

## Run instructions
Note: Run the PostgreSQL application before creating and migrating the database

In the terminal:
1. Clone the repository by typing ```git clone https://github.com/alexanderchao123/dealer-backend.git```
2. ```cd``` into the repository
3. Run: ```bundle install``` in the terminal
4. Make sure PostgreSQL application is open
5. Run: ```rails db:create``` in the terminal to create the database our application will be using
6. Run: ```rails db:migrate``` in the terminal to migrate our tables
7. Once the database is initialized, run: ```rails s``` to start the server
8. Once the backend is up and running, go to the [frontend](https://github.com/alexanderchao123/dealer-backend) and follow the run instructions

## Future Improvements
1. Create a user model and setup the association between the user and the decks, meaning the user will have many decks and a deck belongs to the user.
2. Add JWT authentication, so the user will be able to log in.
