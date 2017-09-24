class AddUpvoteCountToGirls < ActiveRecord::Migration[5.0]
  def change
    add_column :girls, :upvote_count, :integer
  end
end
