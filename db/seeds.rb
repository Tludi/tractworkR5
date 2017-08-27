# database seed file for creating sample users each with 5 workdays
Account.create(name: "Test Account", time_zone: "Pacific Time (US & Canada)")
# Account.create(name: "Bronze Construction Services Inc", time_zone: "Pacific Time (US & Canada)")
Time.zone = "Pacific Time (US & Canada)"

User.create(firstName: "milo",
            lastName: "bloom",
            email: "milo",
            role: "Crew",
            password: "soccer55",
            password_confirmation: "soccer55",
            pin: 1234,
            account_id: 1 )

User.create(firstName: "admin",
            lastName: "admin",
            email: "admin",
            role: "Admin",
            password: "soccer55",
            password_confirmation: "soccer55",
            pin: 1234,
            account_id: 1 )


users = User.all
# print User count to terminal for verification
puts " #{users.count} Users created"


# Create 1 workday for each User
# users.each do |u|
#   u.workdays.create(hoursWorked: 8,
#                     user_id: u.id,
#                     dayDate: Date.current,
#                     project_id: 1,
#                     notes: "Nothing yet" )
# end

# workdays = Workday.all
# # print workday count to terminal for verification
# puts workdays.count

# Project.create(name: "General Work", account_id: 1)
# Project.create(name: "Willamette House", account_id: 1)
# Project.create(name: "Portland House", account_id: 1)
# Project.create(name: "Tigard House", account_id: 1)
# Project.create(name: "General Work", account_id: 2)

# Role.create(name: "Admin")
# Role.create(name: "SuperUser")
# Role.create(name: "Supervisor")
# Role.create(name: "Crew")
