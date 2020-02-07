Planning a Find a Pair App

GET /register
  should present a sign up form

POST /users
  create the user in database, maybe validation

GET /login
  present a login form
POST /login
  create their session and redirect

GET /pairs/new
 show a form to make a request of a pair
 enter the topic 

POST /pairs
  take the pair request data and save it to the DB

GET /pairs 
  show a list of all open pairs

GET /pairs/:id
  Show details of the pair request
  ACCEPT PAIR

PATCH /pairs/:id 

