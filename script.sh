curl -X POST http://localhost:8080/users \
  -H "Content-Type: application/json" \
  -d '{
    "name": "Rajat",
    "email": "rajat@example.com"
  }'

  curl -X POST http://localhost:8080/users \
  -H "Content-Type: application/json" \
  -d '{
    "name": "Shubham",
    "email": "shubham@example.com"
  }'
