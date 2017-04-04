class RenameLinkToLength < ActiveRecord::Migration
  def change
  	rename_column :movies, :movie_link, :movie_length
  end
end
