This project was created to show how Linq, a digital business card platform, could send contact details to a CRM system in this case, a made-up one called AcmeCRM.

I built a lightweight backend server using Ruby on Rails that simulates how this integration might work in the real world. It does a few important things:
•	Accept contact details from users and store them.
•	Sends that contact info into a "CRM" (in this case, a simulated one). 
•	Allows you to view saved contact information. 
•	Uses a basic form of security so that only authorized users can access the system

//What I Actually Built //

The backend system includes:
1. Two API Endpoints
These are the "doors" you can use to talk to the backend:
POST /contacts: Adds a new contact. You send in their first name, last name, email, and company name.
GET /contacts: Returns a list of all the contacts that have been added.
2. Basic Token Authentication
Before the server accepts a request, it checks for a token in the request header. If the token is missing or incorrect, it denies access. In this case, the token is hardcoded as "Ravikanti". It’s a simplified version of how real systems use API keys or JWTs.
3. Real Database (PostgreSQL)
Instead of saving data temporarily in memory (which would be lost if the server restarts), I used PostgreSQL a real database to permanently store the contact information.
4. Basic HTML Form
To demonstrate how a website might send contact data, I created a simple HTML form that lets you submit contact information directly to the server. It’s not fancy, but it shows how a frontend and backend could work together.

//Simulated Security//

Although this project doesn’t use advanced security methods like encryption or third-party logins, it does include a basic security check. Any request to the API must include an Authorization header with the value Ravikanti. If not, the system responds with a 401 Unauthorized error.

//Assumptions Made During the Project//

To keep the project simple and focused, I made a few assumptions:
•	AcmeCRM doesn’t really exist  I created a fake version of it just to simulate how it would work. 
•	I focused only on two operations: adding and viewing contacts. I used a fixed token for security instead of building a full user authentication system. 
•	I created a simple HTML form instead of a full frontend built with React or another framework.
These choices helped keep the project lightweight and easy to understand.

//Extra Features I Included//

In addition to the basics, I added a few nice-to-have features:
•	Used PostgreSQL for persistent data storage.
•	Created a simple HTML form for testing
•	Tested all functionality using Postman, a tool developers use to interact with APIs

//What I Would Improve with More Time//

If I had more time to work on this, here’s what I’d upgrade:
•	Use JWT (JSON Web Tokens) for more secure and flexible authentication. 
•	Add data validation so the system checks for missing or invalid info before saving. 
•	Create a nicer, interactive frontend using tools like React or Vue.js
These upgrades would make the system more secure, reliable, and user-friendly closer to what you'd expect in a production-level app.

