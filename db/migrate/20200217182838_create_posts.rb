# frozen_string_literal: true

class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string    :title, null: false
      t.text      :body
      t.string    :author, null: false
      t.datetime  :date_of_post
    end
  end
end
