class CreatePokerDates < ActiveRecord::Migration
  def change
    create_table :poker_dates do |t|
      t.string :issue
      t.index :issue
      t.string :poker1
      t.string :poker2
      t.string :poker3
      t.string :state
      t.datetime :poker_create_time

      t.timestamps
    end
  end
end
