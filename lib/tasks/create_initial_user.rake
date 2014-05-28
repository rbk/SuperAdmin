# create_initial_user.rake

desc "Create inital admin user."
task :create_admin => :environment do
	User.create( email: 'admin', password:"admin", password_confirmation: "admin", group: 'superadmin' )	
	puts ""
	puts "Admin user created!"
	puts ""
	puts "Username: admin"
	puts "Password: admin"
	puts ""
	puts "Please edit this users name and password!"
	puts ""
end
