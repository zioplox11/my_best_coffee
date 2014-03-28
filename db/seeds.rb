# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Artist.delete_all
User.delete_all
Song.delete_all
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = User.create({ name: "admin", email: "admin@admin.com", password: "password", password_confirmation: "password", admin_status: 5})


user_sarah = User.create({ name: "Sarah", email: "sarah@sarah.com", password: "password", password_confirmation: "password", admin_status: 3})

user_becky = User.create({ name: "Becky", email: "becky@becky.com", password: "password", password_confirmation: "password", admin_status: 2})

user_bob = User.create({ name: "Bob", email: "bob@bob.com", password: "password", password_confirmation: "password", admin_status: 1})

user_sam = User.create({ name: "Sam", email: "sam@sam.com", password: "password", password_confirmation: "password", admin_status: 1})


recipe_chemex = Recipe.create({title: "Chemex", author_id: "admin", total_time: "25", multi_taskability: 4, difficulty: 5, rating_self: 5, rating_all_users: 4.2
  })

recipe_french_press = Recipe.create({title: "French Press", author_id: "admin", total_time: "20", multi_taskability: 3, difficulty: 3, rating_self: 4, rating_all_users: 3.3
  })

recipe_stove_top = Recipe.create({title: "Stove Top", author_id: "admin", total_time: "15", multi_taskability: 2, difficulty: 2, rating_self: 3.0,
  })

recipe_drip_coffee = Recipe.create({title: "Drip Coffee", author_id: "admin", total_time: "15", multi_taskability: 5, difficulty: 2, rating_self: 2.8, rating_all_users: 2.3
  })


recipe_instant_coffee = Recipe.create({title: "Instant Coffee", author_id: "admin", total_time: "5", multi_taskability: 2, difficulty: 1, rating_all_users: 2.0
  })

recipe_vacuum_coffee = Recipe.create({

  })

recipe_ibrix_coffee = Recipe.create({

  })




user_bob.recipes << recipe_instant_coffee

user_sarah.recipes << recipe_chemex

user_sarah.recipes << recipe_french_press

