require 'addressable/uri'
require 'rest-client'

# url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/users.json',
#   query_values: {
#     'some_category[a_key]' => 'another value'
#   }
# ).to_s
#
# puts RestClient.get(url)

def update_user
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users/5.json'
  ).to_s

  begin
    puts RestClient.put(
    url, user: {username: 'Jade', admin: true})
  rescue RestClient::Exception
    "Status Code: 422"
  end
end

def create_user
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users.json'
  ).to_s

  begin
    puts RestClient.post(
    url,
    {user: {name: "Bobert", email: "gizmo@gizmo"}}
    )
  rescue RestClient::Exception
    "Status Code: 422"
  end

end

def destroy_user
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users/1.json'
  ).to_s

  begin
    puts RestClient.delete(url)
  rescue RestClient::Exception
    "Nope"
  end
end

update_user
