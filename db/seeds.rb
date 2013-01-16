# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user_roman = User.create({ name: 'Roman', email: 'roman.baron@gmail.com' })
user_assaf = User.create({ name: 'Assaf', email: 'assafshomer@gmail.com' })
Spam.create({title:'CI@LIS', content: 'Buy G00D CIALIS', submitter: user_roman } )
Spam.create({title:'Via$$GRA', content: 'Buy G00D V$$GRA', submitter: user_assaf } )
