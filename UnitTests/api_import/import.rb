require 'fileutils.rb'
require 'json.rb'
require 'net/https'
require 'uri'

operations = [{'servers' => 'detail'}, {'flavors' => 'detail'}, {'images' => 'detail'}];

@file_root = "../fixtures/responses"
@auth_url = url = URI.parse('https://auth.api.rackspacecloud.com/v1.0')
@x_auth_token = '';
@x_server_url = '';

accounts = []
accounts.push({:user => 'rackcloud07', :pass => '8bd642735860c898d27677a32c322a60'})

def authenticate(account)
  
  http = Net::HTTP.new(@auth_url.host, @auth_url.port)
  http.use_ssl = true
  headers = {
    'X-Auth-User' => account[:user],
    'X-Auth-Key' => account[:pass]
  }
    
  response = http.get(@auth_url.path, headers)
  
  if(response.code.to_i == 204)
    @x_auth_token = response.get_fields('X-Auth-Token').first
    @x_server_url = response.get_fields('X-Server-Management-Url').first
  else
    raise 'Invalid login credentials'
  end
end

def send(account, operation)

   action = operation.kind_of?(Hash) ? operation.values.first : operation
   root = operation.kind_of?(Hash) ? operation.keys.first : operation
   
   directory = "#{@file_root}/#{account[:user]}/#{root}"
   rootURL = action == root ? "#{@x_server_url}/#{root}" : "#{@x_server_url}/#{root}/#{action}"

   FileUtils.mkdir_p(directory) unless(File.directory?(directory))
   response =  `curl -H "Content-type: application/json" -H "X-Auth-Token: #{@x_auth_token}" #{rootURL}`
   File.open("#{directory}/#{action}.json", 'w+') { |f| f.write(response) }

   JSON.parse(response).values.first.each do |item|
     
     if item.keys.include?("id")
      
      File.open("#{directory}/#{item['id']}.json", 'w+') { |f| f.write(item) }
     end
   end
end

accounts.each do |account|
  
  authenticate(account);
  operations.each { |operation| send(account, operation)}
end


