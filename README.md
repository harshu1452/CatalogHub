# CatalogHub - Simple Item REST API

This is a simple Java Spring Boot REST API for managing items using an in-memory data store (ArrayList).

## Features
- Add a new item
- Get an item by ID
- Input validation using Bean Validation
- In-memory storage (no database)

## Tech Stack
- Java 17
- Spring Boot
- Maven

## How to Run Locally

1. Clone the repository
2. Open the project in IntelliJ or any IDE
3. Run the main class: `CatalogHubApplication`
   or use:
   mvn spring-boot:run
4. The app will start on:
   http://localhost:8085 (or your configured port)

## API Endpoints

### Add Item
POST /api/items

Request Body (JSON):
```json
{
  "name": "iPhone 15",
  "description": "Latest Apple phone",
  "price": 80000
}


{
    "id": 2,
    "name": "iPhone 14",
    "description": "One earlier model Apple phone",
    "price": 70000.0
}