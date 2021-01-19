json.user do |json|
  json.partial! "api/v1/account/user", user: current_user
end
