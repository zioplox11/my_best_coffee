##My Best Coffee ERD

###Users
- primary id
- name
- age
- gender
- email
- password_digest
- has many recipes
- has many appliances through appliance_users
- has many my_best_coffees
- timestamps


###Recipes
- primary id
- title
- author
- total_time
- wiki_link
- photo_url
- has many recipe_steps
- has many ingredients through recipe_steps
- belongs to users
- has many appliances through recipe_steps
- timestamps


###Ingredients
- primary id
- name
- description
- amazon purchase_link
- wiki_link
- photo_url
- has many recipe_steps
- belongs to recipes through recipe_steps
- timestamps


###Recipe_Steps
- primary id
- belongs to a recipe
- name
- description
- has many appliances
- has many ingredients
- total_time
- timestamps


###My Best Coffees
- id
- recipe_id
- restaurant_url (default to YELP)
- belongs to a user
- timestamps


###Appliances
- primary id
- name
- amazon purchase_link
- wiki_link
- photo_url
- has many users through appliance_users
- has many recipe_steps
- has many recipes through a recipe_step
- timestamps


###Appliances_Users
- appliance_id
- user_id
- timestamps

###Comments
- user_id
- description
- appliance_id
- recipe_id
- ingredient_id
- time_stamps
