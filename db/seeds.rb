# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
@user = User.create(name: "John", email: "john@mail.com", password: "qwe123")
@user.save
@ms = @user.groups.create(name: "Microsoft", icon: "https://cdn.worldvectorlogo.com/logos/microsoft.svg")
@ms.save
@apple = @user.groups.create(name: "Apple", icon: "https://cdn.worldvectorlogo.com/logos/apple-11.svg")
@apple.save
@tesla = @user.groups.create(name: "Tesla", icon: "https://cdn.worldvectorlogo.com/logos/tesla-9.svg")
@tesla.save
@investment1 = Investment.new(name: "Stocks", amount: 1000, user_id: @user.id, group_id: @ms.id)
@investment1.save
