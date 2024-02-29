# frozen_string_literal: true

class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table   :properties do |t|
      t.string     :name
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
