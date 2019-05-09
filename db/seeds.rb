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

#Social
act1 = Activity.create(title: 'Coffee', description: 'Get a cup of coffee with a friend.', time: 5, category: cat1)
act2 = Activity.create(title: 'Quiz', description: 'Get to know a new friend! Ask them these 3 questions: What is your name? What is your favourite colour? If you could be an insect, what would you be?', time: 15, category: cat1)
act3 = Activity.create(title: 'Play a game', description: 'Challenge someone close by to a game of rock paper scissors. Best of 3 wins!', time: 3, category: cat1)
act4 = Activity.create(title: 'Call a friend', description: 'Call a friend and plan a fun activity for a later date. Maybe dinner? A nice stroll over the weekend? The world is your oyster!', time: 8, category: cat1)
act5 = Activity.create(title: 'Portrait', description: 'Find a friend who also needs a break. Sit down opposite each other, and spend a few minutes drawing portraits of each other. You can then set mini competitiosn to draw pictures of random things around you. Endless fun!', time: 20, category: cat1)
act6 = Activity.create(title: 'Buy someone lunch', description: 'Ask someone you want to get to know better if they would like to have lunch - your treat. This will make you feel better, them feel better, everybody feels better, celebrate!', time: 30, category: cat1)

#Nourish
act7 = Activity.create(title: 'Hydrate', description: "You probably haven't had water for a while, so sit down and drink a large glass of water!", time: 3, category: cat2)
act8 = Activity.create(title: 'Make tea', description: 'Make yourself a nice cup of tea or coffee. Sit down and make it exactly how you like it. Enjoy every sip! ', time: 5, category: cat2)
act9 = Activity.create(title: 'Eat fruit', description: 'Pop out to the shops and buy a fruit. Even better, buy a couple of fruits and give one to your friend!', time: 8, category: cat2)
act10 = Activity.create(title: 'Meal planning', description: 'Sit down and plan your meals for the week. Write a detailed shopping list so you can get everything you need!', time: 15, category: cat2)
act11 = Activity.create(title: 'Bake cookies', description: 'Bake these healthy quick cookies:  Smash together a banana, an egg, half a cup of oats and a pinch of cinnamon. Shape into rounds and then bake at 180 celsius for 15 min. Make a cup of tea and enjoy!', time: 30, category: cat2)
act12 = Activity.create(title: 'Pic nic', description: 'Grab your food and go outside to eat! Aternatively, pop to the shops and get some goodies. Find a nice quiet area and enjoy eating your treats!', time: 20, category: cat2)

#Sweat
act13 = Activity.create(title: 'Neck mobility', description: 'Tilt your head to the left until you feel a light stretch. Count 45 seconds. Repeat on the right side, forwards and backwards.', time: 3, category: cat3)
act14 = Activity.create(title: 'Stretch', description: 'Stand up and stretch your body. Do your favourite stretches, or just see if you can touch your toes. Get your friends involved if you feel silly doing it on your own!', time: 5, category: cat3)
act15 = Activity.create(title: 'Stairs', description: "Walk up and down the stairs for 8 minutes. (If you don't have access to any stairs, just walk around for 8 minutes).", time: 8, category: cat3)
act16 = Activity.create(title: 'Yoga', description: 'Type in "15 min yoga flow" in YouTube. Enjoy!', time: 15, category: cat3)
act17 = Activity.create(title: 'Run', description: 'Go for a slow jog and pick 5 flowers.', time: 20, category: cat3)
act18 = Activity.create(title: 'Walk', description: 'Set a 15 min timer on your phone. Walk as far away as you can in 15 min. When the time runs out, turn around and walk back. You will come back to your desk feeling energized!', time: 30, category: cat3)

#Nature
act19 = Activity.create(title: 'Reflect', description: 'Find a quiet space near a window and count 5 birds', time: 3, category: cat4)
act20 = Activity.create(title: 'Declutter', description: 'Spend 5 minutes decluttering your desk!', time: 5, category: cat4)
act21 = Activity.create(title: 'Draw', description: 'Grab a pen and paper and sit by a window. Spend some tiem trying to draw some of the beautfiul nature you see!', time: 8, category: cat4)
act22 = Activity.create(title: 'Clean up', description: 'Walk around the block and pick up 10 items of trash.', time: 15, category: cat4)
act23 = Activity.create(title: 'Plan an excursion', description: 'Plan a nature excursion for the weekend. Planning a trip now will mean you have something to look forward to. Exciting!', time: 20, category: cat4)
act24 = Activity.create(title: 'Meditate', description: 'Find a quiet area close to your office (prefferably outdoors). Spend 30 minutes sitting quietly. Focus on your breathing and try to listen to every noise around you.', time: 30, category: cat4)


user1 = User.create(username: 'U1', first_name: 'Fia', last_name: 'Fredriksson', password: '123')

refl1 = Reflection.create(content: 'This felt like a waste of time, but I do feel a bit better', score: 4, user: user1, activity: act5)
refl1 = Reflection.create(content: 'Loved it!', score: 8, user: user1, activity: act1)
refl1 = Reflection.create(content: 'Making a new friend was scary but asking them the insect question was fun', score: 7, user: user1, activity: act2)
refl1 = Reflection.create(content: 'I was scared but it was fun to try something new', score: 8, user: user1, activity: act6)
refl1 = Reflection.create(content: 'This made me feel more relaxed', score: 8, user: user1, activity: act16)
refl1 = Reflection.create(content: 'Picking flowers made the run way more fun!', score: 8, user: user1, activity: act17)
