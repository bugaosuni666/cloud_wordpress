class CreateWordpressMonitors < ActiveRecord::Migration[6.0]
  def change
    create_table :wordpress_monitors do |t|
      t.belongs_to :blog 
      t.string     :state 
      t.string     :action
      t.datetime   :queued_at
      t.datetime   :completed_at 
      t.timestamps
    end
  end
end
