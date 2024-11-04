class CreateAnnouncements < ActiveRecord::Migration[7.2]
  def change
    create_table :announcements do |t|
      t.string :title
      t.text :content

      t.references :user, index: true
      t.references :community, index: true

      t.timestamps
    end
  end
end
