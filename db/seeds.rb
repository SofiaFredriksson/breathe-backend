# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


cat1 = Category.create(name: 'Social', description: '')
cat2 = Category.create(name: 'Nourish', description: '')
cat3 = Category.create(name: 'Sweat', description: '')
cat4 = Category.create(name: 'Nature', description: '')

act1 = Activity.create(title: 'Coffee', description: 'Get a cup of coffee with a friend', time: 5, category: cat1)
act2 = Activity.create(title: 'Run', description: 'Go for a slow jog and pick 5 flowers', time: 25, category: cat3)
act3 = Activity.create(title: 'Reflect', description: 'Find a quiet space near a window and count 5 birds', time: 3, category: cat4)
act4 = Activity.create(title: 'Quiz', description: 'Get to know a new friend! Ask them these 3 questions: What is your name? What is your favourite colour? If you could be an insect, what would you be?', time: 15, category: cat1)
act5 = Activity.create(title: 'Bake cookies', description: 'Bake these healthy quick cookies:  Smash together a banana, an egg, half a cup of oats and a pinch of cinnamon. Shape into rounds and then bake at 180 celsius for 15 min. Make a cup of tea and enjoy!', time: 30, category: cat2)

user1 = User.create(username: 'U1', first_name: 'Fia', last_name: 'Fredriksson')

refl1 = Reflection.create(content: 'This felt like a waste of time, but i do feel a bit better', score: 4, user: user1, activity: act5)
refl1 = Reflection.create(content: 'Loved it!', score: 8, user: user1, activity: act1)
refl1 = Reflection.create(content: 'Making a new friend was scary but asking them the insect question was fun', score: 7, user: user1, activity: act4)
refl1 = Reflection.create(content: 'I was scared but it was fun to try something new', score: 8, user: user1, activity: act4)
refl1 = Reflection.create(content: 'This made me feel more relaxed', score: 8, user: user1, activity: act3)
refl1 = Reflection.create(content: 'Picking flowers made the run way more fun!', score: 8, user: user1, activity: act2)
