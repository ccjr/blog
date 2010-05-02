class User < ActiveRecord::Base
  has_one :profile
  has_many :articles, :order => 'published_at DESC, title ASC',
                      :dependent => :nullify
end
