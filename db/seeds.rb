# Genre.create!([
#   {name: "comedy"},
#   {name: "action"},
#   {name: "drama"}
# ])
# Actor.create!([
#   {first_name: "Matt", last_name: "Damon", known_for: "Bourne Trilogy", gender: "Male", age: "0", movie_id: 2},
#   {first_name: "Rodney", last_name: "Dangerfield", known_for: "Caddyshack", gender: "Male", age: "Deceased", movie_id: 7},
#   {first_name: "Chevy", last_name: "Chase", known_for: "Vacation Series", gender: "Male", age: "77", movie_id: 7},
#   {first_name: "George", last_name: "Clooney", known_for: "Oceans 11", gender: "Male", age: "60", movie_id: 6},
#   {first_name: "Javier", last_name: "Bardem", known_for: "No Country for Old Men", gender: "Male", age: "52", movie_id: 5},
#   {first_name: "Aaron", last_name: "Paul", known_for: "Breaking Bad", gender: "Male", age: "41", movie_id: 1},
#   {first_name: "Reese", last_name: "Witherspoon", known_for: "Walk the Line", gender: "Female", age: "45", movie_id: 8}
# ])
# Movie.create!([
#   {title: "Michael Clayton", year: 2007, plot: "Michael Clayton, a high-priced law firm's fixer, leaves a late night poker game, gets a call to drive to Westchester, and watches his car blow up as he's taking an impromptu dawn walk through a field. Flash back four days. He owes a loan shark to cover his brother's debts (Michael's own gambling habits have left him virtually broke). His law firm is negotiating a high-stakes merger, and his firm's six year defense of a conglomerate's pesticide use is at risk when one of the firm's top litigators goes off his meds and puts the case in jeopardy. While Michael is trying to fix things someone decides to kill him. Who? Meanwhile his son summarizes the plot of a dark fantasy novel.", director: "Tony Gilroy", english: true},
#   {title: "Caddyshack", year: 1980, plot: "There's something fishy going on at the elitist Bushwood Country Club, and the scheming president of the clubhouse, Judge Elihu Smails, has something to do with it. But, the suave golf guru, Ty Webb, and the distasteful, filthy rich construction magnate, Al Czervik, are onto him. In the meantime, the young caddie, Danny Noonan, struggles to get his life back on track, and the only way to do it is by winning the demanding Caddie Day golf tournament; a prestigious competition that can earn him a scholarship from the judge himself. Now, war breaks out, and all bets are off. Will Danny ever make his dream come true? Does he know that a subterranean menace is threatening to put in jeopardy everyone's plans?", director: "Harold Ramis", english: true},
#   {title: "No Country for Old Men", year: 2007, plot: "In rural Texas, welder and hunter Llewelyn Moss (Josh Brolin) discovers the remains of several drug runners who have all killed each other in an exchange gone violently wrong. Rather than report the discovery to the police, Moss decides to simply take the two million dollars present for himself. This puts the psychopathic killer, Anton Chigurh (Javier Bardem), on his trail as he dispassionately murders nearly every rival, bystander and even employer in his pursuit of his quarry and the money. As Moss desperately attempts to keep one step ahead, the blood from this hunt begins to flow behind him with relentlessly growing intensity as Chigurh closes in. Meanwhile, the laconic Sheriff Ed Tom Bell (Tommy Lee Jones) blithely oversees the investigation even as he struggles to face the sheer enormity of the crimes he is attempting to thwart.", director: "Coen Brothers", english: true},
#   {title: "El Camino: A Breaking Bad Movie", year: 2019, plot: "Finally free from torture and slavery at the hands of Tod's uncle Jack, and from Mr. White, Jesse must escape demons from his past. He's on the run from a police manhunt, with his only hope of escape being Saul Goodman's hoover guy, Ed Galbraith. A man who for the right price, can give you a new identity and a fresh start. Jesse is racing against the clock, with help from his crew, avoiding capture to get enough money together to buy a 'new dust filter for his Hoover MaxExtract PressurePro model', a new life.", director: "Vince Gilligan", english: true},
#   {title: "Walk the Line", year: 2005, plot: "A woman's love, given reluctantly, saves a man from addiction and self-destruction. Traces the life of Johnny Cash from his boyhood, with the loss of a brother and the loss of his father's affection, to 1968 when his outlaw side and his unhappiness give way to the twin triumphs of his concert at Folsom Prison and June Carter's acceptance of his marriage proposal. Along the way there's his first composition, first recording, first marriage, daughters, being smitten with June, divorce, pills and booze, an empty life, and the Carter family's nursing him back to health. June eases Johnny out of a ring of fire.", director: "James Mangold", english: true},
#   {title: "The Outpost", year: 2019, plot: "During the Afghanistan war, several outposts were placed to control the Taliban movement and their supply chain. Camp Keating, situated in a valley surrounded by mountains, was one them. While being shot at by the Talibans was business as usual, they tried to gain respect from local village elders and have them help stop these skirmishes. One day, when 400 Talibans rallied for a surprise attack, it was up to them to leverage the poor defenses and lack of ammo and manpower they had, to ultimately survive and go back to their loved ones.", director: "Rod Lurie", english: true},
#   {title: "The Departed", year: 2006, plot: "In this crime-action tour de force, the South Boston state police force is waging war on Irish-American organized crime. Young undercover cop Billy Costigan is assigned to infiltrate the mob syndicate run by gangland chief Frank Costello. While Billy quickly gains Costello's confidence, Colin Sullivan, a hardened young criminal who has infiltrated the state police as an informer for the syndicate is rising to a position of power in the Special Investigation Unit. Each man becomes deeply consumed by their double lives, gathering information about the plans and counter-plans of the operations they have penetrated. But when it becomes clear to both the mob and the police that there is a mole in their midst, Billy and Colin are suddenly in danger of being caught and exposed to the enemy - and each must race to uncover the identity of the other man in time to save themselves. But is either willing to turn on their friends and comrades they've made during their long stints undercover?", director: "Martin Scorsese", english: true}
# ])
# MovieGenre.create!([
#   {genre_id: 2, movie_id: 1},
#   {genre_id: 3, movie_id: 2},
#   {genre_id: 2, movie_id: 3},
#   {genre_id: 3, movie_id: 5},
#   {genre_id: 3, movie_id: 6},
#   {genre_id: 1, movie_id: 7},
#   {genre_id: 3, movie_id: 8}
# ])
# User.create!([
#   {name: "Hugh Jass", email: "hughjass@gmail.com", password_digest: "$2a$12$N3GjBimJvmF.2knPac/g.elQvjp.U5lSybcDeNB4iXR6/QEn1sSkm", admin: false},
#   {name: "Will Petty", email: "pettwil1131@gmail.com", password_digest: "$2a$12$O6wf31zDAz0wvah1/wPn7uoJ0Ct.du51Pg9JHj3dGcGsmy1oNkSRC", admin: true}
# ])
