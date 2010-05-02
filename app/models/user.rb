class User < ActiveRecord::Base
  validates :email, :uniqueness => true, 
                    :length => { :within => 5..50 }, 
                    :format => { :with => /^[^@][\w.-]+@[\w.-]+[.][a-z]{2,4}$/i }
  validates :password, :confirmation => true
  
  has_one :profile
  has_many :articles, :order => 'published_at DESC, title ASC',
                      :dependent => :nullify
  has_many :replies, :through => :articles, :source => :comments
end
