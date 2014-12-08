# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Application.delete_all

Application.create!(projid: 1052,
	title: 'West Seattle paving project',
	cost: 100000,
	location: 'My front door.')
	

Application.create!(projid: 1053,
	title: 'West Seattle bicycle lane',
	cost: 200000,
	location: 'The Junction')
	

Application.create!(projid: 1054,
	title: 'West Seattle widening project',
	cost: 300000,
	location: 'Somewhere near Lincoln Park')