class AddPhotoToProducts < ActiveRecord::Migration[5.0]
  def change
    change_table :products do |t|
      t.attachment :photo
    end

    remove_column :products, :image
  end
end
