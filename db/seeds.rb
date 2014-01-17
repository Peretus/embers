Path.create!([
  {subject: "Ruby"}
])
Deck.create!([
  {stage: 1.1, path_id: 1, user_id: nil, title: "Accessing Array Elements"}
])

Fact.create!([
  {term: "Add 'red' to the beginning of an array called 'colors'", definition: "colors.unshift('red')", deck_id: 1}
])
Fact.create!([
  {term: "Insert 'blue' to be the third element of the 'colors' array", definition: "colors.insert(2, 'blue')", deck_id: 1}
])
Fact.create!([
  {term: "Find the length of an array called 'colors'", definition: "colors.length", deck_id: 1}
])
Fact.create!([
  {term: "What is the index of the last element in an array?", definition: "-1", deck_id: 1}
])
Fact.create!([
  {term: "Add 'green' to the end of the 'colors' array", definition: "colors.push('green')", deck_id: 1}
])
Fact.create!([
  {term: "Remove the last element from the 'colors' array and return it", definition: "colors.pop", deck_id: 1}
])
Fact.create!([
  {term: "Remove the first element from the 'colors' array and return it", definition: "colors.shift", deck_id: 1}
])




# another deck

Path.create!([
  {subject: "Javascript"}
])
Deck.create!([
  {stage: 1.2, path_id: 1, user_id: nil, title: "Strings"}
])
Fact.create!([
  {term: "What is the method to capitalize the word 'kitten'?", definition: "'kitten' . capitalize", deck_id: 2}
])

