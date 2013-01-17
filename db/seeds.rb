# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user_roman = User.create({ name: 'Roman', email: 'roman.baron@gmail.com' })
user_assaf = User.create({ name: 'Assaf', email: 'assafshomer@gmail.com' })
#user_roman = User.find()
#user_assaf = User.find()
spam1 = Spam.create({title:'CI@LIS', content: 'Buy G00D CIALIS' } )
spam1.submitter = user_roman
spam1.victims << user_roman
spam1.victims << user_assaf
spam1.save
spam2 = Spam.create({title:'Via$$GRA', content: 'Buy G00D V$$GRA'} )
spam2.submitter = user_assaf
spam2.victims << user_assaf
spam2.save
Spam.create({title:'Buy insurance', content: 'Buy G00D Insurance'} )
