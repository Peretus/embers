Deck.create!([
  {stage: 1.2, path_id: 1, user_id: nil, title: "Enumberable"}
])
Fact.create!([
  {term: "Find the length of an an array called 'numbers'", definition: "numbers . length", deck_id: 1}
])
Path.create!([
  {subject: "Ruby"}
])


Deck.create!([
  {stage: 1.2, path_id: 1, user_id: nil, title: "Strings"}
])
Fact.create!([
  {term: "What is the method to capitalize the word 'kitten'?", definition: "'kitten' . capitalize", deck_id: 2}
])
Path.create!([
  {subject: "Javascript"}
])

