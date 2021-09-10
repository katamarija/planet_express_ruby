# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

CrewMember.create(name: 'Fry')
CrewMember.create(name: 'Leela')
CrewMember.create(name: 'Zoidberg')

dc = DeliveryContract.create(external_id: 01, item: "Nitroglycerin Souffle", crew_size: 3, destination: "Ms Aster's Mansion")
Schedule.create(depart_date: "3000-04-08", delivery_date: "3000-04-10", delivery_contract: dc)
