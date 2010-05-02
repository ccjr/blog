user = User.create :email => 'mary@example.com', 
                   :password => 'guessit',
                   :password_confirmation => 'guessit'
Category.create [{:name => 'Programming'},
                 {:name => 'Event'},
                 {:name => 'Travel'},
                 {:name => 'Music'},
                 {:name => 'TV'}]
