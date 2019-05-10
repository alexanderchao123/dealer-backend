# Deal-It Backend

This is the backend for Deal-It. This serves as the API for the frontend to make requests.

## Run instructions
Note: Run the PostgreSQL application before creating and migrating the database

In the terminal:
1. Clone the repository by typing ```git clone https://github.com/alexanderchao123/dealer-backend.git```
2. ```cd``` into the repository
3. Run: ```bundle install```
4. Make sure PostgreSQL application is open
5. Run: ```rails db:create``` to create the database our application will be using
6. Run: ```rails db:migrate``` to migrate our tables
7. Once the database is initialized, run: ```rails server``` to start the server
8. Once the backend is up and running, go to the [frontend](https://github.com/alexanderchao123/dealer-frontend) and follow the run instructions

## Future Improvements
1. Create a user model and setup the association between the user and the decks, meaning the user will have many decks and a deck belongs to the user.
2. Add JWT authentication, so the user will be able to log in.
