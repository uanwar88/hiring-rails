# README

## Candidate instructions
- Review the existing source code and take note of patterns that are in use.
- Add rspec coverage for the existing user model
- Add rspec coverage for the existing user controller as a request spec
- Create a migration to store a twitter handle on the user model.
- Create an API endpoint that takes the ID of the twitter_handle and returns the last 10 tweets using provided twitter gem.
- Includes rspec tests for the new requests.
  
## Bonus
- Make the number of tweets returned depend on a query param.
- Create an api to return all twitter handles and the number of times we've fetched their data.

## Addendum
### To test signin
- Create your user via Rails console
* `User.create(email: 'test@hellowalla.com', password: 'test', password_confirmation: 'test', first_name: 'Test', last_name: 'User')`
- Test authentication via curl
- Response Authorization header will include JWT token. For example: `Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIxIiwic2NwIjoidX`