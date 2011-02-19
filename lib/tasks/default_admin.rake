task :default_admin => :environment do
  desc 'creating new admin user'

  puts 'Login:'
  login = $stdin.gets.strip
  puts 'Email:'
  email = $stdin.gets.strip
  puts 'Password:'
  password = $stdin.gets.strip
  puts 'Password confirmation:'
  password_c = $stdin.gets.strip

  a = User.create(:login => login, :email => email, :password => password, :password_confirmation => password_c)
  a.save!
end
