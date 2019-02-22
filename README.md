## Casual Meals


https://casualmeals.herokuapp.com/
https://github.com/IvanRahn/CasualMeals

### About the Project 

The purpose of the application is to develop a two sided marketplace platform where chefs can list and sell their meals and customers can view and purchase a chef's meal.

### Functionality / features
 * Search and Filter Button, fuzzy search and filter implemented to sort meals via cuisines, chefs or meal names
 * Geocoder, provides latitudinal and longitudinal coordinates to allow chefs to distribute their meals in a set radius.
 * Stripe payment system, secure payment system for users to pay for meals
 * AWS - S3, secure service to for chefs to upload images of their meals

### Screenshots
![image of application](https://github.com/IvanRahn/CasualMeals/blob/development/docs/application%20screenshots/screencapture-casualmeals-herokuapp-2018-11-08-14_41_42.jpg?raw=true)

![image of application](https://github.com/IvanRahn/CasualMeals/blob/development/docs/application%20screenshots/screencapture-casualmeals-herokuapp-edit-2018-11-08-14_43_32.jpg?raw=true)
![image of application](https://github.com/IvanRahn/CasualMeals/blob/development/docs/application%20screenshots/screencapture-casualmeals-herokuapp-my_meals-2018-11-08-14_42_15.jpg?raw=true)

![image of application](https://github.com/IvanRahn/CasualMeals/blob/development/docs/application%20screenshots/screencapture-casualmeals-herokuapp-transactions-2018-11-08-14_43_21.jpg?raw=true)

### Tech stack (e.g. html, css, deployment platform, etc)
  * html5 and css3
  * Foundation Framework
  * Ruby on Rails
  * Javascript
  * Heroku
  * AWS - S3

### Instructions on how to setup, configure and use your App.
If you would like to see the code and test it out feel free to do so by following the below steps. Please note this is best performed on the terminal.

Navigate to a directory where you would like the repository to be stored at, then run the following commandline

    git clone https://github.com/IvanRahn/CasualMeals.git

From here navigate in your newly cloned directory 

    cd CasualMeals

Run the following line below to install the extensions/gems required for the application

    bundle install

We now need to create a database

    rails db:create

and then migrating them to the database

    rails db:migrate

Boot up the server 

    rails s or rails server

From here you can access the the application by typing the following web address in your browser

    localhost:3000


## Design documentation

1. Goal: The purpose of the application was to develop a two sided marketplace platform where users can list their items to sell and users can purchase their items.

2. Scope: To design, build, deploy and present a working website where users can list and purchase items. 
    The project will need the following for the application:
 * Postgresql database in development and production
 * Have authentication for users
 * Restrictions on what users can see and edit
 * Uploading capabilities
 * Implementing a payment system
 * Deployed to Heroku
        
3. Visual Design: Much of our site design layout is based on deliveroo and uberEats with modifications. The modifications are based on our user stores which determine what features will be required for our application. The visual aspect was done through the use of a framework called Foundation.

4. Deployment: website is currently deployed on heroku

### Wireframes
![image of customer mobile version wireframe](https://github.com/IvanRahn/CasualMeals/blob/development/docs/wireframe/Customer%20View.png?raw=true)
![image of chef mobile version wireframe](https://github.com/IvanRahn/CasualMeals/blob/development/docs/wireframe/Chef%20View.png?raw=true)
![image of customer desktop wireframe](https://github.com/IvanRahn/CasualMeals/blob/development/docs/wireframe/Customer%20Desktop%20View.png?raw=true)
![image of chef desktop wireframe](https://github.com/IvanRahn/CasualMeals/blob/development/docs/wireframe/Chef%20Deskop%20View.png?raw=true)

### Database Entity Relationship Diagrams
Link to interactive ERD - https://dbdiagram.io/d/5be3db5714c9fe0014e4873e

![image of erb](https://github.com/IvanRahn/CasualMeals/blob/development/docs/erd/ERD.png?raw=true)

## Details of planning process

### Project plan & timeline
Project Start - 29/10/18 
Project End -  9/11/18

29/10/18 - User stories, planning wireframe and entity relationship diagrams (ERD)

30/10/18 - Developed basic authentication, models and their associations. Linking routes to their specified pages. Selected 
foundation as the framework to be used for styling. 

31/10/18 - Begin Transactional model and stripe payment implementation, foundation added to code

1/11/2018 - Navbar implemented into pages, stripe payment implementation and transactiontional model continues

2/11/18 - form verification for models start, AWS integrated into code

3/11/18 - foundation upgraded from 5 to 6, styling code begins

4/11/18 - flash messages added for login, styling continues

5/11/18 - fuzzy search and filter added, geocoding added

6/11/18 - sales history added, media queries integrated and meal cards added

7/11/18 - drop down filter button for mobile button added, search bar and query further extended, refactoring

8/11/18 - Testing application / debugging / refactoring and documentation

9/11/18 - Submission of Project

