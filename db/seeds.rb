Path.create!([
  {subject: "Ruby"}
])
Deck.create!([
  {stage: 1.1, path_id: 1, user_id: nil, title: "Accessing Array Elements"}
])

Fact.create!([
  {term: "Add 'red' to the beginning of an array called 'colors'", definition: "colors.unshift('blue')", deck_id: 1}
])
Fact.create!([
  {term: "Insert 'blue' to be the third element of the 'colors' array", definition: "colors.insert(2, 'blue')", deck_id: 1}
])
Fact.create!([
  {term: "Find the length of an array called 'colors'", definition: "colors.length", deck_id: 1}
])
Fact.create!([
  {term: "Add 'green' to the end of the 'colors' array", definition: "colors.push('blue')", deck_id: 1}
])
Fact.create!([
  {term: "Remove the last element from the 'colors' array and return it", definition: "colors.pop", deck_id: 1}
])
Fact.create!([
  {term: "Remove the first element from the 'colors' array and return it", definition: "colors.shift", deck_id: 1}
])

Deck.create!([
  {stage: 2.1, path_id: 1, user_id: nil, title: "Modifying Strings"}
])

Fact.create!([
  {term: "Return the word 'BLUE' in lower case", definition: "'BLUE'.downcase", deck_id: 2}
])

Fact.create!([
  {term: "Return boolean whether 'string' is empty", definition: "'string'.empty?", deck_id: 2}
])

Fact.create!([
  {term: "Return boolean whether 'string' ends with '?'", definition: "'string'.end_with?('?')", deck_id: 2}
])

Fact.create!([
  {term: "Return boolean whether 'string' contains 'ing'", definition: "'string'.include?('ing')", deck_id: 2}
])

Fact.create!([
  {term: "Return the index of the letter 'i' in 'string'", definition: "'string'.index('i')", deck_id: 2}
])

Fact.create!([
  {term: "Prepend the word 'blue' to the letter 's'", definition: "'s'.prepend('blue')", deck_id: 2}
])

Fact.create!([
  {term: "Return the word 'blue' in reverse order", definition: "'blue'.reverse", deck_id: 2}
])

Fact.create!([
  {term: "Return boolean wheter 'string' starts with 's'", definition: "'string'.start_with?('s')", deck_id: 2}
])

Fact.create!([
  {term: "Turn 'string' into 'STRING' without using 'to_uppercase'", definition: "'string'.swapcase", deck_id: 2}
])

Deck.create!([
  {stage: 2.2, path_id: 1, user_id: nil, title: "Numbers"}
])

Fact.create!([
  {term: "Return boolean whether N is an even number", definition: "N.even?", deck_id: 3}
])

Fact.create!([
  {term: "Return the absolute value of N", definition: "N.abs", deck_id: 3}
])

Fact.create!([
  {term: "Return boolean whether N is an odd number", definition: "N.odd?", deck_id: 3}
])

Fact.create!([
  {term: "Return number equal to N+1", definition: "N.next", deck_id: 3}
])

Fact.create!([
  {term: "Return number equal to N-1", definition: "N.pred", deck_id: 3}
])

Fact.create!([
  {term: "Return N rounded up to the next highest whole number", definition: "N.ceil", deck_id: 3}
])

Fact.create!([
  {term: "Return N rounded down to the closest whole number", definition: "N.floor", deck_id: 3}
])


Deck.create!([
  {stage: 2.3, path_id: 1, user_id: nil, title: "Hashes"}
])

Fact.create!([
  {term: "Create an empty hash called fruit", definition: "fruit = {}", deck_id: 4}
])

Fact.create!([
  {term: "Delete value 'a' from Hash, and return the value of 'a'", definition: "Hash.delete('a')", deck_id: 4}
])

Fact.create!([
  {term: "Return a new array that is a one-dimensional flattening of Hash", definition: "Hash.flatten", deck_id: 4}
])

Fact.create!([
  {term: "Return a new array that is a one-dimensional flattening of Hash.", definition: "Hash.flatten", deck_id: 4}
])

Fact.create!([
  {term: "Return boolean whether Hash contains a key 'a'.", definition: "Hash.has_key?('a')", deck_id: 4}
])

Fact.create!([
  {term: "Return boolean whether Hash contains a value 'a'.", definition: "Hash.has_value?('a')", deck_id: 4}
])

Fact.create!([
  {term: "Return new Hash with the keys as values, as values as keys.", definition: "Hash.invert", deck_id: 4}
])

Fact.create!([
  {term: "Find and return the key of 'a', within Hash.", definition: "Hash.key('a')", deck_id: 4}
])

Fact.create!([
  {term: "Return an array of the keys from Hash.", definition: "Hash.keys", deck_id: 4}
])

Fact.create!([
  {term: "Return the last key-value pair from Hash as an array.", definition: "Hash.shift", deck_id: 4}
])

Fact.create!([
  {term: "Return the number of key-value pairs in Hash.", definition: "Hash.size", deck_id: 4}
])

Fact.create!([
  {term: "Return an array of the values from Hash.", definition: "Hash.values", deck_id: 4}
])

Deck.create!([
  {stage: 3.1, path_id: 1, user_id: nil, title: "Enumerable"}
])

Fact.create!([
  {term: "Return the minimum value from Array.", definition: "Array.min", deck_id: 5}
])

Fact.create!([
  {term: "Return the maximum value from Array.", definition: "Array.max", deck_id: 5}
])

Fact.create!([
  {term: "Return a two-element array with minimum and maximum value from Array.", definition: "Array.minmax", deck_id: 5}
])

Fact.create!([
  {term: "Return sorted Array", definition: "Array.sort", deck_id: 5}
])

Fact.create!([
  {term: "Return the first 5 elemnents from Array", definition: "Array.take(5)", deck_id: 5}
])

Fact.create!([
  {term: "Return a two-dimensional array of the elemnents in Array1 and Array2, grouped by index.", definition: "Array1.zip(Array2)", deck_id: 5}
])

Fact.create!([
  {term: "Return an array of the values in Range.", definition: "Range.to_a", deck_id: 5}
])

Deck.create!([
  {stage: 3.2, path_id: 1, user_id: nil, title: "Git"}
])

Fact.create!([
  {term: "Initialize a new git repository.", definition: "git init", deck_id: 6}
])

Fact.create!([
  {term: "Add all tracked and untracked files to the git staging area.", definition: "git add -A", deck_id: 6}
])

Fact.create!([
  {term: "Create and checkout a new git branch named 'branch'", definition: "git checkout -b branch", deck_id: 6}
])

Fact.create!([
  {term: "Checkout a git branch called 'master'", definition: "git checkout master", deck_id: 6}
])

Fact.create!([
  {term: "While in a git branch called master, merge in a branch called 'development'", definition: "git merge development", deck_id: 6}
])

Fact.create!([
  {term: "Reset to previous git commit and erase any uncommitted files.", definition: "git reset --hard", deck_id: 6}
])

Fact.create!([
  {term: "Add a git remote called 'origin'", definition: "git remote add origin", deck_id: 6}
])

Fact.create!([
  {term: "List remote git branches", definition: "git branch -r", deck_id: 6}
])

Fact.create!([
  {term: "List local git branches", definition: "git branch", deck_id: 6}
])

Fact.create!([
  {term: "Commit staged files with the commit message 'foo'", definition: "git commit -m 'foo'", deck_id: 6}
])

Deck.create!([
  {stage: 3.3, path_id: 1, user_id: nil, title: "Rails Commands"}
])

Fact.create!([
  {term: "Generate a movies controller", definition: "rails generate controller Movies", deck_id: 7}
])

Fact.create!([
  {term: "Generate a movies model with a title as a string", definition: "rails generate model Movie title", deck_id: 7}
])

Fact.create!([
  {term: "Using bundler, create, migrate, and seed a postgreSQL database.", definition: "bundle exec rake db:create db:migrate db:seed", deck_id: 7}
])

Fact.create!([
  {term: "Start the rails console.", definition: "rails console", deck_id: 7}
])

Fact.create!([
  {term: "Start the rails server in the production environment.", definition: "rails server -e production", deck_id: 7}
])

Fact.create!([
  {term: "Which command will exit the rails console?", definition: "exit", deck_id: 7}
])

Fact.create!([
  {term: "Destroy a movies model with a title as a string", definition: "rails destroy model Movie", deck_id: 7}
])

Fact.create!([
  {term: "Generate a migration that will add a name to the User model.", definition: "rails generate migration AddNameToUserModel name", deck_id: 7}
])

Fact.create!([
  {term: "Generate a migration that will remove a name from the User model.", definition: "rails generate migration RemoveNameFromUserModel name", deck_id: 7}
])

# # another deck

# Path.create!([
#   {subject: "Javascript"}
# ])
# Deck.create!([
#   {stage: 1.2, path_id: 2, user_id: nil, title: "Strings"}
# ])
# Fact.create!([
#   {term: "What is the method to capitalize the word 'kitten'?", definition: "'kitten' . capitalize", deck_id: 2}
# ])

