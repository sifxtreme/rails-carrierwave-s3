class Upload < ActiveRecord::Base
   mount_uploader :name, ImageUploader
end