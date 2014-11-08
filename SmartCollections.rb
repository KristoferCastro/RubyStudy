# In Ruby, there are many was to initialize collections
# Shortcuts, if you will.

poem_words = ['twinkle','little','star', 'how', 'I', 'wonder']

# Just typing that out just now, it felt repetitive and overexcessive
# having to type in the quotes.  Ruby thought so too so, it elimiates
# the need of quotes for NON-SPACED words.

poem_words = %w{twinkle litte star how I wonder}

# There is also a shortcut for hashs

freq = { "I" => 1, "don't" => 1, "like" => 1, "spam" => 963}

book_info = { :first_name => 'Russ', :last_name => 'Olsen' }

# we can get rid of the hash rocket

book_info = { first_name: 'Russ', last_name: 'Olsen' }


