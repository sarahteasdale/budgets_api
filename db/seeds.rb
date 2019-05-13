# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#
# SERVICES
#

kedron = Service.create!(
  name: 'Kedron',
)

#
# USERS
#

sarah = User.create!(
  username: 'sarah', 
  password: 'test'
)

#
# BUDGET ITEMS
#

BudgetItem.create!([
  {
    service: kedron,
    user: sarah
  }
])

#
# BUDGET TYPES
#

BudgetType.create!([
  {
    budgetType: 'Rent',
    start_date: 2019-04-02,
    end_date: 2019-04-06,
    created_at: 2.days.ago,
    service: kedron,
    user: sarah
  }
])

