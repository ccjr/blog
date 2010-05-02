user = User.create :email => 'mary@example.com', 
                   :password => 'guessit',
                   :password_confirmation => 'guessit'
Category.create [{:name => 'Programming'},
                 {:name => 'Event'},
                 {:name => 'Travel'},
                 {:name => 'Music'},
                 {:name => 'TV'}]
user.articles.create :title => 'Advanced Active Record',
             :body => "Models need to relate to each other. In the real world, ..",
             :published_at => Date.today
user.articles.create :title => 'One-to-many associations',
             :body => "One-to-many associations describe a pattern ..",
             :published_at => Date.today
user.articles.create :title => 'Associations',
             :body => "Active Record makes working with associations easy..",
             :published_at => Date.today
