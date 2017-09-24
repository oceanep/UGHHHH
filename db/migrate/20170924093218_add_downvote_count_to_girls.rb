class AddDownvoteCountToGirls < ActiveRecord::Migration[5.0]
  def change
    add_column :girls, :downvote_count, :integer
  end
end
