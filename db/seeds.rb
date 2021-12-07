puts "🌱 Seeding spices..."

User.destroy_all
Climb.destroy_all
TickList.destroy_all

user1 = User.create(name: "Dan")

puts "creating climbs"

user = User.find_by(name= "Dan")

epinephrine = Climb.create(user_id: user, name: "Epinephrine", grade: "5.9", climb_type: "Trad", location: "Red Rocks, Nevada", mt_project_link: "https://www.mountainproject.com/route/105732422/epinephrine")
casualRoute = Climb.create(user_id: user, name: "Casual Route", grade: "5.10a", climb_type: "Trad", location: "RMNP, Colorado", mt_project_link: "https://www.mountainproject.com/route/105748496/casual-route")
theNakedEdge = Climb.create(user_id: user, name: "The Naked Edge", grade: "5.11b", climb_type: "Trad", location: "Eldorado Canyon, Colorado", mt_project_link: "https://www.mountainproject.com/route/105748786/the-naked-edge")
theMoonlightButtress = Climb.create(user_id: user, name: "The Moonlight Buttress", grade: "5.12c", climb_type: "Trad", location: "Zion NP, Utah", mt_project_link: "https://www.mountainproject.com/route/106138026/the-moonlight-buttress-free")
chainReaction = Climb.create(user_id: user, name: "Chain Reaction", grade: "5.12c", climb_type: "Sport", location: "Smith Rock, Oregon", mt_project_link: "https://www.mountainproject.com/route/105789917/chain-reaction")
banshee = Climb.create(user_id: user, name: "Banshee", grade: "5.11c", climb_type: "Sport", location: "Red River Gorge, Kentucky", mt_project_link: "https://www.mountainproject.com/route/106333612/banshee")
apolloReed = Climb.create(user_id: user, name: "Apollo Reed", grade: "5.13a", climb_type: "Sport", location: "New River Gorge, West Virgina", mt_project_link: "https://www.mountainproject.com/route/105989372/apollo-reed")
pumpORama = Climb.create(user_id: user, name: "Pump-O-Rama", grade: "5.13a", climb_type: "Sport", location: "Rifle, Colorado", mt_project_link: "https://www.mountainproject.com/route/105753574/pump-o-rama")
jbmfp = Climb.create(user_id: user, name: "JBMFP", grade: "V5", climb_type: "Bouldering", location: "Joshua Tree NP, California", mt_project_link: "https://www.mountainproject.com/route/105725464/jbmfp")
newReligion = Climb.create(user_id: user, name: "New Religion", grade: "V7", climb_type: "Bouldering", location: "Hueco Tanks, Texas", mt_project_link: "https://www.mountainproject.com/route/106101052/new-religion")
planetOfTheApes = Climb.create(user_id: user, name: "Planet of the Apes", grade: "V7", climb_type: "Bouldering", location: "Joe's Valley, Utah", mt_project_link: "https://www.mountainproject.com/route/106318953/planet-of-the-apes")
theFlow = Climb.create(user_id: user, name: "The Flow", grade: "V7", climb_type: "Bouldering", location: "Horse Pens 40, Alabama", mt_project_link: "https://www.mountainproject.com/route/107409463/the-flow")

puts "seeding Tick List"
climb = Climb.ids.sample

t1= TickList.create(user_id: user, climb_id: climb, completed: false, beta: "" )
t2= TickList.create(user_id: user, climb_id: climb, completed: false, beta: "" )
t3= TickList.create(user_id: user, climb_id: climb, completed: false, beta: "" )
t4= TickList.create(user_id: user, climb_id: climb, completed: false, beta: "" )
t5= TickList.create(user_id: user, climb_id: climb, completed: false, beta: "" )
t6= TickList.create(user_id: user, climb_id: climb, completed: false, beta: "" )

puts "✅ Done seeding!"
