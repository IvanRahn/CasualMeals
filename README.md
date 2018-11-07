#### Short Answer Questions

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
