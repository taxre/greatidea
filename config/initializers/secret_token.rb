# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.

def secure_token
  token file= Rails.root.join('.secret')
  if File.exist?(token_file)
    #Use the existing token
    File.read(token_file).chomp
  else
    #Generate a new token and store it in token_file.
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end
 
IdeaApp::Application.config.secret_key_base = 'ed89dd1055e8519386cc372953cae155f7a67b926039db939b77c6dffb98c24d38b5da2c733adb6e4f819d9309c3ffeac7a917657ca82e53315a8eddb6ec0213'

