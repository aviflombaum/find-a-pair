Planning a Find a Pair App

Sprint 1:
GET /register
  should present a sign up form
  users have an email

POST /users
  create the user in database, maybe validation

-----

GET /login
  present a login form
POST /login
  create their session and redirect

  1. tell them who they are logged in as
  
  2. You forgot to build a logout - Done
  3. create a protected page

GET /pairs/new
 show a form to make a request of a pair
 enter the topic 

POST /pairs
  take the pair request data and save it to the DB

--  YOU ARE HERE

GET /pairs 
  show a list of all open pairs

GET /pairs/:id
  Show details of the pair request
  ACCEPT PAIR

PATCH /pairs/:id 


