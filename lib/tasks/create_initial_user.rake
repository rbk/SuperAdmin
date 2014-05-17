# create_initial_user.rake

desc "Create inital admin user."
task :admin_create => :environment do
	User.create( email: 'sample@someemail.com', password_digest: '', group: 'superadmin' )	
end