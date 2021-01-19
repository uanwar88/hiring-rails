# README

## Candidate instructions
- Review the existing source code and take note of patterns that are in use.
- Create a migration to store a twitter handle on the user model.
- Create an API endpoint that takes the ID of the twitter_handle and returns the last 10 tweets using provided twitter gem.
- Includes rspec tests for the new requests.
  
## Bonus
- Make the number of tweets returned depend on a query param.
- Create an api to return all twitter handles and the number of times we've fetched their data.

## Addendum
### To test signin
- Create your user via Rails console
- `User.create(email: 'test@hellowalla.com', password: 'test', password_confirmation: 'test', first_name: 'Test', last_name: 'User')`
- Test authentication via curl
- `curl -X POST "http://localhost:3000/login" -H 'Content-Type: application/x-www-form-urlencoded; charset=utf-8' -d "user[email]=test@hellowalla.com&user[password]=test"`
- Response Authorization header will include JWT token. For example: `Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIxIiwic2NwIjoidX`