# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.delete_all
Recipe.delete_all
Appliance.delete_all
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# user_id 1
admin = User.create({ name: "admin", email: "admin@admin.com", password: "password", password_confirmation: "password", admin_status: 5})


# user_id 2
user_sarah = User.create({ name: "Sarah", email: "sarah@sarah.com", password: "password", password_confirmation: "password", admin_status: 3})

# user_id 3
user_becky = User.create({ name: "Becky", email: "becky@becky.com", password: "password", password_confirmation: "password", admin_status: 2})

# user_id 4
user_bob = User.create({ name: "Bob", email: "bob@bob.com", password: "password", password_confirmation: "password", admin_status: 1})

# user_id 5
user_sam = User.create({ name: "Sam", email: "sam@sam.com", password: "password", password_confirmation: "password", admin_status: 1})




recipe_chemex = Recipe.create({title: "Chemex", author_id: "admin", total_time: 25, multi_taskability: 4, difficulty: 5, rating_self: 5, rating_all_users: 4.2
  })

recipe_french_press = Recipe.create({title: "French Press", author_id: "admin", total_time: 20, multi_taskability: 3, difficulty: 3, rating_self: 4, rating_all_users: 3.3
  })

recipe_stove_top = Recipe.create({title: "Stove Top", author_id: 1, total_time: 15, multi_taskability: 2, difficulty: 2, rating_self: 3.0,
  })

recipe_drip_coffee = Recipe.create({title: "Drip Coffee", author_id: 1, total_time: 15, multi_taskability: 5, difficulty: 2, rating_self: 2.8, rating_all_users: 2.3
  })

recipe_instant_coffee = Recipe.create({title: "Instant Coffee", author_id: 2, total_time: 5, multi_taskability: 2, difficulty: 1, rating_all_users: 2.0
  })

recipe_vacuum_coffee = Recipe.create({title: "Vacuum Coffee", author_id: 3, total_time: 20, multi_taskability: 2, difficulty: 4, rating_all_users: 3.8

  })

recipe_ibrix_coffee = Recipe.create({title: "Ibrix Coffee", author_id: 1, total_time: 15, multi_taskability: 2, difficulty: 3, rating_all_users: 3.0
  })

recipe_aeropress_coffee = Recipe.create({title: "Aeropress Coffee", author_id: 20, total_time: 3, multi_taskability: 1, difficulty: 3, rating_all_users: 4.2
  })


user_bob.recipes << recipe_instant_coffee

user_sarah.recipes << recipe_chemex

user_sarah.recipes << recipe_french_press

user_becky.recipes << recipe_aeropress_coffee

user_becky.recipes << recipe_vacuum_coffee

user_becky.recipes << recipe_stove_top


# smiling coffee cup
image_url1 = "http://www.e-health101.com/wp-content/uploads/2013/12/Cup-of-coffee.jpg"

# damn fine cup of coffee image
image_url2 = "http://fc09.deviantart.net/fs71/i/2013/015/2/6/a_damn_fine_cup_of_coffee_by_aramphoto-d5rn4bs.jpg"

# single cup image
image_url3 = "http://pad1.whstatic.com/images/thumb/c/ca/Make-a-Single-Cup-of-Coffee-Step-1.jpg/670px-Make-a-Single-Cup-of-Coffee-Step-1.jpg"

# huge close up of coffee beans
image_url4 = "http://upload.wikimedia.org/wikipedia/commons/0/06/Coffee_Beans_Photographed_in_Macro.jpg"

# handful of coffee beans
image_url5 = "http://static.guim.co.uk/sys-images/Environment/Pix/pictures/2014/3/27/1395935821353/Climate-change-and-coffee-008.jpg"



chemex_url = "http://www.amazon.com/Chemex-6-Cup-Classic-Series-Coffee/dp/B0000YWF5E/ref=sr_1_2?ie=UTF8&qid=1396049141&sr=8-2&keywords=chemex"

vacuum_url = "http://www.amazon.com/Bodum-Santos-Stovetop-Vacuum-34-Ounce/dp/B00005NCX5/ref=sr_1_1?ie=UTF8&qid=1396049179&sr=8-1&keywords=vacuum+coffee+brewer"

ibrik_url = "http://www.amazon.com/Turkish-Coffee-Cezve-ibrik-Handle/dp/B005G5X894/ref=sr_1_sc_1?ie=UTF8&qid=1396049206&sr=8-1-spell&keywords=ibrix+coffee+brewer"

aeropress_url = "http://www.amazon.com/AeroPress-Coffee-Espresso-zippered-Filters/dp/B002ZD3QJC/ref=sr_1_3?ie=UTF8&qid=1396049243&sr=8-3&keywords=aeropress+coffee+brewer"

drip_coffee1_url = "http://www.amazon.com/Bonavita-BV1800TH-Coffee-Thermal-Carafe/dp/B005YQZNO8/ref=sr_1_12?s=home-garden&ie=UTF8&qid=1396049529&sr=1-12&keywords=best+drip+coffee+maker"

drip_coffee2_url = "http://www.amazon.com/Cuisinart-Programmable-Coffee-Maker-DCC2600C/dp/B002IAV1N0/ref=sr_1_63?s=home-garden&ie=UTF8&qid=1396049617&sr=1-63&keywords=best+drip+coffee+maker"





http://www.amazon.com/Capresso-Infinity-Conical-Grinder-8-5-Ounce/dp/B001QTVXCS/ref=sr_1_1?ie=UTF8&qid=1396049301&sr=8-1&keywords=conical+burr+capresso

http://www.amazon.com/KRUPS-203-42-Electric-Grinder-Stainless/dp/B00004SPEU/ref=pd_sim_gro_2?ie=UTF8&refRID=0SRWAXJ0FNFTG5TGNNEJ




http://www.amazon.com/Folgers-Coffee-Classic-Roast-Ounce/dp/B001G2F5R4/ref=sr_1_1?ie=UTF8&qid=1396049352&sr=8-1&keywords=folgers

http://www.amazon.com/EatSmart-Precision-Digital-Kitchen-Silver/dp/B001N07KUE/ref=sr_1_9?ie=UTF8&qid=1396049375&sr=8-9&keywords=digital+scale

http://www.amazon.com/Kicking-Horse-Coffee-Whole-2-2-Pound/dp/B0027Z8VES/ref=sr_1_3?ie=UTF8&qid=1396049435&sr=8-3&keywords=organic+coffee+beans

