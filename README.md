# Linq x AcmeCRM Integration

This project simulates how Linq, a digital business card platform, can integrate with a fictional CRM called **AcmeCRM**. It demonstrates how contact data can be pushed into a CRM system when a user scans a QR code or meets someone in person.

Built as part of the Sales Engineer assessment, this project focuses on clarity, simplicity, and technical empathy — key values at Linq.

## Features

- Accepts contact data via `POST /contacts`
- Retrieves contact data via `GET /contacts`
- Translates CRM-specific fields (e.g., `acme_first_name`) to a normalized format (e.g., `firstName`)
- Implements token-based authentication (simulated)
- Uses a real database (PostgreSQL) to store contacts
- Includes a simple HTML form to simulate a frontend submission
- All functionality tested using Postman

## TechStack

Backend Framework: Ruby on Rails
Database: PostgreSQL
Testing: Postman
Frontend (Optional): Basic HTML form

# API Endpoints
### POST /contacts

Adds a new contact.

Headers:
Authorization: Ravikanti
Content-Type: application/json


Sample Request: 
{
  "acme_first_name": "Roshini",
  "acme_last_name": "Ravikanti",
  "acme_email": "roshini@ravikanti.com",
  "acme_company": "Linq"
}

Sample Response:
{
  "status": "success",
  "contact": {
    "firstName": "Roshini",
    "lastName": "Ravikanti",
    "email": "roshini@ravikanti.com",
    "company": "Linq"
  }
}

### GET /contacts
Headers:
Authorization: Ravikanti

Sample response:
[
  {
    "firstName": "Roshini",
    "lastName": "Ravikanti",
    "email": "roshini@ravikanti.com",
    "company": "Linq"
  }
]

## Authentication

Authorization: Ravikanti

If the token is missing or incorrect, the API will return: 401 Unauthorized

## Field mapping

AcmeCRM Field	             Normalized Field
acme_first_name	             firstName
acme_last_name	             lastName
acme_email	                   email
acme_company	                 company

## How to Run the Project Locally

# Clone the repository
git clone https://github.com/rravikanti123/linq_acmecrm.git
cd linq_acmecrm

# Install dependencies:
bundle install

# Create and migrate the database:
rails db:create
rails db:migrate

# Start the Rails server:
rails s

# Open Postman and test the endpoints.

## Loom Video Walkthrough

https://www.loom.com/share/5c59ea0292ef4f199ea2051901377853?sid=7fac10f7-eb99-4b2a-a7b7-3053007f0fea

## project structure:

├── app/
│   └── controllers/
│       └── contacts_controller.rb
├── config/
│   └── routes.rb
├── public/
│   └── form.html
├── db/
│   └── migrate/
├── integration-notes.md
├── README.md

## Assumptions & Tradeoffs

AcmeCRM is fictional — no real API calls are made
Only `POST` and `GET` operations are implemented for simplicity
Token authentication is mocked using a fixed string (`Ravikanti`)
A basic HTML form was used instead of a full frontend 

## What I'd Improve with More Time

Use JWT authentication instead of a static token
Add input validation and error handling
Implement `PUT` and `DELETE` for full CRUD
Build a React-based frontend UI
Add automated testing













