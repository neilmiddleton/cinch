# This migration comes from cms (originally 20121108151720)
class CreateCmsPages < ActiveRecord::Migration
  def change
    create_table :cms_pages do |t|
      t.string :name
      t.string :title
      t.string :template
      t.string :path

      t.timestamps
    end
  end
end
