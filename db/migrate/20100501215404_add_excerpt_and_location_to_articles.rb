class AddExcerptAndLocationToArticles < ActiveRecord::Migration
  def self.up
    add_column :articles, :excerpt, :string
    add_column :articles, :location, :string
  end

  def self.down
    remove_column :articles, :location
    remove_column :articles, :excerpt
  end
end
