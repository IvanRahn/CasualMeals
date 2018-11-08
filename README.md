## Casual Meals

### A link (URL) to your published App
https://casualmeals.herokuapp.com/
### A link to your GitHub repository
https://github.com/IvanRahn/CasualMeals

### About the Project (Purpose definition)


### Functionality / features

### Screenshots
![image of application](https://github.com/IvanRahn/CasualMeals/blob/development/docs/application%20screenshots/screencapture-casualmeals-herokuapp-2018-11-08-14_41_42.jpg?raw=true)
![image of application](https://github.com/IvanRahn/CasualMeals/blob/development/docs/application%20screenshots/screencapture-casualmeals-herokuapp-edit-2018-11-08-14_43_32.jpg?raw=true)
![image of application](https://github.com/IvanRahn/CasualMeals/blob/development/docs/application%20screenshots/screencapture-casualmeals-herokuapp-my_meals-2018-11-08-14_42_15.jpg?raw=true)
![image of application](https://github.com/IvanRahn/CasualMeals/blob/development/docs/application%20screenshots/screencapture-casualmeals-herokuapp-transactions-2018-11-08-14_43_21.jpg?raw=true)

### Tech stack (e.g. html, css, deployment platform, etc)
  * html5 and css3
  * Foundation Frameworks
  * Ruby on Rails Framework
  * Javascript
  * Heroku
  * AWS - S3

### Instructions on how to setup, configure and use your App.
If you would like to see the code and test it out feel free to do so by following the below steps. Please note this is best performed on the terminal.

Navigate to a directory where you would like the repository to be stored at, then run the following commandline
    `git clone https://github.com/IvanRahn/CasualMeals.git`

From here navigate in your newly cloned directory 
    `cd CasualMeals`

Run the following line below to install the extensions/gems required for the application
    `bundle install`

We now need to create a database
    `rails db:create`

and then migrating them to the database
    `rails db:migrate`

Boot up the server 
    `rails s` or `rails server`

From here you can access the the application by typing the following web address in your browser
localhost:3000 - automatic!
    `*localhost:3000*`


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

4. Testing: Testing was completed via a checklist on a spreadsheet, which lists out certain scenarios a user could do and from there we would pass or fail the scenarios.

5. Launching: website is currently launched on heroku

### User stories
    * Ryan wants to list the food he is cooking
    * Garret wants to sign-up so that his details are saved
    * Ryan wants to list the food he is cooking
    * Gordon wants to sell his food consistently
    * Gordon wants to sell his food leftovers
    * Sinan wants to know more about the app
    * Jamie wants to sign up so that his details are saved
    * Garret would like to browse and find food he wants to order
    * Garret wants to be able to pay for food safely 
    * Garret would like to be able to order his food quickly
    * Adam would like to order food in bulk
    * Adam would like to order food consistently
    * Ryan wants to recieve feedback on his food
    * Jamie wants to notify his friends about the food he made
    * Jamie wants to specify how far he can deliver food himself
    * Ryan wants to have access to delivery drivers
    * Gordon wants to recieve payment for his food
    * Sinan would like to find cheap food
    * Ghalip would like to have options for healthy/non-allergic food
    * James would like to be able to find food by cuisines

### A workflow diagram of the user journey/s.


### Wireframes
![image of customer mobile version wireframe](https://github.com/IvanRahn/CasualMeals/blob/development/docs/wireframe/Customer%20View.png?raw=true)
![image of chef mobile version wireframe](https://github.com/IvanRahn/CasualMeals/blob/development/docs/wireframe/Chef%20View.png?raw=true)
![image of customer desktop wireframe](https://github.com/IvanRahn/CasualMeals/blob/development/docs/wireframe/Customer%20Desktop%20View.png?raw=true)
![image of chef desktop wireframe](https://github.com/IvanRahn/CasualMeals/blob/development/docs/wireframe/Chef%20Deskop%20View.png?raw=true)

### Database Entity Relationship Diagrams
![image of erb](https://github.com/IvanRahn/CasualMeals/blob/development/docs/erd/ERD.png?raw=true)

## Details of planning process

### Project plan & timeline
Project Start - 29/10/18 
Project End -  9/11/18

29/10/18 - User stories, planning wireframe and entity relationship diagrams (ERD)
30/10/18 - Developed basic authentication, models and their associations. Linking routes to their specified pages. Selected foundation as the framework to be used for styling. 
31/10/18 - Begin Transactional model and stripe payment implementation, foundation added to code
1/11/2018 - Navbar implemented into pages, stripe payment implementation and transactiontional model continues
2/11/18 - form verification for models start, AWS integrated into code
3/11/18 - foundation upgraded from 5 to 6, styling code begins
4/11/18 - flash messages added for login, styling continues
5/11/18 - fuzzy search and filter added
6/11/18 - sales history added, media queries integrated and meal cards added
7/11/18 - drop down filter button for mobile button added, search bar and query further extended, refactoring
8/11/18 - Testing application / debugging / refactoring and documentation
9/11/18 - Submission of Project

### Screenshots of Trello board(s)
![image of trello](https://github.com/IvanRahn/CasualMeals/blob/development/docs/trello%20screenshots/Screen%20Shot%202018-11-02%20at%209.27.03%20am.png?raw=true)
![image of trello](https://github.com/IvanRahn/CasualMeals/blob/development/docs/trello%20screenshots/Screen%20Shot%202018-11-02%20at%209.29.47%20am.png?raw=true)
![image of trello](https://github.com/IvanRahn/CasualMeals/blob/development/docs/trello%20screenshots/Screen%20Shot%202018-11-07%20at%202.24.46%20pm.png?raw=true)


### Short Answer Questions

1. What is the need (i.e. challenge) that you will be addressing in your project?
To build a platform to allow chefs (from any level) to provide a product/service to the market. 

2. Identify the problem you’re trying to solve by building this particular marketplace App? Why is it a problem that needs solving?
At the moment, there are many people happy to provide a food service (casually or on a full-time basis), however it is difficult for them to connect to potential customers. It’s a problem that needs solving as the market should allow for all levels of chefs.

3. Describe the project will you be conducting and how. your App will address the needs.
Our project will let chefs make food from home and list it on our App. It allow allow buyers to search for home-made food they would like to order and have it delivered. 

4. Describe the network infrastructure the App may be based on.
Our App will be deployed on Heroku and AWS is where our database will be stored. 

5. Identify and describe the software to be used in your App.
Heroku offers a Platform as a Service (PaaS). In comparison to a Infrastructure as a Service (IaaS), PaaS provides an environment to push code with existing basic configuration. This means we are able to deploy our App quicker and do not have to worry about manually setting up configuration, where it is a simple process of moving our app from a local system to Heroku using GIT.

AWS uses the Amazon Relationship Database Service (RDS), easy to set up, operate and scale a relational database in the cloud. RDS is compatible with six database engines, including Postgresql. 

6. Identify the database to be used in your App and provide a justification for your choice.
We will be using Postgresql as it the world’s most advanced open source database.

7. Identify and describe the production database setup (i.e. postgres instance).
8. Describe the architecture of your App.
Ruby on Rails (RoR) was the main framework used in our application. RoR follows the Model-View-Controller (MVC) architectural pattern. It also follows the rule of convention over configuration, which means that it takes some decision for you so you don't have to worry about these things.

9. Explain the different high-level components (abstractions) in your App.

10. Detail any third party services that your App will use.
Third party services that was utlised by our app is Stripe and AWS (Amazon Web Services).

    * Stripe allows individuals and businesses to recieve payments over the internet. Stripe provides the technical, fraud prevention, and banking infrastructure required to orpeate on-line payment systems. The reason for its use is that it allows for easy and secure payment and is easily integrated into our application for a speedy deployment.

    * AWS is a secure cloud services platform that offers users storage in their databases, content delivery, and other functionaility to help businesses scale and grow. AWS was used in our application to securely store images that is uploaded from our application.

    * Carrierwave Gem - a gem that provides a simple way to upload files from Ruby application, the gem was used to assist in uploading images to AWS

    * devise gem - a flexible authentication solution for based on warden. The devise gem was used to our application to assist in handling registering users and database authentication

    * geocoder gem - enhances webpages by presenting location relevant to the user, has the functionaility such as finding coordinates with street addresses or vice versa. The gem is used to help extract a users longitudinal and latitudinal coordinates when they input their address.

11. Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay, Airbnb).
Casual Meals data structure is similar to deliveroo and uberEats, where customers are able to purchase food from a supplier and suppliers are able to sell their foods. Casual Meals enables all users to be able to sign up whether they are a consumer (customer) or a supplier (chef). Chef's are able to upload their own meals and customers are able to view the meals cooked by the chef's for purchasing

12. Discuss the database relations to be implemented.

13. Describe your project’s models in terms of the relationships (active record associations) they have with each other.
14. Provide your database schema design.
15. Provide User stories for your App.
    * Ryan wants to list the food he is cooking
    * Garret wants to sign-up so that his details are saved
    * Ryan wants to list the food he is cooking
    * Gordon wants to sell his food consistently
    * Gordon wants to sell his food leftovers
    * Sinan wants to know more about the app
    * Jamie wants to sign up so that his details are saved
    * Garret would like to browse and find food he wants to order
    * Garret wants to be able to pay for food safely 
    * Garret would like to be able to order his food quickly
    * Adam would like to order food in bulk
    * Adam would like to order food consistently
    * Ryan wants to recieve feedback on his food
    * Jamie wants to notify his friends about the food he made
    * Jamie wants to specify how far he can deliver food himself
    * Ryan wants to have access to delivery drivers
    * Gordon wants to recieve payment for his food
    * Sinan would like to find cheap food
    * Ghalip would like to have options for healthy/non-allergic food
    * James would like to be able to find food by cuisines

16. Provide Wireframes for your App.
17. Describe the way tasks are allocated and tracked in your project.
Trello will be our main tool for managing the project, tasks will be allocated to team members and updated by the team member.

18. Discuss how Agile methodology is being implemented in your project.
Our project is based on user stories, an example would be "James would like to be able to find food by cuisines". Each story would then be split into tasks and this would determine what feature will be required to be implemented into our project and in this case a filter or search button would need to be implemented. 
Daily Stand-up meetings were put in place to provide individual updates including work progress and issues we are having, this also provided the team an opportunity to review the work and suggest any changes as required. Standing up helps us keep focused and on point. 

19. Provide an overview and description of your Source control process.
Team members will be working collaboratively on the same git repository as a contributer. One team member will create the git repository on a remote repository GitHub. Team members will develop branches as they work on new features on the new application, sub-branches can also be created if additional sub-features may be required. Features will be merged into a development branch for review. Once team members agree on the working feature the development branch is merged into the master branch.

20. Provide an overview and description of your Testing process.
21. Discuss and analyse requirements related to information system security.
Https
sql injections
data sanitaization
22. Discuss methods you will use to protect information and data.
A devise Ruby gem is being used as the gateway for our users to register and login, the Devise ruby gem uses another gem called BCrypt which is a password hashing function used to encrypt user passwords and store them in its encrypted state in our database. Our application is also deployed onto cloud application platform called Heroku, who praises themselves in their ability to protect customers from threats by applying security controls at every layer from physical to application.
23. Research what your legal obligations are in relation to handling user data.

