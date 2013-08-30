class RenamePictureToPictureFilename < ActiveRecord::Migration
  def up
        rename_column :articles, :picture, :picture_filename
  end

  def down
            rename_column :articles, :picture_filename, :picture
  end
end
