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

--  Sprint 3 - Completing 

GET /pairs/:id
  Show details of the pair request
  ACCEPT PAIR


GET /pairs 
  show a list of all open pairs
  - how do know if a pair is open?
  - how do we only show open pairs in the view

PATCH /pairs/:id 

-- Sprint 4 - NEXT SPRINT

  Navigational Links - X
  Authentication / Passwords
    - passwords implemented but no password confirmation on registration


  Put something on homepage. Not surprise. - x
  
  We've added Titles to Pairs
  And we've added description
  1. update the forms with the new fields
  2. update the controller create action to work.
  3. add validation of length to title
  4. update the form to show the errors.


-- SPRINT 5 - START HERE
  REVIST 
    Some validation
    2. You can't accept a pair with yourself.

  --

  Show me my pair requests
  Show me who accepted my pair request

  How do we help facilitate the people actually pairing?
    - Scheduling a time
    - Posting times that the requestor is open for pairing
    - Estimate of how long you want to pair for?
    - Difficulty
    - Immediacy

  Admin/See All Pairs, Open, Closed

What about a frontend?
https://html5up.net/

strong_params
form_for(@user)
form_for(@pair)

Perhaps use Devise/Omniauth/Auth.net later.

Ideas for Logged in Homepage
  - Recently added requests
  - Tagging requests
  Show me my pair requests
  Show me who accepted my pair request  

-- Sprint 5 -
  Notify people that their pair was accepted

  Unpair themselves

-- Theme


----
Requestor should have to "accept" the respondor => status to pair
Profile - skill level, some stuff, github, linked, twitter

generate zoom meetings or something else...

twilio txt'ing reminders...

pairs details
  language
  skill 
  requested time
  concept / project
  lab / module
  github for code / repl.it
sort by

### Big refactor
many pair_responses but maybe limit





