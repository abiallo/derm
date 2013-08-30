class AddPictureToArticles < ActiveRecord::Migration
  def change
        add_column :articles, :picture_file_name, :string
        add_column :articles, :picture_content_type, :string
        add_column :articles, :picture_file_size, :integer
        add_column :articles, :picture_updated_at, :datetime
                rename_column :articles, :picture_filename, :spare
  end
end
