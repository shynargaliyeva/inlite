# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Movie.destroy_all
Genre.destroy_all
Issue.destroy_all

movies = Movie.create([
    {title: "Birdman", 
    year: 2014, run_time: "1h 59min", rating: "R", 
    synopsis: "A washed-up actor, who once played an iconic superhero, attempts to revive his career by writing and starring in his very own Broadway play.", 
    psychologist: "Timothy Yen, Psy. D., Licensed Clinical Psychologist", 
    image_uri: "https://i.imgur.com/d0SuuF9.jpg"},

    {title: "Her", 
    year: 2013, run_time: "2h 6min", rating: "R", 
    synopsis: "In a near future, a lonely writer develops an unlikely relationship with an operating system designed to meet his every need.", 
    psychologist: "Timothy Yen, Psy. D., Licensed Clinical Psychologist",
    image_uri: "https://i.imgur.com/jJp8AMe.jpg"},

    {title: "Frances Ha", 
    year: 2012, run_time: "1h 26min", rating: "R", 
    synopsis: "A story that follows as a New York woman (who doesn't really have an apartment) apprentices for a dance company (though she's not really a dancer) and throws herself headlong into her dreams, even as their possibility dwindles.", 
    psychologist: "Dr. Joy Jacobs J.D., Ph.D., Clinical Psychologist",
    image_uri: "https://i.imgur.com/seNJF16.jpg"},

    {title: "Moonlight", 
    year: 2016, run_time: "1h 51min", rating: "R", 
    synopsis: "A chronicle of the childhood, adolescence and burgeoning adulthood of a young, African-American, gay man growing up in a rough neighborhood of Miami.", 
    psychologist: "Timothy Yen, Psy. D., Licensed Clinical Psychologist",
    image_uri: "https://i.imgur.com/ZmW67L2.jpg"},

    {title: "Miss Sloane", 
    year: 2016, run_time: "2h 12min", rating: "R", 
    synopsis: "In the high-stakes world of political power-brokers, Elizabeth Sloane is the most sought after and formidable lobbyist in D.C. But when taking on the most powerful opponent of her career, she finds winning may come at too high a price.",
    psychologist: "Timothy Yen, Psy. D., Licensed Clinical Psychologist",
    image_uri: "https://i.imgur.com/uBY4iB3.jpg"},

    {title: "The King's Speech", 
    year: 2010, run_time: "1h 58min", rating: "R", 
    synopsis: "The story of King George VI of the United Kingdom of Great Britain and Northern Ireland, his impromptu ascension to the throne and the speech therapist who helped the unsure monarch become worthy of it.",
    psychologist: "Timothy Yen, Psy. D., Licensed Clinical Psychologist",
    image_uri: "https://i.imgur.com/SdUuZry.jpg"},

    {title: "Good Will Hunting", 
    year: 1997, run_time: "2h 6min", rating: "R", 
    synopsis: "Will Hunting, a janitor at M.I.T., has a gift for mathematics, but needs help from a psychologist to find direction in his life.",
    psychologist: "Dr. Joy Jacobs J.D., Ph.D., Clinical Psychologist",
    image_uri: "https://i.imgur.com/aLMkEz6.jpg"},

    {title: "Silver Linings Playbook", 
    year: 2012, run_time: "2h 2min", rating: "R", 
    synopsis: "After a stint in a mental institution, former teacher Pat Solitano moves back in with his parents and tries to reconcile with his ex-wife. Things get more challenging when Pat meets Tiffany, a mysterious girl with problems of her own.",
    psychologist: "Timothy Yen, Psy. D., Licensed Clinical Psychologist",
    image_uri: "https://i.imgur.com/G1HfS0q.jpg"},

    {title: "Manchester by the Sea", 
    year: 2016, run_time: "2h 17min", rating: "R", 
    synopsis: "A depressed uncle is asked to take care of his teenage nephew after the boy's father dies.", 
    psychologist: "Timothy Yen, Psy. D., Licensed Clinical Psychologist",
    image_uri: "https://i.imgur.com/Z7mLBSW.jpg"},

    {title: "Whiplash", 
    year: 2014, run_time: "1h 47min", rating: "R", 
    synopsis: "A promising young drummer enrolls at a cut-throat music conservatory where his dreams of greatness are mentored by an instructor who will stop at nothing to realize a student's potential.", 
    psychologist: "Timothy Yen, Psy. D., Licensed Clinical Psychologist", 
    image_uri: "https://i.imgur.com/NQmDWGJ.jpg"},

    {title: "The Big Sick", 
    year: 2017, run_time: "2h", rating: "R", 
    synopsis: "Pakistan-born comedian Kumail Nanjiani and grad student Emily Gardner fall in love but struggle as their cultures clash. When Emily contracts a mysterious illness, Kumail finds himself forced to face her feisty parents, his family's expectations, and his true feelings.", 
    psychologist: "Dr. Joy Jacobs J.D., Ph.D., Clinical Psychologist",
    image_uri: "https://i.imgur.com/HwNj0Cw.jpg"},

    {title: "Burnt", 
    year: 2015, run_time: "1h 41min", rating: "R", 
    synopsis: "Adam Jones is a chef who destroyed his career with drugs and diva behavior. He cleans up and returns to London, determined to redeem himself by spearheading a top restaurant that can gain three Michelin stars.", 
    psychologist: "Dr. Joy Jacobs J.D., Ph.D., Clinical Psychologist",
    image_uri: "https://i.imgur.com/CKtZrM9.jpg"}
])

genres = Genre.create([
    {keyword: "Comedy"}, 
    {keyword: "Drama"}, 
    {keyword: "Romance"}, 
    {keyword: "Thriller"}, 
    {keyword: "Biography"}, 
    {keyword: "Music"}, 
    {keyword: "Action"}
])

issues = Issue.create([
    {keyword: "Anxiety"}, 
    {keyword: "Depression"},
    {keyword: "Suicide"},
    {keyword: "Abuse"},
    {keyword: "Addiction"},
    {keyword: "Eating Disorder"},
    {keyword: "Stress"},
    {keyword: "PTSD"},
    {keyword: "Sexual Content"}

])

movies[0].genres.push(genres[0], genres[1])
movies[1].genres.push(genres[1], genres[2])
movies[2].genres.push(genres[0], genres[1], genres[2])
movies[3].genres.push(genres[1])
movies[4].genres.push(genres[1], genres[3])
movies[5].genres.push(genres[4], genres[1])
movies[6].genres.push(genres[1])
movies[7].genres.push(genres[0], genres[1], genres[2])
movies[8].genres.push(genres[1])
movies[9].genres.push(genres[1], genres[5])
movies[10].genres.push(genres[0], genres[1], genres[2])
movies[11].genres.push(genres[0], genres[1])


movies[0].issues.push(issues[1], issues[3], issues[2], issues[4])
movies[2].issues.push(issues[1], issues[2])
movies[3].issues.push(issues[3], issues[8])
movies[8].issues.push(issues[7])
movies[9].issues.push(issues[3], issues[6])
movies[10].issues.push(issues[4], issues[5])
movies[11].issues.push(issues[2], issues[4])













