require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

# ### Exercise 6: One-to-many association

# We haven't used the Employee class (and employees table) at all yet. If you look at this table's column structure, you'll find that it has a `store_id` (integer) column. This is a column that identifies which store each employee belongs to. It points to the `id` (integer) column of their store.

# Let's tell Active Record that these two tables are in fact related via the `store_id` column.

# 1. Add the following code _directly_ inside the Store model (class): `has_many :employees`
# 2. Add the following code directly inside the Employee model (class): `belongs_to :store`
# 3. Add some data into employees. Here's an example of one (note how it differs from how you create stores): `@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)`
# 4. Go ahead and create some more employees using the create method. You can do this by making multiple calls to create (like you have before.) No need to assign the employees to variables though. Create them through the `@store#` instance variables that you defined in previous exercises. Create a bunch under `@store1` (Burnaby) and `@store2` (Richmond). Eg: `@store1.employees.create(...)`.

puts "Exercise 6"
puts "----------"

class Store < ActiveRecord::Base
  has_many :employees
end

class Employee < ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(first_name: "Wittie", last_name: "Farress", hourly_rate: 29) 
@store1.employees.create(first_name: "Lucinda", last_name: "Jenicek", hourly_rate: 38) 
@store1.employees.create(first_name: "Garreth", last_name: "Knotton", hourly_rate: 35) 
@store1.employees.create(first_name: "Juli", last_name: "Vellacott", hourly_rate: 20) 
@store1.employees.create(first_name: "Jocelyn", last_name: "Van der Beken", hourly_rate: 33) 
@store1.employees.create(first_name: "Ilka", last_name: "Nano", hourly_rate: 37) 
@store2.employees.create(first_name: "Helga", last_name: "Chichgar", hourly_rate: 25) 
@store2.employees.create(first_name: "Kathe", last_name: "McComas", hourly_rate: 29) 
@store2.employees.create(first_name: "Jimmie", last_name: "Anselmi", hourly_rate: 23) 
@store2.employees.create(first_name: "Andre", last_name: "Kitcatt", hourly_rate: 25) 
@store2.employees.create(first_name: "Morganica", last_name: "Reichhardt", hourly_rate: 22) 
@store1.employees.create(first_name: "Maddie", last_name: "Earry", hourly_rate: 22) 
@store1.employees.create(first_name: "Adrian", last_name: "Singers", hourly_rate: 28) 
@store1.employees.create(first_name: "Elva", last_name: "Juares", hourly_rate: 39) 
@store2.employees.create(first_name: "Thomasa", last_name: "Levecque", hourly_rate: 37) 
@store2.employees.create(first_name: "Roseline", last_name: "Oakland", hourly_rate: 27) 
@store1.employees.create(first_name: "Eadmund", last_name: "Cohane", hourly_rate: 40) 
@store2.employees.create(first_name: "Janetta", last_name: "Ripping", hourly_rate: 34) 
@store1.employees.create(first_name: "Catlee", last_name: "Robbs", hourly_rate: 31) 
@store2.employees.create(first_name: "Bellanca", last_name: "Bichener", hourly_rate: 24)