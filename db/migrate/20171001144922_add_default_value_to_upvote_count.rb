class AddDefaultValueToUpvoteCount < ActiveRecord::Migration[5.0]
  def change
    change_column :girls, :upvote_count, :integer, default: 0
    change_column :girls, :downvote_count, :integer, default: 0
  end
end
