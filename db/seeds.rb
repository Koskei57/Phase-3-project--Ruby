puts "🌱 Seeding spices..."

# Seed your database here
#create book instance
bk1 = Book.create(title: "Caucasian chalk circle", price: "2000", publisher: "Longhorn", year: "1998")
bk2 = Book.create(title: "The Gulf", price: "1500",  publisher: "Slayer", year: "2000")
bk3 = Book.create(title: "Geri inengi", price: "1000",  publisher: "Wakadinali", year: "2020")

# create author instance
aurhor1 = Author.create(name: "Caucasian", gender: "Male", year: "1950" )
aurhor2 = Author.create(name: "Faith" ,gender: "Female", year: "1960")
aurhor3 = Author.create(name: "Munga", gender: "Male", year: "1995")

#create review instance

review1 = Review.create(score:"5", comment:"Such a nice read!", book_id: bk1.id, author_id: aurhor1.id)
review2 = Review.create(score: "3", comment: "A lovely read", book_id: bk2.id, author_id: aurhor2.id)
review3 = Review.create(score: "4", comment: "Oh boy! a masterpiece!", book_id: bk3.id, author_id: aurhor3.id)

puts "✅ Done seeding!"
