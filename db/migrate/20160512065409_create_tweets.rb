class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.attachment :author_image
      t.string :author_name
      t.string :author_username
      t.text :tweet
      t.attachment :tweet_image
      t.datetime :tweet_time
      t.timestamps null: false
    end
  end
end
